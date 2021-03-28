lbl_80207AB8:
/* 80207AB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80207ABC  7C 08 02 A6 */	mflr r0
/* 80207AC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80207AC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207AC8  7C 7F 1B 78 */	mr r31, r3
/* 80207ACC  80 63 00 34 */	lwz r3, 0x34(r3)
/* 80207AD0  48 04 DD 59 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207AD4  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207AD8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207ADC  41 82 00 B4 */	beq lbl_80207B90
/* 80207AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80207AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80207AE8  88 03 5E 4D */	lbz r0, 0x5e4d(r3)
/* 80207AEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207AF0  41 82 00 20 */	beq lbl_80207B10
/* 80207AF4  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80207AF8  FC 20 00 90 */	fmr f1, f0
/* 80207AFC  48 04 DC D5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207B00  38 00 00 05 */	li r0, 5
/* 80207B04  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80207B08  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207B0C  48 00 00 2C */	b lbl_80207B38
lbl_80207B10:
/* 80207B10  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80207B14  FC 20 00 90 */	fmr f1, f0
/* 80207B18  48 04 DC B9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207B1C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80207B20  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80207B24  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207B28  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80207B2C  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80207B30  38 A0 00 05 */	li r5, 5
/* 80207B34  48 01 2F 71 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207B38:
/* 80207B38  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80207B3C  48 04 DC ED */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207B40  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207B44  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80207B48  40 82 00 48 */	bne lbl_80207B90
/* 80207B4C  88 1F 04 C6 */	lbz r0, 0x4c6(r31)
/* 80207B50  28 00 00 00 */	cmplwi r0, 0
/* 80207B54  40 82 00 3C */	bne lbl_80207B90
/* 80207B58  38 00 00 56 */	li r0, 0x56
/* 80207B5C  90 01 00 08 */	stw r0, 8(r1)
/* 80207B60  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207B64  38 81 00 08 */	addi r4, r1, 8
/* 80207B68  38 A0 00 00 */	li r5, 0
/* 80207B6C  38 C0 00 00 */	li r6, 0
/* 80207B70  38 E0 00 00 */	li r7, 0
/* 80207B74  FC 20 10 90 */	fmr f1, f2
/* 80207B78  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80207B7C  FC 80 18 90 */	fmr f4, f3
/* 80207B80  39 00 00 00 */	li r8, 0
/* 80207B84  48 0A 3E 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207B88  38 00 00 01 */	li r0, 1
/* 80207B8C  98 1F 04 C6 */	stb r0, 0x4c6(r31)
lbl_80207B90:
/* 80207B90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80207B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207B98  7C 08 03 A6 */	mtlr r0
/* 80207B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80207BA0  4E 80 00 20 */	blr 
