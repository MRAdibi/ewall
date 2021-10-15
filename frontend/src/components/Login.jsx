import axios from "axios";
import { useState, useEffect, useRef } from "react";
import { Link } from "react-router-dom";

const LoginPage = () => {
  const userName = useRef(0);
  const Password = useRef(0);
  const userEmail = useRef(0);
  //const [Info, setInfo] = useState({ loggedinusers: 0, information: "" });
  const [pending, setPending] = useState(false);

  //initial useEffect
  useEffect(() => {
    //TODO : getting logged in users and some info....
  });

  function handleSubmit(e) {
    e.preventDefault();
    const username = userName.current.value;
    const email = userEmail.current.value;
    const password = Password.current.value;
    //caching the info for later use
    sessionStorage.setItem("username", username);
    sessionStorage.setItem("email", email);
    setPending({ pending: true });
    axios
      .post("http://127.0.0.1:8000/api/rest-auth/login/", {
        username: username,
        email: email,
        password: password,
      })
      .then((response) => {
        // saving access token in cookies for now
        document.cookie = `username=${response.data.access_token};`;
        console.log(response.data);
        setPending({ pending: false, message: "login was successful" });
      })
      .catch((err) => {
        let res = err.response.data;
        setPending({ pending: false, message: res.non_field_errors });
      });
  }
  return (
    // TODO : updating UI layout
    <>
      <form action="/login" onSubmit={handleSubmit}>
        email
        <input
          ref={userEmail}
          type="email"
          name="email"
          required
          defaultValue={sessionStorage.getItem("email")}
        />
        <br />
        username
        <input
          ref={userName}
          type="text"
          name="username"
          required
          defaultValue={sessionStorage.getItem("username")}
        />
        <br />
        password
        <input ref={Password} type="password" name="password" required />
        <button type="submit" disabled={pending.pending}>
          ثبت
        </button>
      </form>
      {pending.pending ? (
        <p>wait...</p>
      ) : (
        <p style={{ color: "blue" }}>{pending.message}</p>
      )}
      <Link to="/signup">اکانت ندارید؟</Link>
    </>
  );
};
export default LoginPage;
