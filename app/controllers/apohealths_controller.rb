class ApohealthsController < ApplicationController
  def index # GET /apohealths（查询所有数据）
    @apohealths = Apohealth.all # 调用查询所有数据
  end

  def show # GET /apohealths/id（查询某个id的数据）
    @record = Apohealth.find(params[:id]) # 通过商品号查找商品
  end
end
