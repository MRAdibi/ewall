import { useSelector } from "react-redux";

const Test = () => {
  // loading posts state
  const AllPosts = useSelector((state) => state.posts);
  return <div>{console.log("from test", AllPosts)}</div>;
};

export default Test;
