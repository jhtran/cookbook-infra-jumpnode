require_relative "spec_helper"

describe "infra-jumpnode::default" do
  before do
    @chef_run = ::ChefSpec::ChefRunner.new ::SPEC_OPTS
    @chef_run.converge "infra-jumpnode::default"
  end

#  it "includes openstack common recipe" do
#    expect(@chef_run).to include_recipe "openstack-common"
#  end
end
