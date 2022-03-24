document.getElementById("download").addEventListener("click", () => {
  const invoice = this.document.getElementById("invoice");
  var opt = {
    filename: "myfile.pdf",
    image: { type: "png", quality: 0.98 },
    html2canvas: { scale: 1, height: 1100 },

    jsPDF: { unit: "mm", format: "A4", orientation: "portrait" },
  };
  html2pdf().from(invoice).set(opt).save();
});
