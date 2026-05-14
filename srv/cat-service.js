const cds = require('@sap/cds')

module.exports = class travelService extends cds.ApplicationService {
  init() {

    const { Employees, TravelRequests, Approvals, Expenses, Reimbursements } = cds.entities('travelService');

this.on('approvelTravel', async (req) => {

    const {
        approvalStatus,
        comments,
        status
    } = req.data;

    const travelRequestID = req.params[0].ID;

    console.log("travelRequestID", travelRequestID);

    const result = await UPDATE(Approvals)
        .set({
            approvalStatus,
            comments,
            status
        })
        .where({
            travelRequest_ID: travelRequestID
        });
    req.notify("Travel is Updated successfully");

    console.log("Updated Rows:", result);

 
});

    // this.on('rejectTravel',async (req) => {
    //   console.log('On rejectTravel', req.data)
    // })
    // this.on('processReimburasement',async (req) => {
    //   console.log('On processReimburasement', req.data)
    // })    







    return super.init()
  }
}






























// this.before (['CREATE', 'UPDATE'], Employees, async (req) => {
//   console.log('Before CREATE/UPDATE Employees', req.data)
// })
// this.after ('READ', Employees, async (employees, req) => {
//   console.log('After READ Employees', employees)
// })
// this.before (['CREATE', 'UPDATE'], TravelRequests, async (req) => {
//   console.log('Before CREATE/UPDATE TravelRequests', req.data)
// })
// this.after ('READ', TravelRequests, async (travelRequests, req) => {
//   console.log('After READ TravelRequests', travelRequests)
// })
// this.before (['CREATE', 'UPDATE'], Approvals, async (req) => {
//   console.log('Before CREATE/UPDATE Approvals', req.data)
// })
// this.after ('READ', Approvals, async (approvals, req) => {
//   console.log('After READ Approvals', approvals)
// })
// this.before (['CREATE', 'UPDATE'], Expenses, async (req) => {
//   console.log('Before CREATE/UPDATE Expenses', req.data)
// })
// this.after ('READ', Expenses, async (expenses, req) => {
//   console.log('After READ Expenses', expenses)
// })
// this.before (['CREATE', 'UPDATE'], Reimbursements, async (req) => {
//   console.log('Before CREATE/UPDATE Reimbursements', req.data)
// })
// this.after ('READ', Reimbursements, async (reimbursements, req) => {
//   console.log('After READ Reimbursements', reimbursements)
// })

// this.on ('approvelTravel', async (req) => {
//   console.log('On approvelTravel', req.data)
// })
// this.on ('rejectTravel', async (req) => {
//   console.log('On rejectTravel', req.data)
// })
// this.on ('processReimburasement', async (req) => {
//   console.log('On processReimburasement', req.data)
// })
