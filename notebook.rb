require_relative 'textnote'

class NoteBook
	def initialize
		@notes = []
	end
	
	def add_note(note)
		@notes << note
	end

	def search(tag)
		@notes.select { |n| n.tag == tag }
	end	 

end

notebook = NoteBook.new

textnote1 = TextNote.new(:important)
textnote2 = TextNote.new(:important)
textnote3 = TextNote.new
notebook.add_note textnote1
notebook.add_note textnote3
notebook.add_note textnote2

p notebook.search :important