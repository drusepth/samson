class TokenService < Service
  # [[user.name]] ~> "Andrew Brown"
  def self.replacement_for token
    #puts "Finding replacement for #{token}"

    context, attribute = TemplateReplacerService.fetch_context_and_attribute token
    #puts "Found context, attribute: #{context}, #{attribute}"

    context_object = build_context_object context
    context_object[attribute.to_sym]
  #rescue
  #  nil
  end

  private

  # user ~> User (object)
  def self.build_context_object context, initialization_params = nil
    #puts "Creating context object for #{context.capitalize}"
    Module.const_get(context.capitalize).new initialization_params
  #rescue
  #  nil
  end

end
