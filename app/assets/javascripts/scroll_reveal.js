var fooReveal = {
  origin: 'top',
  delay    : 50,
  easing   : 'ease-in-out',
  scale    : 1.1
};

window.sr = ScrollReveal();
sr.reveal('#mission1');
sr.reveal('#mission2', fooReveal);
sr.reveal('#mission3', fooReveal);
sr.reveal('#pack1', fooReveal);
sr.reveal('#pack2', fooReveal);

