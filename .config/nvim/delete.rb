require "pp"

##
##
## QWASAR.IO -- my_data_process
##
##
## @param {String[]} param_1
##
## @return {string}
##

def discard_indexes(headers, discard)
     d = []
     k = []
    headers.each_with_index do |header, i|
        d.append(i) if discard.include? header
        k.append(i) unless discard.include? header
    end
  {keep: k, dicard: d }
end

def handle_row(row, discard, output)

row.each_with_index do |column, i|
 next if discard.include? i
#output[]
end


end

def my_data_process(data)
    discard = ["FirstName", "LastName", "UserName", "Coffee Quantity"]
   
   headers = data[0].split(',') 
   indexes_discard = discard_indexes(headers, discard)
   data.shift
   headers = headers.select {|header| !discard.include? header} 
   output = headers.each_with_object({}) {|header, hash| hash[header] = {} }

   data.each_with_index do |row, i|

   row_array = row.split(',')
 end
end


#input = ["Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At", "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon", "Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon", "Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon", "Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning", "Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"]


#pp  my_data_process(input)
