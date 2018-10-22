module ApplicationHelper
  def link_to_finding_aid(options={})
    options[:value].map do |uri|
      link_to "View on #{URI(uri).host}", uri, target: "_blank"
    end.first
  end
end
