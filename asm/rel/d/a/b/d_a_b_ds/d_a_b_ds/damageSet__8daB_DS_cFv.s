lbl_805D0374:
/* 805D0374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D0378  7C 08 02 A6 */	mflr r0
/* 805D037C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D0380  88 03 08 52 */	lbz r0, 0x852(r3)
/* 805D0384  28 00 00 00 */	cmplwi r0, 0
/* 805D0388  40 82 00 10 */	bne lbl_805D0398
/* 805D038C  38 00 00 05 */	li r0, 5
/* 805D0390  3C 80 80 45 */	lis r4, struct_80451124+0x1@ha
/* 805D0394  98 04 11 25 */	stb r0, struct_80451124+0x1@l(r4)
lbl_805D0398:
/* 805D0398  38 00 00 01 */	li r0, 1
/* 805D039C  98 03 08 5E */	stb r0, 0x85e(r3)
/* 805D03A0  4B FF FF 59 */	bl mBreakBoneSUB__8daB_DS_cFv
/* 805D03A4  3C 60 80 5E */	lis r3, lit_3933@ha
/* 805D03A8  C0 23 CA 58 */	lfs f1, lit_3933@l(r3)
/* 805D03AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 805D03B0  3C 60 80 5E */	lis r3, lit_3934@ha
/* 805D03B4  C0 03 CA 5C */	lfs f0, lit_3934@l(r3)
/* 805D03B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805D03BC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805D03C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D03C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D03C8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D03CC  38 80 00 03 */	li r4, 3
/* 805D03D0  38 A0 00 4F */	li r5, 0x4f
/* 805D03D4  38 C1 00 08 */	addi r6, r1, 8
/* 805D03D8  4B A9 F6 4C */	b StartShock__12dVibration_cFii4cXyz
/* 805D03DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D03E0  7C 08 03 A6 */	mtlr r0
/* 805D03E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805D03E8  4E 80 00 20 */	blr 
