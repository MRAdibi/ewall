const postsReducer = (state = [], action) => {
  switch (action.type) {
    case "ADD":
      return state.push(action.insert);
    case "SET":
      return action.set;
    default:
      return state;
  }
};

export default postsReducer;
