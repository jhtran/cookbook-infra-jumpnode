require_relative "spec_helper"

describe "openstack-base::default" do
  before do
    openstack_network_stubs
    @chef_run = ::ChefSpec::ChefRunner.new ::SPEC_OPTS
    @chef_run.converge "openstack-base::default"
  end

  it "includes openstack common recipe" do
    expect(@chef_run).to include_recipe "openstack-common"
  end

  it "overrides openstack auth strategy" do
    expect(@chef_run.node["openstack"]["auth"]["strategy"]).to eq "token"
  end
end
