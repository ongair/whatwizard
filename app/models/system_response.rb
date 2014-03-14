class SystemResponse < ActiveRecord::Base
  
  belongs_to :step
  has_attached_file :image, :styles => { :medium => "480x480>", :thumb => "48x48>" }

  def response_type_enum
    [ ['Valid','valid'], ['Invalid', 'invalid'], ['More Than', 'more_than'], ['Less Than', 'less_than'], ['Equal', 'equal']]
  end
end