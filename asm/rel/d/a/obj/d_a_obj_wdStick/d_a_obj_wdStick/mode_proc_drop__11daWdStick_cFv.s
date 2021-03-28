lbl_80D33890:
/* 80D33890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D33894  7C 08 02 A6 */	mflr r0
/* 80D33898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3389C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D338A0  7C 7F 1B 78 */	mr r31, r3
/* 80D338A4  38 9F 07 B8 */	addi r4, r31, 0x7b8
/* 80D338A8  4B 2E 6E 24 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D338AC  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D338B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D338B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D338B8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D338BC  4B 34 31 F0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80D338C0  7F E3 FB 78 */	mr r3, r31
/* 80D338C4  4B FF F4 F1 */	bl bgCheck__11daWdStick_cFv
/* 80D338C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D338CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D338D0  7C 08 03 A6 */	mtlr r0
/* 80D338D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D338D8  4E 80 00 20 */	blr 
