lbl_80D3353C:
/* 80D3353C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33540  7C 08 02 A6 */	mflr r0
/* 80D33544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D33548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3354C  7C 7F 1B 78 */	mr r31, r3
/* 80D33550  38 9F 07 B8 */	addi r4, r31, 0x7b8
/* 80D33554  4B 2E 71 78 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D33558  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D3355C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D33560  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D33564  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D33568  4B 34 35 44 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80D3356C  7F E3 FB 78 */	mr r3, r31
/* 80D33570  4B FF F8 45 */	bl bgCheck__11daWdStick_cFv
/* 80D33574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D33578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3357C  7C 08 03 A6 */	mtlr r0
/* 80D33580  38 21 00 10 */	addi r1, r1, 0x10
/* 80D33584  4E 80 00 20 */	blr 
