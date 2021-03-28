lbl_80181490:
/* 80181490  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80181494  7C 08 02 A6 */	mflr r0
/* 80181498  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018149C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801814A0  7C 7F 1B 78 */	mr r31, r3
/* 801814A4  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 801814A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 801814AC  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801814B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801814B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801814B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801814BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801814C0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 801814C4  38 80 00 02 */	li r4, 2
/* 801814C8  38 A0 00 01 */	li r5, 1
/* 801814CC  38 C1 00 08 */	addi r6, r1, 8
/* 801814D0  4B EE E5 55 */	bl StartShock__12dVibration_cFii4cXyz
/* 801814D4  7F E3 FB 78 */	mr r3, r31
/* 801814D8  38 80 00 37 */	li r4, 0x37
/* 801814DC  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 801814E0  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 801814E4  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 801814E8  4B FF FC 89 */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 801814EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801814F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801814F4  7C 08 03 A6 */	mtlr r0
/* 801814F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801814FC  4E 80 00 20 */	blr 
