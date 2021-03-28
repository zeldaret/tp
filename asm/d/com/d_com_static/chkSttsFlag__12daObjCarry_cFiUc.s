lbl_80031D8C:
/* 80031D8C  38 AD 88 44 */	la r5, mSttsFlag__12daObjCarry_c(r13) /* 80450DC4-_SDA_BASE_ */
/* 80031D90  7C 05 18 AE */	lbzx r0, r5, r3
/* 80031D94  7C 00 20 38 */	and r0, r0, r4
/* 80031D98  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80031D9C  30 03 FF FF */	addic r0, r3, -1
/* 80031DA0  7C 00 19 10 */	subfe r0, r0, r3
/* 80031DA4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80031DA8  4E 80 00 20 */	blr 
