lbl_805BB4B4:
/* 805BB4B4  80 03 07 08 */	lwz r0, 0x708(r3)
/* 805BB4B8  7C 00 20 00 */	cmpw r0, r4
/* 805BB4BC  4D 82 00 20 */	beqlr 
/* 805BB4C0  90 83 07 08 */	stw r4, 0x708(r3)
/* 805BB4C4  90 A3 07 0C */	stw r5, 0x70c(r3)
/* 805BB4C8  4E 80 00 20 */	blr 
