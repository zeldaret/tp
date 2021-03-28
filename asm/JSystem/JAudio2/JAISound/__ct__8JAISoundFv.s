lbl_802A22F8:
/* 802A22F8  3C 80 80 3D */	lis r4, __vt__8JAISound@ha
/* 802A22FC  38 04 99 70 */	addi r0, r4, __vt__8JAISound@l
/* 802A2300  90 03 00 00 */	stw r0, 0(r3)
/* 802A2304  C0 02 BD BC */	lfs f0, lit_697(r2)
/* 802A2308  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 802A230C  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 802A2310  C0 22 BD C0 */	lfs f1, lit_698(r2)
/* 802A2314  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 802A2318  C0 02 BD B8 */	lfs f0, lit_659(r2)
/* 802A231C  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 802A2320  D0 23 00 58 */	stfs f1, 0x58(r3)
/* 802A2324  4E 80 00 20 */	blr 
