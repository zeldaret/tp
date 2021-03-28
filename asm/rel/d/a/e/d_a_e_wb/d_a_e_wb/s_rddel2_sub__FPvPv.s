lbl_807DA868:
/* 807DA868  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807DA86C  7C 08 02 A6 */	mflr r0
/* 807DA870  90 01 00 24 */	stw r0, 0x24(r1)
/* 807DA874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807DA878  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807DA87C  7C 7E 1B 78 */	mr r30, r3
/* 807DA880  7C 9F 23 78 */	mr r31, r4
/* 807DA884  4B 83 E4 5C */	b fopAc_IsActor__FPv
/* 807DA888  2C 03 00 00 */	cmpwi r3, 0
/* 807DA88C  41 82 00 38 */	beq lbl_807DA8C4
/* 807DA890  A8 1E 00 08 */	lha r0, 8(r30)
/* 807DA894  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 807DA898  40 82 00 2C */	bne lbl_807DA8C4
/* 807DA89C  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 807DA8A0  90 01 00 08 */	stw r0, 8(r1)
/* 807DA8A4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807DA8A8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807DA8AC  38 81 00 08 */	addi r4, r1, 8
/* 807DA8B0  4B 83 EF 48 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807DA8B4  7C 03 F8 40 */	cmplw r3, r31
/* 807DA8B8  40 82 00 0C */	bne lbl_807DA8C4
/* 807DA8BC  7F C3 F3 78 */	mr r3, r30
/* 807DA8C0  4B 83 F3 BC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_807DA8C4:
/* 807DA8C4  38 60 00 00 */	li r3, 0
/* 807DA8C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807DA8CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807DA8D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807DA8D4  7C 08 03 A6 */	mtlr r0
/* 807DA8D8  38 21 00 20 */	addi r1, r1, 0x20
/* 807DA8DC  4E 80 00 20 */	blr 
