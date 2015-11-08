const initialState = [{
  id: 0,
  msg: 'TEST'
}]

export default function notes (state = initialState, action) {
  switch (action.type) {
    case 'ADD':
      return state.push(action.note)
    case 'REMOVE':
      return state.filter(el => el.id !== action.note.id)
    default:
      return state
  }
}
