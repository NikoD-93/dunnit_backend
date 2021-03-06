class NotesController < ApplicationController

def create 
    note = Note.create(note_params)
    render json: note 
end 


def update
    note = Note.find(params[:id])
    note.update(note_params)
    render json: note
end 

def destroy
end 

def index
    notes = Note.all
    render json: notes
end 

def show 
    note = Note.find(params[:id])
    render json: note
end 

private

def note_params
    params.require(:note).permit(:title, :content, :user_id, :created_at)
end



end 