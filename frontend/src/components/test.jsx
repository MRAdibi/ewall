import { useSelector } from "react-redux";

const Test = () => {
  const AllPosts = useSelector((state) => state.posts);
  return <div>{console.log("from test", AllPosts)}</div>;
};

export default Test;
