import axios from "axios";
import { useState, useEffect } from "react";
import { Container, Col, Row, Card, Button } from "react-bootstrap";

const AdsPage = () => {
  const [content, setContent] = useState({ data: [] });
  useEffect(() => {
    axios
      .get("http://localhost:8000/api/", {
        headers: {
          "Content-Type": "application/json",
        },
      })
      .then((res) => {
        console.log(res.data);
        setContent({ data: res.data });
      })
      .catch((err) => console.log(err));
  }, []);
  return (
    <Container className="rtl">
      <Row className=" mt-5 justify-content-center">
        {content.data.map((item) => (
          <Col className=" mx-2 mb-3">
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
      </Row>
    </Container>
  );
};

export default AdsPage;
