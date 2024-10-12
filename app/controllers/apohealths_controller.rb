class ApohealthsController < ApplicationController
  def index # GET /apohealths（查询所有数据）
    @apohealths = Apohealth.all # 调用查询所有数据
  end
end
