lbl_802DC20C:
/* 802DC20C  80 03 00 08 */	lwz r0, 8(r3)
/* 802DC210  7C 04 00 40 */	cmplw r4, r0
/* 802DC214  41 80 00 0C */	blt lbl_802DC220
/* 802DC218  38 60 00 00 */	li r3, 0
/* 802DC21C  4E 80 00 20 */	blr 
lbl_802DC220:
/* 802DC220  80 63 00 00 */	lwz r3, 0(r3)
/* 802DC224  7C 89 03 A6 */	mtctr r4
/* 802DC228  28 04 00 00 */	cmplwi r4, 0
/* 802DC22C  4C 81 00 20 */	blelr 
lbl_802DC230:
/* 802DC230  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802DC234  42 00 FF FC */	bdnz lbl_802DC230
/* 802DC238  4E 80 00 20 */	blr 
