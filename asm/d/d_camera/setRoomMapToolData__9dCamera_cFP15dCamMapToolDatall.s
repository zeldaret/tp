lbl_801635AC:
/* 801635AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801635B0  7C 08 02 A6 */	mflr r0
/* 801635B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801635B8  7C 83 23 78 */	mr r3, r4
/* 801635BC  7C A4 2B 78 */	mr r4, r5
/* 801635C0  7C C5 33 78 */	mr r5, r6
/* 801635C4  38 C0 00 00 */	li r6, 0
/* 801635C8  38 E0 00 FF */	li r7, 0xff
/* 801635CC  39 00 00 FF */	li r8, 0xff
/* 801635D0  4B FF C8 E9 */	bl Set__15dCamMapToolDataFllP10fopAc_ac_cUsUc
/* 801635D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801635D8  7C 08 03 A6 */	mtlr r0
/* 801635DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801635E0  4E 80 00 20 */	blr 
