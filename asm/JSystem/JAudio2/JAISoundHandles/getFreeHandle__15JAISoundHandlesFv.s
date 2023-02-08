lbl_802A2CF4:
/* 802A2CF4  38 80 00 00 */	li r4, 0
/* 802A2CF8  80 03 00 04 */	lwz r0, 4(r3)
/* 802A2CFC  7C 09 03 A6 */	mtctr r0
/* 802A2D00  2C 00 00 00 */	cmpwi r0, 0
/* 802A2D04  40 81 00 28 */	ble lbl_802A2D2C
lbl_802A2D08:
/* 802A2D08  80 03 00 00 */	lwz r0, 0(r3)
/* 802A2D0C  7C A0 22 14 */	add r5, r0, r4
/* 802A2D10  80 05 00 00 */	lwz r0, 0(r5)
/* 802A2D14  28 00 00 00 */	cmplwi r0, 0
/* 802A2D18  40 82 00 0C */	bne lbl_802A2D24
/* 802A2D1C  7C A3 2B 78 */	mr r3, r5
/* 802A2D20  4E 80 00 20 */	blr 
lbl_802A2D24:
/* 802A2D24  38 84 00 04 */	addi r4, r4, 4
/* 802A2D28  42 00 FF E0 */	bdnz lbl_802A2D08
lbl_802A2D2C:
/* 802A2D2C  38 60 00 00 */	li r3, 0
/* 802A2D30  4E 80 00 20 */	blr 
