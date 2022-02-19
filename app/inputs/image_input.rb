class ImageInput < SimpleForm::Inputs::Base
  def input(wrapper_options = nil)
    @wrapper_options = wrapper_options

    [image_name_input, file_input].join.html_safe
  end

  private

  attr_reader :wrapper_options

  def image_name_input
    @builder.text_field("#{attribute_name}_name", merged_input_options)
  end

  def file_input
    @builder.file_field(attribute_name, merged_input_options)
  end

  def merged_input_options
    @merged_input_options ||= merge_wrapper_options(input_html_options, wrapper_options)
  end
end
