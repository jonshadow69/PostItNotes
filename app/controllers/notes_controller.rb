class NotesController < ApplicationController

    def index
        @notes = Note.all
    end

    def show
        @note = Note.find(params[:id])
    end

    def new
        @note = Note.new
    end

    def create
        @note = Note.new(note_params)
        if @note.save
            redirect_to notes_path, :notice => "Note created!!"
        else
            render 'new'
        end
    end

    def edit
        @note = Note.find(params[:id])
    end

    def update
        @note = Note.find(params[:id])
        if @note.update_attributes(note_params)
            redirect_to notes_path, :notice => "Note edited!!"
        else
            render 'edit'
        end
    end

    def delete
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to notes_path, :notice => "note deleted!!"
    end

    private def note_params
        params.require(:note).permit(:title, :content)
    end

end