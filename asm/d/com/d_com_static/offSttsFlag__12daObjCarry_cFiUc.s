lbl_80031D78:
/* 80031D78  38 AD 88 44 */	la r5, mSttsFlag__12daObjCarry_c(r13) /* 80450DC4-_SDA_BASE_ */
/* 80031D7C  7C 05 18 AE */	lbzx r0, r5, r3
/* 80031D80  7C 00 20 78 */	andc r0, r0, r4
/* 80031D84  7C 05 19 AE */	stbx r0, r5, r3
/* 80031D88  4E 80 00 20 */	blr 
