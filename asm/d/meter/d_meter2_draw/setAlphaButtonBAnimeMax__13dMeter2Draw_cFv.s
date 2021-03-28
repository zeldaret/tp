lbl_80219474:
/* 80219474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80219478  7C 08 02 A6 */	mflr r0
/* 8021947C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80219480  39 61 00 20 */	addi r11, r1, 0x20
/* 80219484  48 14 8D 51 */	bl _savegpr_27
/* 80219488  7C 7B 1B 78 */	mr r27, r3
/* 8021948C  80 63 03 04 */	lwz r3, 0x304(r3)
/* 80219490  48 03 C3 99 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219494  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219498  3B C3 EB C8 */	addi r30, r3, g_drawHIO@l
/* 8021949C  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 802194A0  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 802194A4  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 802194A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 802194AC  EC 03 00 32 */	fmuls f0, f3, f0
/* 802194B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802194B4  41 82 00 4C */	beq lbl_80219500
/* 802194B8  80 7B 03 04 */	lwz r3, 0x304(r27)
/* 802194BC  FC 20 00 90 */	fmr f1, f0
/* 802194C0  48 03 C3 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802194C4  7F 63 DB 78 */	mr r3, r27
/* 802194C8  80 9B 03 04 */	lwz r4, 0x304(r27)
/* 802194CC  38 A0 00 05 */	li r5, 5
/* 802194D0  48 00 15 D5 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
/* 802194D4  80 7B 03 18 */	lwz r3, 0x318(r27)
/* 802194D8  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 802194DC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 802194E0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 802194E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802194E8  EC 22 00 32 */	fmuls f1, f2, f0
/* 802194EC  48 03 C2 E5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802194F0  7F 63 DB 78 */	mr r3, r27
/* 802194F4  80 9B 03 18 */	lwz r4, 0x318(r27)
/* 802194F8  38 A0 00 05 */	li r5, 5
/* 802194FC  48 00 15 A9 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80219500:
/* 80219500  80 7B 03 28 */	lwz r3, 0x328(r27)
/* 80219504  48 03 C3 25 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219508  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8021950C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80219510  EC 02 00 32 */	fmuls f0, f2, f0
/* 80219514  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80219518  41 82 00 20 */	beq lbl_80219538
/* 8021951C  80 7B 03 28 */	lwz r3, 0x328(r27)
/* 80219520  FC 20 00 90 */	fmr f1, f0
/* 80219524  48 03 C2 AD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80219528  7F 63 DB 78 */	mr r3, r27
/* 8021952C  80 9B 03 28 */	lwz r4, 0x328(r27)
/* 80219530  38 A0 00 05 */	li r5, 5
/* 80219534  48 00 15 71 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80219538:
/* 80219538  3B 80 00 00 */	li r28, 0
/* 8021953C  3B E0 00 00 */	li r31, 0
lbl_80219540:
/* 80219540  3B BF 00 D4 */	addi r29, r31, 0xd4
/* 80219544  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80219548  48 03 C2 E1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021954C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80219550  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80219554  EC 02 00 32 */	fmuls f0, f2, f0
/* 80219558  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8021955C  41 82 00 20 */	beq lbl_8021957C
/* 80219560  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80219564  FC 20 00 90 */	fmr f1, f0
/* 80219568  48 03 C2 69 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021956C  7F 63 DB 78 */	mr r3, r27
/* 80219570  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80219574  38 A0 00 05 */	li r5, 5
/* 80219578  48 00 15 2D */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8021957C:
/* 8021957C  3B 9C 00 01 */	addi r28, r28, 1
/* 80219580  2C 1C 00 05 */	cmpwi r28, 5
/* 80219584  3B FF 00 04 */	addi r31, r31, 4
/* 80219588  41 80 FF B8 */	blt lbl_80219540
/* 8021958C  39 61 00 20 */	addi r11, r1, 0x20
/* 80219590  48 14 8C 91 */	bl _restgpr_27
/* 80219594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80219598  7C 08 03 A6 */	mtlr r0
/* 8021959C  38 21 00 20 */	addi r1, r1, 0x20
/* 802195A0  4E 80 00 20 */	blr 
