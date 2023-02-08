lbl_802168D0:
/* 802168D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802168D4  7C 08 02 A6 */	mflr r0
/* 802168D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802168DC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802168E0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802168E4  39 61 00 30 */	addi r11, r1, 0x30
/* 802168E8  48 14 B8 ED */	bl _savegpr_27
/* 802168EC  7C 7B 1B 78 */	mr r27, r3
/* 802168F0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802168F4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802168F8  C0 43 03 58 */	lfs f2, 0x358(r3)
/* 802168FC  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80216900  C0 03 03 48 */	lfs f0, 0x348(r3)
/* 80216904  EC 21 00 32 */	fmuls f1, f1, f0
/* 80216908  EC 02 00 72 */	fmuls f0, f2, f1
/* 8021690C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80216910  C0 03 03 78 */	lfs f0, 0x378(r3)
/* 80216914  EC 00 00 72 */	fmuls f0, f0, f1
/* 80216918  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8021691C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80216920  3B 80 00 00 */	li r28, 0
/* 80216924  3B E0 00 00 */	li r31, 0
/* 80216928  3B C1 00 08 */	addi r30, r1, 8
/* 8021692C  C3 E2 AE 80 */	lfs f31, lit_4182(r2)
lbl_80216930:
/* 80216930  3B BF 02 B4 */	addi r29, r31, 0x2b4
/* 80216934  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216938  48 03 EE F1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021693C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80216940  41 82 00 20 */	beq lbl_80216960
/* 80216944  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216948  7C 3E FC 2E */	lfsx f1, r30, r31
/* 8021694C  48 03 EE 85 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80216950  7F 63 DB 78 */	mr r3, r27
/* 80216954  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80216958  38 A0 00 05 */	li r5, 5
/* 8021695C  48 00 40 6D */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80216960:
/* 80216960  3B 9C 00 01 */	addi r28, r28, 1
/* 80216964  2C 1C 00 03 */	cmpwi r28, 3
/* 80216968  3B FF 00 04 */	addi r31, r31, 4
/* 8021696C  41 80 FF C4 */	blt lbl_80216930
/* 80216970  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80216974  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80216978  39 61 00 30 */	addi r11, r1, 0x30
/* 8021697C  48 14 B8 A5 */	bl _restgpr_27
/* 80216980  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80216984  7C 08 03 A6 */	mtlr r0
/* 80216988  38 21 00 40 */	addi r1, r1, 0x40
/* 8021698C  4E 80 00 20 */	blr 
