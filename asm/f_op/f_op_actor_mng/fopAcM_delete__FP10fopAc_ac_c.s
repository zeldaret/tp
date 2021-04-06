lbl_80019C7C:
/* 80019C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019C80  7C 08 02 A6 */	mflr r0
/* 80019C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80019C8C  7C 7F 1B 78 */	mr r31, r3
/* 80019C90  3C 80 80 38 */	lis r4, f_op_f_op_actor_mng__stringBase0@ha /* 0x803788C8@ha */
/* 80019C94  38 84 88 C8 */	addi r4, r4, f_op_f_op_actor_mng__stringBase0@l /* 0x803788C8@l */
/* 80019C98  4B FF FF E1 */	bl fopAcM_Log__FPC10fopAc_ac_cPCc
/* 80019C9C  7F E3 FB 78 */	mr r3, r31
/* 80019CA0  48 00 84 79 */	bl fpcM_Delete__FPv
/* 80019CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80019CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019CAC  7C 08 03 A6 */	mtlr r0
/* 80019CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80019CB4  4E 80 00 20 */	blr 
