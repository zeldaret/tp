lbl_80B9E338:
/* 80B9E338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9E33C  7C 08 02 A6 */	mflr r0
/* 80B9E340  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9E344  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9E348  7C 7F 1B 78 */	mr r31, r3
/* 80B9E34C  80 03 09 88 */	lwz r0, 0x988(r3)
/* 80B9E350  90 01 00 08 */	stw r0, 8(r1)
/* 80B9E354  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80B9E358  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80B9E35C  38 81 00 08 */	addi r4, r1, 8
/* 80B9E360  4B 47 B4 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80B9E364  28 03 00 00 */	cmplwi r3, 0
/* 80B9E368  41 82 00 0C */	beq lbl_80B9E374
/* 80B9E36C  7F E3 FB 78 */	mr r3, r31
/* 80B9E370  4B 47 B9 0C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B9E374:
/* 80B9E374  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9E378  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9E37C  7C 08 03 A6 */	mtlr r0
/* 80B9E380  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9E384  4E 80 00 20 */	blr 
