lbl_80208A38:
/* 80208A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208A3C  7C 08 02 A6 */	mflr r0
/* 80208A40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208A44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80208A48  7C 7F 1B 78 */	mr r31, r3
/* 80208A4C  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 80208A50  28 03 00 00 */	cmplwi r3, 0
/* 80208A54  41 82 00 84 */	beq lbl_80208AD8
/* 80208A58  48 04 CD D1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208A5C  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80208A60  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208A64  41 82 00 74 */	beq lbl_80208AD8
/* 80208A68  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80208A6C  FC 20 00 90 */	fmr f1, f0
/* 80208A70  48 04 CD 61 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208A74  38 00 00 05 */	li r0, 5
/* 80208A78  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80208A7C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208A80  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 80208A84  48 04 CD A5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208A88  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80208A8C  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80208A90  40 82 00 48 */	bne lbl_80208AD8
/* 80208A94  88 1F 04 D0 */	lbz r0, 0x4d0(r31)
/* 80208A98  28 00 00 00 */	cmplwi r0, 0
/* 80208A9C  40 82 00 3C */	bne lbl_80208AD8
/* 80208AA0  38 00 00 56 */	li r0, 0x56
/* 80208AA4  90 01 00 08 */	stw r0, 8(r1)
/* 80208AA8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208AAC  38 81 00 08 */	addi r4, r1, 8
/* 80208AB0  38 A0 00 00 */	li r5, 0
/* 80208AB4  38 C0 00 00 */	li r6, 0
/* 80208AB8  38 E0 00 00 */	li r7, 0
/* 80208ABC  FC 20 10 90 */	fmr f1, f2
/* 80208AC0  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80208AC4  FC 80 18 90 */	fmr f4, f3
/* 80208AC8  39 00 00 00 */	li r8, 0
/* 80208ACC  48 0A 2E B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208AD0  38 00 00 01 */	li r0, 1
/* 80208AD4  98 1F 04 D0 */	stb r0, 0x4d0(r31)
lbl_80208AD8:
/* 80208AD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80208ADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80208AE0  7C 08 03 A6 */	mtlr r0
/* 80208AE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80208AE8  4E 80 00 20 */	blr 
