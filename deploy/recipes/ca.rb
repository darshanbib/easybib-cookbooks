instance_roles = node[:scalarium][:instance][:roles]
cluster_name   = node[:scalarium][:cluster][:name]

node[:deploy].each do |application, deploy|

  Chef::Log.info("deploy::easybib - app: #{application}, role: #{instance_roles}")

  next unless cluster_name == 'Citation Analytics'

  case application
  when 'citation_anlytics'
    next unless instance_roles.include?('elasticsearch')
  else
    Chef::Log.info("deploy::easybib - #{application} (in #{cluster_name}) skipped")
    next
  end

  Chef::Log.info("deploy::ca - Deployment started.")
  Chef::Log.info("deploy::ca - Deploying as user: #{deploy[:user]} and #{deploy[:group]}")

  scalarium_deploy_dir do
    user  deploy[:user]
    group deploy[:group]
    path  deploy[:deploy_to]
  end

  scalarium_deploy do
    deploy_data deploy
    app application
  end

end
