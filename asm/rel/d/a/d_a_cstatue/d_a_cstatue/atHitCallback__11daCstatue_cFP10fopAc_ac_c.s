lbl_806636AC:
/* 806636AC  A8 04 00 08 */	lha r0, 8(r4)
/* 806636B0  2C 00 02 0D */	cmpwi r0, 0x20d
/* 806636B4  4C 82 00 20 */	bnelr 
/* 806636B8  80 03 0A EC */	lwz r0, 0xaec(r3)
/* 806636BC  60 00 01 00 */	ori r0, r0, 0x100
/* 806636C0  90 03 0A EC */	stw r0, 0xaec(r3)
/* 806636C4  4E 80 00 20 */	blr 
