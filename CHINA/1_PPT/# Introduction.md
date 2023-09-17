# Introduction
Buon pomeriggio a tutti
Le lezioni di oggi e della volta prossima verteranno su una breve panoramica di ciò in cui consiste un'analisi di rischio, in particolare di tipo sismico, per strutture civili.
Queste lezioni saranno tenute, come potete vedere, dal Professor Broccardo e da me, Chiara Nardin. 
Magari prima di addentrarci nell'argomento ci presentiamo brevemente.
Marco..
Ecco, sono Chiara una postdoc nell'ambito modellazione e simulazione. Mi occupo principalmente di modellazione agli FE di strutture prototipo di impianti industriali col fine di arrivare a formulare analisi e valutazione di rischio sismico per questo tipo di strutture. E, lavorando in ambito sismico, non può mancare nella ricerca lo sviluppo di un framework per lo sviluppo di modelli stocastici di scuotimento sismico o generatori di terremoti.
Qui potete trovare qualche altra informazione e come contattarmi, se per caso riuscissi a coinvolgervi o invogliarvi negli argomenti che vedremo oggi o se per caso avessi destato curiosità su ciò di cui mi occupo.

Brevemente, vediamo dove si inserisce nell'ambito dell'ingegneria un'analisi di rischio, quali sono le motivazioni che portano a condurre una simile analisi in che cosa si traduce concretamente questo tipo di valutazione. Una breve panoramica per aver chiaro in mente dove ci porta questo strumento e su quali aspetti chiave concentrarsi. Ripeto, in queste ore vedremo una panoramica senza la pretesa di entrare in dettagli eccessivamente tecnici: qualche nota sarà sicuramente necessaria ma cercheremo di dare un quadro di massima.

Innanzitutto definiamo che cos'è il rischio sismico di cui andremo a trattare ed occuparci. Qui di seguito vediamo la definizione che troviamo nel Parducci, il libro di riferimento del professor Bursi se non sbaglio, magari l'avrete già vista o sentita a lezione. Viene definita come quella probabilità di realizzarsi di un determinato evento tenendo in considerazione anche le relative conseguenze che ne scaturiscono.
Similarmente la definizione che troviamo anche su Wikipedia rimanda ad un concetto che relaziona la potenzialità di accadimento di un evento in un determinato periodo di tempo con le perdite economiche, sociali ed ambientali ad esso collegate.

è bene intendersi subito perciò: rischio sismico è ben diverso da pericolosità sismica. La pericolosità sismica infatti, secondo il Parducci, corrisponde alla frequenza dei terremoti che si prevede possano capitare in un determinato territorio in un determinato periodo di tempo. O, come meglio troviamo definita in un articolo caposaldo per questo tipo di valutazioni, è quella probabilità di accadimento di un terremoto la cui misura di intensità, o per adesso chiamiamola semplicemente caratteristica, vedremo meglio poi di che si tratta, superi una determinata soglia/valore all'interno di una finestra temporale e spaziale prestabilita.


Ecco, qui possiamo vedere in cosa si traduce o in cosa consiste una mappa di pericolosità sismica per una città con precise coordinate spaziali. La scala dei colori con cui è plottata è indicativa dell'intensità della intensity measure di cui vogliamo plottare l'hazard.

Stessa località, stesse coordinate quindi, ma la mappa di rischio.
L'abbiamo visto tramite definizione e ora tramite immagini: rischio e pericolosità sono due concetti diversi.

Eppure sono legati fra loro, si parlano. La pericolosità infatti è uno degli ingredienti di cui si compone il rischio sismico: assieme a fragilità (o vulnerabilità se non ricordo male come viene definita dal Parducci) e all'idea di perdite, o forse come meglio rende in italiano Esposizione il parducci, riferendosi ad un concetto che copre non solamente gli aspetti monetari di perdite economiche legate al danneggiamento di edifici o interruzione della catena produttiva, ma anche agli aspetti non immediatamente monetizzabili come le perdite di vite umane, danno a beni culturali o di interesse storico e via dicendo.

In particolare, noi entreremo nel dettaglio di questi primi due punti, ossia:

1. Quindi pericolosità o hazard che si traduce in mappe come quella vista poco fa e in grafici, come quello in figura, in cui vengono riportate le probabilità di superamento di soglie di intensità sismica, come per esempio la PGA qui riportata, con i valori medi e i quantili di interesse.

2. fragility o vulnerabilità: Il concetto dipende da vari fattori collegati alla
definizione ed alla valutazione del danno. In termini generali, si
può dire che la vulnerabilità è espressa da una valutazione della perdita di
funzionalità che una determinata opera (un edificio o qualsiasi altro manufatto
od oggetto) potrebbe subire se dovesse essere coinvolta da un evento perico-
loso.

Questi passaggi, questo tipo di valutazioni esulano da quella che è magari l'ingegneria classica o la prima a cui siamo portati a pensare, basata sui fattori di sicurezza da applicare a carichi e resistenze per la verifica dei singoli elementi. Siamo in un'ottima di Performance based earthquake engineering. Fra le tante formulazioni esistenti, che basano appunto la valutazione di un sistema in termini olistici di performance su variabili come le perdite di vite umane, economiche o altre presentiamo e riportiamo qui quella proposta dal PEER, centro di ricerca di Berkeley

Vediamo qui riportata una delle prime visioni di quello che il quadro tracciato dal PBEE: ovvero un dominio in cui collocare e definire ciò che accetto o meno dalle strutture, basandosi su performance (un'analogia coi nostri stati limite delle NTC) da rispettare in funzione di determinati livelli di pericolosità sismica (i nostri hazard, legati ai periodi di ritorno nelle NTC). Come viene definito accettabile o meno? 

Tutto questo framework viene formalizzato in maniera analtica nel cosiddetto integrale triplo: che racchiude in sè 

Ma come formalizzo questo quadro e come assumo decisioni? Ecco qui una formulazione più rigorosa del PBEE con evidenziati gli attori di questo processo.
