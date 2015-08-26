class Workorder < ActiveRecord::Base

    before_validation :generate_UUID

    extend FriendlyId
    friendly_id :uuid, use: [:slugged, :finders]

    def should_generate_new_friendly_id?
        new_record? || slug.blank?
    end

    private

    def generate_UUID
        #generate_unique_field! :propertyid, 6 if propertyid.blank?
        #raise RuntimeError, "testing exception handling in production"
        self.uuid = RandomToken.genf(5,c: :d) if self.uuid.blank? || self.new_record?
    end
end
