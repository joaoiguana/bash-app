import React from 'react';

const App = () => {
  const [events, setEvents] = React.useState([]);

  React.useEffect(() => {
    fetch('/api/v1/events')
      .then((res) => res.json())
      .then((data) => setEvents(data));
  }, []);

  return (
    <div>
      Events
      {events.map((event) => (
        <div key={event.id}>
          <h2>{event.name}</h2>
          <p>{event.description}</p>
          <p>{new Date(event.date).toLocaleString()}</p>
          <p>{event.location}</p>
        </div>
      ))}
    </div>
  );
};

export default App;
