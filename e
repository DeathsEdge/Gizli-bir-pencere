
from flask import Flask
import random


app = Flask(__name__)
facts_list = ["Elon Musk, sosyal ağların içeriği görüntülemek için mümkün olduğunca fazla zaman harcamamız için bizi platformun içinde tutmak üzere tasarlandığını iddia ediyor.",
            "2018 yılında yapılan bir araştırmaya göre 18-34 yaş arası kişilerin %50'den fazlası akıllı telefonlarına bağımlı olduğunu düşünüyor.",
            "Sosyal ağların olumlu ve olumsuz yanları var ve bu platformları kullanırken her ikisinin de farkında olmalıyız.",
            "Teknoloji bağımlılığı çalışması, modern bilimsel araştırmanın en alakalı alanlarından biridir."]

@app.route("/")
def index():
    return '<h1>Merhaba! bu sayfada teknoloji bağımlılığı ile ilgili bazı gerçekleri görebilirsiniz.</h1>'

@app.route("/rastgele_gercek")
def facts():
    return f'<p> {random.choice(facts_list)}</p>'
app.run(debug=True)
