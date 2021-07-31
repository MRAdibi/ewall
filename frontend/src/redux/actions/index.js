export const add = (dataObject) => ({
  type: "ADD",
  insert: dataObject,
});

export const set = (data) => ({
  type: "SET",
  set: data,
});
