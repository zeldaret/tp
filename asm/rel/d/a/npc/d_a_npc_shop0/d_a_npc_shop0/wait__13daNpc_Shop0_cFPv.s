lbl_80AEB920:
/* 80AEB920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEB924  7C 08 02 A6 */	mflr r0
/* 80AEB928  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEB92C  7C 65 1B 78 */	mr r5, r3
/* 80AEB930  80 03 09 D8 */	lwz r0, 0x9d8(r3)
/* 80AEB934  2C 00 00 01 */	cmpwi r0, 1
/* 80AEB938  41 82 00 10 */	beq lbl_80AEB948
/* 80AEB93C  40 80 00 6C */	bge lbl_80AEB9A8
/* 80AEB940  48 00 00 68 */	b lbl_80AEB9A8
/* 80AEB944  48 00 00 64 */	b lbl_80AEB9A8
lbl_80AEB948:
/* 80AEB948  38 61 00 14 */	addi r3, r1, 0x14
/* 80AEB94C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AEB950  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AEB954  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AEB958  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80AEB95C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80AEB960  4B 77 B1 D4 */	b __mi__4cXyzCFRC3Vec
/* 80AEB964  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80AEB968  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AEB96C  3C 60 80 AF */	lis r3, lit_4118@ha
/* 80AEB970  C0 03 BC 38 */	lfs f0, lit_4118@l(r3)
/* 80AEB974  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AEB978  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AEB97C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AEB980  38 61 00 08 */	addi r3, r1, 8
/* 80AEB984  4B 85 B7 B4 */	b PSVECSquareMag
/* 80AEB988  3C 60 80 AF */	lis r3, lit_4118@ha
/* 80AEB98C  C0 03 BC 38 */	lfs f0, lit_4118@l(r3)
/* 80AEB990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AEB994  40 81 00 08 */	ble lbl_80AEB99C
/* 80AEB998  48 00 00 10 */	b lbl_80AEB9A8
lbl_80AEB99C:
/* 80AEB99C  3C 60 80 AF */	lis r3, lit_4259@ha
/* 80AEB9A0  C8 03 BC 4C */	lfd f0, lit_4259@l(r3)
/* 80AEB9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80AEB9A8:
/* 80AEB9A8  38 60 00 01 */	li r3, 1
/* 80AEB9AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEB9B0  7C 08 03 A6 */	mtlr r0
/* 80AEB9B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEB9B8  4E 80 00 20 */	blr 
