class MeasurementTypeUserSummary < ApplicationRecord
	belongs_to :user
	belongs_to :measurement_type

	def update_statistics
		measurements = Measurement
		.joins(:measurement_type)
		.joins(:user)
		.where(user: self.user)
		.where(measurement_type: self.measurement_type)
		.order(end_time: :desc)

		self.latest_value = measurements.first.amount

		last_7_days = measurements.where("start_time > ?", DateTime.now - 7.days)
		last_7_days_has_values = last_7_days.count > 0
		self.average_7_days = last_7_days_has_values ? last_7_days.average(:amount) : self.latest_value
		self.change_7_days = last_7_days_has_values ? last_7_days.last.amount - last_7_days.first.amount : 0.0
		self.percent_change_7_days = last_7_days_has_values ? (last_7_days.last.amount/last_7_days.first.amount-1)*100 : 0.0

		last_30_days = measurements.where("start_time > ?", DateTime.now - 30.days)
		last_30_days_has_values = last_30_days.count > 0
		self.average_30_days = last_30_days_has_values ? last_30_days.average(:amount) : self.latest_value
		self.change_30_days = last_30_days_has_values ? last_30_days.last.amount - last_30_days.first.amount : 0.0
		self.percent_change_30_days = last_30_days_has_values ? (last_30_days.last.amount/last_30_days.first.amount-1)*100 : 0.0

		last_90_days = measurements.where("start_time > ?", DateTime.now - 90.days)
		last_90_days_has_values = last_90_days.count > 0
		self.average_90_days = last_90_days_has_values ? last_90_days.average(:amount) : self.latest_value
		self.change_90_days = last_90_days_has_values ? last_90_days.last.amount - last_90_days.first.amount : 0.0
		self.percent_change_90_days = last_90_days_has_values ? (last_90_days.last.amount/last_90_days.first.amount-1)*100 : 0.0
	end
end