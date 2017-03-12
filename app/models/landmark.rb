class Landmark < ActiveRecord::Base
  belongs_to :figure

  def self.check_or_create_landmarks(params)
    # binding.pry
    if params[:landmark][:name] != ""
      landmark = Landmark.find_or_create_by(name: params[:landmark][:name])
      landmarks_array = params[:figure][:landmark_ids]
      landmarks_array << landmark.id.to_s
      new_landmark_array = landmarks_array.collect do |landmark_id|
        Landmark.find_by(id: landmark_id)
      end
    else
      landmarks_array = params[:figure][:landmark_ids]
      new_landmark_array = landmarks_array.collect do |landmark_id|
        Landmark.find_by(id: landmark_id)
      end
    end
    new_landmark_array
  end
end
