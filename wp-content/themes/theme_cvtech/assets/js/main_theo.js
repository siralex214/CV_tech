window.onload = function () {
  document.getElementById("download").addEventListener("click", () => {
    const invoice = this.document.getElementById("invoice");
    console.log(invoice);
    console.log(window);
    var opt = {
      margin: -25,
      padding: -30,
      filename: "myfile.pdf",
      image: { type: "png", quality: 0.98 },
      html2canvas: { scale: 2 },

      jsPDF: { unit: "mm", format: "A4", orientation: "portrait" },
    };
    html2pdf().from(invoice).set(opt).save();
  });
};
