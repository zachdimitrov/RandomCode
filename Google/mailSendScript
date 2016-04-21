function logStatusProjectInfo() {
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  SpreadsheetApp.setActiveSheet(ss.getSheets()[0]);
  var sheet = SpreadsheetApp.getActiveSheet();
  var dataRange = sheet.getRange(2, 1, 16, 4);
  var data = dataRange.getValues();
  for (var i = 0; i < data.length; i++) {
    Logger.log(data[i][0] + ' status: ' + data[i][1] + ' for project: ' + data[i][2] + ' complete: ' + data[i][3]+ '%');
  }

 var recipient = 'zachdimitrov@gmail.com';
 var d = new Date();
 var subject = 'Status of people and projects for - '+ d.getTime();
 var body = Logger.getLog();
 MailApp.sendEmail(recipient, subject, body);
  
}

function createTimeDrivenTriggers() {
  ScriptApp.newTrigger('logStatusProjectInfo')
      .timeBased()
      //.onWeekDay(ScriptApp.WeekDay.MONDAY)
      .everyDays(1)
      .atHour(12)
      .create();
}
