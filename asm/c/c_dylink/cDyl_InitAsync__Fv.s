lbl_80018764:
/* 80018764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018768  7C 08 02 A6 */	mflr r0
/* 8001876C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018770  4B FF FC 6D */	bl cCc_Init__Fv
/* 80018774  3C 60 80 02 */	lis r3, cDyl_InitCallback__FPv@ha
/* 80018778  38 63 86 88 */	addi r3, r3, cDyl_InitCallback__FPv@l
/* 8001877C  38 80 00 00 */	li r4, 0
/* 80018780  4B FF D4 F5 */	bl create__20mDoDvdThd_callback_cFPFPv_PvPv
/* 80018784  90 6D 87 30 */	stw r3, cDyl_DVD(r13)
/* 80018788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001878C  7C 08 03 A6 */	mtlr r0
/* 80018790  38 21 00 10 */	addi r1, r1, 0x10
/* 80018794  4E 80 00 20 */	blr 
