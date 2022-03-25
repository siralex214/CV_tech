document.getElementById("download").addEventListener("click", () => {
  const invoice = this.document.getElementById("invoice");
  var opt = {
    filename: "myfile.pdf",
    image: { type: "png" },
    html2canvas: { scale: 4, y: 0, scrollY: 0 },

    jsPDF: { unit: "mm", format: "A4", orientation: "portrait" },
  };
  html2pdf().from(invoice).set(opt).save();

});
