lbl_8021901C:
/* 8021901C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80219020  7C 08 02 A6 */	mflr r0
/* 80219024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80219028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021902C  7C 7F 1B 78 */	mr r31, r3
/* 80219030  80 63 02 F8 */	lwz r3, 0x2f8(r3)
/* 80219034  48 03 C7 F5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219038  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021903C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80219040  41 82 00 54 */	beq lbl_80219094
/* 80219044  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80219048  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8021904C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80219050  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80219054  C0 04 00 84 */	lfs f0, 0x84(r4)
/* 80219058  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021905C  48 03 C7 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80219060  7F E3 FB 78 */	mr r3, r31
/* 80219064  80 9F 02 F8 */	lwz r4, 0x2f8(r31)
/* 80219068  38 A0 00 05 */	li r5, 5
/* 8021906C  48 00 19 5D */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
/* 80219070  80 1F 04 B8 */	lwz r0, 0x4b8(r31)
/* 80219074  28 00 00 00 */	cmplwi r0, 0
/* 80219078  41 82 00 1C */	beq lbl_80219094
/* 8021907C  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80219080  48 03 C7 A9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219084  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 80219088  EC 20 00 72 */	fmuls f1, f0, f1
/* 8021908C  80 7F 04 B8 */	lwz r3, 0x4b8(r31)
/* 80219090  48 03 C7 41 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80219094:
/* 80219094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80219098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021909C  7C 08 03 A6 */	mtlr r0
/* 802190A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802190A4  4E 80 00 20 */	blr 
