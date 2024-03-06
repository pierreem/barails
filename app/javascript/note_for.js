export function addNoteToNotesList(note_src, note_id){
  let frame = document.createElement("turbo-frame");
  frame.setAttribute('loading', 'lazy');
  frame.setAttribute('id', note_id);
  frame.setAttribute('src', note_src);
  frame.setAttribute('innerHTML', 'Loading...');
  document.querySelector("#notes").append(frame);
};
