import axios from "axios";
import { useState, useEffect } from "react";
import { Container, Col, Row, Card, Button } from "react-bootstrap";
import { /* useSelector,*/ useDispatch } from "react-redux";
import { set } from "./../redux/actions/index";

const AdsPage = () => {
  // this state is for containing ad objects
  const [content, setContent] = useState({ data: [] });
  // loading posts state
  // const Posts = useSelector((state) => state.posts); unused for now!
  // defining action dispatcher
  const dispatch = useDispatch();
  useEffect(() => {
    // getting data from backend
    axios
      .get("http://localhost:8000/api/", {
        headers: {
          "Content-Type": "application/json",
        },
      })
      .then((res) => {
        // saving data to global redux state
        dispatch(set({ data: res.data }));
        // saving data to in component state
        setContent({ data: res.data });
      })
      .catch((err) => console.log(err));
  }, [dispatch]);
  return (
    <Container className="rtl">
      <Row className=" mt-5 justify-content-center">
        {/* -------------card------------- 
           we will map into the internal content component 
            and return it into appropirate html form
        */}
        {content.data.map((item) => (
          <Col className=" mx-2 mb-3" key={item.id}>
            <Card border="warning" style={{ width: "18rem" }}>
              <Card.Img
                variant="top"
                src="https://via.placeholder.com/286x180"
              />
              <Card.Body>
                <Card.Title>{item.title}</Card.Title>
                <Card.Text>{item.description}</Card.Text>
                <hr />
                <Card.Text>{item.detail}</Card.Text>
                <Button variant="success" className="rounded">
                  نمایش
                </Button>
              </Card.Body>
            </Card>
          </Col>
        ))}
        {/* -------------card------------- */}
      </Row>
    </Container>
  );
};

export default AdsPage;
