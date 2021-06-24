class Company < ApplicationRecord
    def self.import(file)
        ::CSV.foreach(file.path, headers: true, header_converters: :symbol, :col_sep => "\t", :encoding => 'windows-1251:utf-8') do |row|
            Company.create! row.to_hash
          end
    end
end
