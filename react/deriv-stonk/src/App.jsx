import "./App.css";

const Dashboard = () => {
  return (
    <div className="dashboard-container">
      <div className="header">
        <h1>Tesla</h1>
        <p className="volume">10,000</p>
        <p className="subtext">Long / Short Volume Analysis</p>
      </div>

      <div className="market-insights">
        <h2>Market Insights</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua.
        </p>
      </div>

      <div className="risk-container">
        <div className="risk-factors">
          <h2>Risk Factors</h2>
          <table>
            <thead>
              <tr>
                <th>Title</th>
                <th>Weightage</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Position Limit</td>
                <td>BBC News</td>
              </tr>
              <tr>
                <td>Position Limit</td>
                <td>BBC News</td>
              </tr>
            </tbody>
          </table>
          <div className="pagination">Rows per page: 5 1 - 4 of 4</div>
        </div>

        <div className="risk-level">
          <h2>Risk Level</h2>
          <div className="risk-circle">
            {/* Placeholder for circular chart */}
          </div>
        </div>

        <div className="volatility-index">
          <h2>Volatility Index</h2>
          <p>- 0.16 %</p>
        </div>
      </div>
    </div>
  );
};

export default Dashboard;
