lbl_80019CB8:
/* 80019CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80019CBC  7C 08 02 A6 */	mflr r0
/* 80019CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80019CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80019CC8  90 61 00 08 */	stw r3, 8(r1)
/* 80019CCC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80019CD0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80019CD4  38 81 00 08 */	addi r4, r1, 8
/* 80019CD8  4B FF FB 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80019CDC  7C 60 1B 78 */	mr r0, r3
/* 80019CE0  7C 1F 03 79 */	or. r31, r0, r0
/* 80019CE4  41 82 00 1C */	beq lbl_80019D00
/* 80019CE8  3C 80 80 38 */	lis r4, f_op_f_op_actor_mng__stringBase0@ha
/* 80019CEC  38 84 88 C8 */	addi r4, r4, f_op_f_op_actor_mng__stringBase0@l
/* 80019CF0  4B FF FF 89 */	bl fopAcM_Log__FPC10fopAc_ac_cPCc
/* 80019CF4  7F E3 FB 78 */	mr r3, r31
/* 80019CF8  48 00 84 21 */	bl fpcM_Delete__FPv
/* 80019CFC  48 00 00 08 */	b lbl_80019D04
lbl_80019D00:
/* 80019D00  38 60 00 01 */	li r3, 1
lbl_80019D04:
/* 80019D04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80019D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80019D0C  7C 08 03 A6 */	mtlr r0
/* 80019D10  38 21 00 20 */	addi r1, r1, 0x20
/* 80019D14  4E 80 00 20 */	blr 
