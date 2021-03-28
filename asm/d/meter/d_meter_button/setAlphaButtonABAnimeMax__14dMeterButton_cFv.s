lbl_80208B84:
/* 80208B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208B88  7C 08 02 A6 */	mflr r0
/* 80208B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208B90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80208B94  7C 7F 1B 78 */	mr r31, r3
/* 80208B98  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80208B9C  28 03 00 00 */	cmplwi r3, 0
/* 80208BA0  41 82 00 84 */	beq lbl_80208C24
/* 80208BA4  48 04 CC 85 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208BA8  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80208BAC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208BB0  41 82 00 74 */	beq lbl_80208C24
/* 80208BB4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80208BB8  FC 20 00 90 */	fmr f1, f0
/* 80208BBC  48 04 CC 15 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208BC0  38 00 00 05 */	li r0, 5
/* 80208BC4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80208BC8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208BCC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80208BD0  48 04 CC 59 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208BD4  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80208BD8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80208BDC  40 82 00 48 */	bne lbl_80208C24
/* 80208BE0  88 1F 04 D1 */	lbz r0, 0x4d1(r31)
/* 80208BE4  28 00 00 00 */	cmplwi r0, 0
/* 80208BE8  40 82 00 3C */	bne lbl_80208C24
/* 80208BEC  38 00 00 56 */	li r0, 0x56
/* 80208BF0  90 01 00 08 */	stw r0, 8(r1)
/* 80208BF4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208BF8  38 81 00 08 */	addi r4, r1, 8
/* 80208BFC  38 A0 00 00 */	li r5, 0
/* 80208C00  38 C0 00 00 */	li r6, 0
/* 80208C04  38 E0 00 00 */	li r7, 0
/* 80208C08  FC 20 10 90 */	fmr f1, f2
/* 80208C0C  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80208C10  FC 80 18 90 */	fmr f4, f3
/* 80208C14  39 00 00 00 */	li r8, 0
/* 80208C18  48 0A 2D 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208C1C  38 00 00 01 */	li r0, 1
/* 80208C20  98 1F 04 D1 */	stb r0, 0x4d1(r31)
lbl_80208C24:
/* 80208C24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80208C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80208C2C  7C 08 03 A6 */	mtlr r0
/* 80208C30  38 21 00 20 */	addi r1, r1, 0x20
/* 80208C34  4E 80 00 20 */	blr 
