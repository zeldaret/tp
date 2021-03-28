lbl_80218338:
/* 80218338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021833C  7C 08 02 A6 */	mflr r0
/* 80218340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80218344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80218348  7C 7F 1B 78 */	mr r31, r3
/* 8021834C  80 63 03 68 */	lwz r3, 0x368(r3)
/* 80218350  48 03 D4 D9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80218354  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80218358  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8021835C  41 82 00 28 */	beq lbl_80218384
/* 80218360  80 7F 03 68 */	lwz r3, 0x368(r31)
/* 80218364  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80218368  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8021836C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80218370  48 03 D4 61 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80218374  7F E3 FB 78 */	mr r3, r31
/* 80218378  80 9F 03 68 */	lwz r4, 0x368(r31)
/* 8021837C  38 A0 00 05 */	li r5, 5
/* 80218380  48 00 26 49 */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80218384:
/* 80218384  7F E3 FB 78 */	mr r3, r31
/* 80218388  48 00 00 C1 */	bl setAlphaButtonCrossItemAnimeMin__13dMeter2Draw_cFv
/* 8021838C  7F E3 FB 78 */	mr r3, r31
/* 80218390  48 00 02 59 */	bl setAlphaButtonCrossMapAnimeMin__13dMeter2Draw_cFv
/* 80218394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80218398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021839C  7C 08 03 A6 */	mtlr r0
/* 802183A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802183A4  4E 80 00 20 */	blr 
