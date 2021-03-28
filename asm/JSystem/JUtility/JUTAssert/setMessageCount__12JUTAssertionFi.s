lbl_802E4C3C:
/* 802E4C3C  7C 03 00 D0 */	neg r0, r3
/* 802E4C40  7C 60 03 38 */	orc r0, r3, r0
/* 802E4C44  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 802E4C48  7C 60 00 78 */	andc r0, r3, r0
/* 802E4C4C  90 0D 8F B0 */	stw r0, data_80451530(r13)
/* 802E4C50  4E 80 00 20 */	blr 
