lbl_8075F510:
/* 8075F510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075F514  7C 08 02 A6 */	mflr r0
/* 8075F518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075F51C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8075F520  7C 7F 1B 78 */	mr r31, r3
/* 8075F524  80 03 06 80 */	lwz r0, 0x680(r3)
/* 8075F528  2C 00 00 06 */	cmpwi r0, 6
/* 8075F52C  40 82 00 0C */	bne lbl_8075F538
/* 8075F530  4B FF E4 1D */	bl executeSummonsBullet__8daE_PZ_cFv
/* 8075F534  48 00 00 08 */	b lbl_8075F53C
lbl_8075F538:
/* 8075F538  4B FF FB 85 */	bl executeBullet__8daE_PZ_cFv
lbl_8075F53C:
/* 8075F53C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8075F540  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8075F544  7F E3 FB 78 */	mr r3, r31
/* 8075F548  38 9F 0A D4 */	addi r4, r31, 0xad4
/* 8075F54C  4B 8B B1 80 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8075F550  38 7F 08 90 */	addi r3, r31, 0x890
/* 8075F554  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8075F558  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8075F55C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8075F560  4B 91 75 4C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8075F564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8075F568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075F56C  7C 08 03 A6 */	mtlr r0
/* 8075F570  38 21 00 10 */	addi r1, r1, 0x10
/* 8075F574  4E 80 00 20 */	blr 
