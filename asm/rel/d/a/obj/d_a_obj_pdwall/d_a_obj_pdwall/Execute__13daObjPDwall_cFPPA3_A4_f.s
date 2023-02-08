lbl_80CACCE0:
/* 80CACCE0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CACCE4  7C 08 02 A6 */	mflr r0
/* 80CACCE8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CACCEC  39 61 00 50 */	addi r11, r1, 0x50
/* 80CACCF0  4B 6B 54 DD */	bl _savegpr_25
/* 80CACCF4  7C 7B 1B 78 */	mr r27, r3
/* 80CACCF8  7C 9C 23 78 */	mr r28, r4
/* 80CACCFC  3C 60 80 CB */	lis r3, l_cull_box@ha /* 0x80CAD1B8@ha */
/* 80CACD00  3B E3 D1 B8 */	addi r31, r3, l_cull_box@l /* 0x80CAD1B8@l */
/* 80CACD04  88 1B 0A 10 */	lbz r0, 0xa10(r27)
/* 80CACD08  28 00 00 00 */	cmplwi r0, 0
/* 80CACD0C  40 82 01 80 */	bne lbl_80CACE8C
/* 80CACD10  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80CACD14  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CACD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CACD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CACD20  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80CACD24  7C 05 07 74 */	extsb r5, r0
/* 80CACD28  4B 38 86 39 */	bl isSwitch__10dSv_info_cCFii
/* 80CACD2C  2C 03 00 00 */	cmpwi r3, 0
/* 80CACD30  41 82 01 5C */	beq lbl_80CACE8C
/* 80CACD34  80 7B 0A 14 */	lwz r3, 0xa14(r27)
/* 80CACD38  38 03 00 01 */	addi r0, r3, 1
/* 80CACD3C  90 1B 0A 14 */	stw r0, 0xa14(r27)
/* 80CACD40  3B A0 00 00 */	li r29, 0
/* 80CACD44  3B 40 00 00 */	li r26, 0
/* 80CACD48  3B 20 00 00 */	li r25, 0
/* 80CACD4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CACD50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CACD54  3B C3 5B D4 */	addi r30, r3, 0x5bd4
lbl_80CACD58:
/* 80CACD58  80 7B 0A 14 */	lwz r3, 0xa14(r27)
/* 80CACD5C  20 1D 00 09 */	subfic r0, r29, 9
/* 80CACD60  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80CACD64  7C 03 00 00 */	cmpw r3, r0
/* 80CACD68  41 80 01 10 */	blt lbl_80CACE78
/* 80CACD6C  7C 7B CA 14 */	add r3, r27, r25
/* 80CACD70  C0 23 07 E0 */	lfs f1, 0x7e0(r3)
/* 80CACD74  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80CACD78  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CACD7C  D0 03 07 E0 */	stfs f0, 0x7e0(r3)
/* 80CACD80  C0 23 08 08 */	lfs f1, 0x808(r3)
/* 80CACD84  C0 03 07 E0 */	lfs f0, 0x7e0(r3)
/* 80CACD88  EC 01 00 2A */	fadds f0, f1, f0
/* 80CACD8C  D0 03 08 08 */	stfs f0, 0x808(r3)
/* 80CACD90  C0 63 08 08 */	lfs f3, 0x808(r3)
/* 80CACD94  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80CACD98  38 1D 00 01 */	addi r0, r29, 1
/* 80CACD9C  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 80CACDA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CACDA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CACDA8  3C 00 43 30 */	lis r0, 0x4330
/* 80CACDAC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CACDB0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CACDB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CACDB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CACDBC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80CACDC0  4C 40 13 82 */	cror 2, 0, 2
/* 80CACDC4  40 82 00 B4 */	bne lbl_80CACE78
/* 80CACDC8  D0 03 08 08 */	stfs f0, 0x808(r3)
/* 80CACDCC  C0 23 07 E0 */	lfs f1, 0x7e0(r3)
/* 80CACDD0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80CACDD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CACDD8  D0 03 07 E0 */	stfs f0, 0x7e0(r3)
/* 80CACDDC  38 7D 08 30 */	addi r3, r29, 0x830
/* 80CACDE0  7C 1B 18 AE */	lbzx r0, r27, r3
/* 80CACDE4  28 00 00 00 */	cmplwi r0, 0
/* 80CACDE8  40 82 00 90 */	bne lbl_80CACE78
/* 80CACDEC  38 00 00 01 */	li r0, 1
/* 80CACDF0  7C 1B 19 AE */	stbx r0, r27, r3
/* 80CACDF4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CACDF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CACDFC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CACE00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CACE04  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CACE08  7F C3 F3 78 */	mr r3, r30
/* 80CACE0C  38 80 00 08 */	li r4, 8
/* 80CACE10  38 A0 00 1F */	li r5, 0x1f
/* 80CACE14  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CACE18  4B 3C 2C 0D */	bl StartShock__12dVibration_cFii4cXyz
/* 80CACE1C  7C 7B D2 14 */	add r3, r27, r26
/* 80CACE20  C0 03 06 0C */	lfs f0, 0x60c(r3)
/* 80CACE24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CACE28  C0 03 06 1C */	lfs f0, 0x61c(r3)
/* 80CACE2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CACE30  C0 03 06 2C */	lfs f0, 0x62c(r3)
/* 80CACE34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CACE38  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B5@ha */
/* 80CACE3C  38 03 01 B5 */	addi r0, r3, 0x01B5 /* 0x000801B5@l */
/* 80CACE40  90 01 00 08 */	stw r0, 8(r1)
/* 80CACE44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CACE48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CACE4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CACE50  38 81 00 08 */	addi r4, r1, 8
/* 80CACE54  38 A1 00 18 */	addi r5, r1, 0x18
/* 80CACE58  38 C0 00 00 */	li r6, 0
/* 80CACE5C  38 E0 00 00 */	li r7, 0
/* 80CACE60  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CACE64  FC 40 08 90 */	fmr f2, f1
/* 80CACE68  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80CACE6C  FC 80 18 90 */	fmr f4, f3
/* 80CACE70  39 00 00 00 */	li r8, 0
/* 80CACE74  4B 5F EB 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CACE78:
/* 80CACE78  3B BD 00 01 */	addi r29, r29, 1
/* 80CACE7C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80CACE80  3B 5A 00 30 */	addi r26, r26, 0x30
/* 80CACE84  3B 39 00 04 */	addi r25, r25, 4
/* 80CACE88  41 80 FE D0 */	blt lbl_80CACD58
lbl_80CACE8C:
/* 80CACE8C  7F 63 DB 78 */	mr r3, r27
/* 80CACE90  4B FF FA 4D */	bl setMtx__13daObjPDwall_cFv
/* 80CACE94  3B 20 00 00 */	li r25, 0
/* 80CACE98  3B A0 00 00 */	li r29, 0
/* 80CACE9C  3B C0 00 00 */	li r30, 0
lbl_80CACEA0:
/* 80CACEA0  38 7E 06 00 */	addi r3, r30, 0x600
/* 80CACEA4  7C 7B 1A 14 */	add r3, r27, r3
/* 80CACEA8  38 1D 05 D8 */	addi r0, r29, 0x5d8
/* 80CACEAC  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80CACEB0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CACEB4  4B 69 95 FD */	bl PSMTXCopy
/* 80CACEB8  3B 39 00 01 */	addi r25, r25, 1
/* 80CACEBC  2C 19 00 0A */	cmpwi r25, 0xa
/* 80CACEC0  3B BD 00 04 */	addi r29, r29, 4
/* 80CACEC4  3B DE 00 30 */	addi r30, r30, 0x30
/* 80CACEC8  41 80 FF D8 */	blt lbl_80CACEA0
/* 80CACECC  3B 20 00 00 */	li r25, 0
/* 80CACED0  3B A0 00 00 */	li r29, 0
lbl_80CACED4:
/* 80CACED4  38 1D 08 3C */	addi r0, r29, 0x83c
/* 80CACED8  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80CACEDC  4B 3C EA E5 */	bl Move__4dBgWFv
/* 80CACEE0  3B 39 00 01 */	addi r25, r25, 1
/* 80CACEE4  2C 19 00 09 */	cmpwi r25, 9
/* 80CACEE8  3B BD 00 04 */	addi r29, r29, 4
/* 80CACEEC  41 80 FF E8 */	blt lbl_80CACED4
/* 80CACEF0  38 1B 05 A8 */	addi r0, r27, 0x5a8
/* 80CACEF4  90 1C 00 00 */	stw r0, 0(r28)
/* 80CACEF8  38 60 00 01 */	li r3, 1
/* 80CACEFC  39 61 00 50 */	addi r11, r1, 0x50
/* 80CACF00  4B 6B 53 19 */	bl _restgpr_25
/* 80CACF04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CACF08  7C 08 03 A6 */	mtlr r0
/* 80CACF0C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CACF10  4E 80 00 20 */	blr 
