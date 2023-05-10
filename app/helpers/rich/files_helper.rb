module Rich
  module FilesHelper

    def thumb_for_file(file)
      if file.simplified_type == "image"
        if file.class.method_defined?(:rich_file)
          file.rich_file.url(:rich_thumb)
        else
          file.url(:rich_thumb)
        end
      else
        asset_path "rich/document-thumb.png"
      end
    end

  end
end
