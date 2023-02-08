lbl_8004ADF4:
/* 8004ADF4  3C 80 80 3B */	lis r4, __vt__18JPAEmitterCallBack@ha /* 0x803A8578@ha */
/* 8004ADF8  38 04 85 78 */	addi r0, r4, __vt__18JPAEmitterCallBack@l /* 0x803A8578@l */
/* 8004ADFC  90 03 00 00 */	stw r0, 0(r3)
/* 8004AE00  3C 80 80 3B */	lis r4, __vt__19dPa_simpleEcallBack@ha /* 0x803A8448@ha */
/* 8004AE04  38 04 84 48 */	addi r0, r4, __vt__19dPa_simpleEcallBack@l /* 0x803A8448@l */
/* 8004AE08  90 03 00 00 */	stw r0, 0(r3)
/* 8004AE0C  38 00 00 00 */	li r0, 0
/* 8004AE10  90 03 00 04 */	stw r0, 4(r3)
/* 8004AE14  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8004AE18  4E 80 00 20 */	blr 
