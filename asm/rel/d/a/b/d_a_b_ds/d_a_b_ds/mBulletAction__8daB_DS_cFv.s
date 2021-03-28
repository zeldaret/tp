lbl_805D8078:
/* 805D8078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D807C  7C 08 02 A6 */	mflr r0
/* 805D8080  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D8088  7C 7F 1B 78 */	mr r31, r3
/* 805D808C  4B FF FB 85 */	bl executeBullet__8daB_DS_cFv
/* 805D8090  7F E3 FB 78 */	mr r3, r31
/* 805D8094  38 9F 0A 88 */	addi r4, r31, 0xa88
/* 805D8098  4B A4 25 C8 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 805D809C  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805D80A0  28 00 00 03 */	cmplwi r0, 3
/* 805D80A4  41 82 00 0C */	beq lbl_805D80B0
/* 805D80A8  28 00 00 04 */	cmplwi r0, 4
/* 805D80AC  40 82 00 30 */	bne lbl_805D80DC
lbl_805D80B0:
/* 805D80B0  38 7F 08 70 */	addi r3, r31, 0x870
/* 805D80B4  3C 80 80 5E */	lis r4, lit_3933@ha
/* 805D80B8  C0 24 CA 58 */	lfs f1, lit_3933@l(r4)
/* 805D80BC  3C 80 80 5E */	lis r4, lit_3932@ha
/* 805D80C0  C0 44 CA 54 */	lfs f2, lit_3932@l(r4)
/* 805D80C4  4B A9 DE 94 */	b SetWall__12dBgS_AcchCirFff
/* 805D80C8  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 805D80CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805D80D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805D80D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805D80D8  4B A9 E9 D4 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_805D80DC:
/* 805D80DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D80E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D80E4  7C 08 03 A6 */	mtlr r0
/* 805D80E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805D80EC  4E 80 00 20 */	blr 
