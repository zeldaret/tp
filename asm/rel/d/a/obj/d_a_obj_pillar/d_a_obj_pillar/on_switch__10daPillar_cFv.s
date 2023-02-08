lbl_80CAFC08:
/* 80CAFC08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CAFC0C  7C 08 02 A6 */	mflr r0
/* 80CAFC10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CAFC14  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAFC18  4B 6B 25 B9 */	bl _savegpr_26
/* 80CAFC1C  7C 7F 1B 78 */	mr r31, r3
/* 80CAFC20  3C 60 80 CB */	lis r3, l_bmd@ha /* 0x80CB09D4@ha */
/* 80CAFC24  3B 83 09 D4 */	addi r28, r3, l_bmd@l /* 0x80CB09D4@l */
/* 80CAFC28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAFC2C  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80CAFC30  28 1D 00 FF */	cmplwi r29, 0xff
/* 80CAFC34  41 82 01 18 */	beq lbl_80CAFD4C
/* 80CAFC38  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80CAFC3C  28 00 00 FF */	cmplwi r0, 0xff
/* 80CAFC40  40 82 00 20 */	bne lbl_80CAFC60
/* 80CAFC44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFC48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAFC4C  7F A4 EB 78 */	mr r4, r29
/* 80CAFC50  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAFC54  7C 05 07 74 */	extsb r5, r0
/* 80CAFC58  4B 38 55 A9 */	bl onSwitch__10dSv_info_cFii
/* 80CAFC5C  48 00 00 F0 */	b lbl_80CAFD4C
lbl_80CAFC60:
/* 80CAFC60  28 00 00 00 */	cmplwi r0, 0
/* 80CAFC64  40 82 00 E8 */	bne lbl_80CAFD4C
/* 80CAFC68  3B 60 00 00 */	li r27, 0
/* 80CAFC6C  3B 40 00 00 */	li r26, 0
/* 80CAFC70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFC74  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CAFC78:
/* 80CAFC78  7F C3 F3 78 */	mr r3, r30
/* 80CAFC7C  7C 9D D2 14 */	add r4, r29, r26
/* 80CAFC80  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAFC84  7C 05 07 74 */	extsb r5, r0
/* 80CAFC88  4B 38 56 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80CAFC8C  2C 03 00 00 */	cmpwi r3, 0
/* 80CAFC90  41 82 00 08 */	beq lbl_80CAFC98
/* 80CAFC94  3B 60 00 01 */	li r27, 1
lbl_80CAFC98:
/* 80CAFC98  3B 5A 00 01 */	addi r26, r26, 1
/* 80CAFC9C  2C 1A 00 04 */	cmpwi r26, 4
/* 80CAFCA0  41 80 FF D8 */	blt lbl_80CAFC78
/* 80CAFCA4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80CAFCA8  40 82 00 A4 */	bne lbl_80CAFD4C
/* 80CAFCAC  C0 5C 00 B8 */	lfs f2, 0xb8(r28)
/* 80CAFCB0  A8 1F 07 34 */	lha r0, 0x734(r31)
/* 80CAFCB4  C8 3C 00 B0 */	lfd f1, 0xb0(r28)
/* 80CAFCB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAFCBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CAFCC0  3C 00 43 30 */	lis r0, 0x4330
/* 80CAFCC4  90 01 00 08 */	stw r0, 8(r1)
/* 80CAFCC8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CAFCCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CAFCD0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CAFCD4  FC 40 08 90 */	fmr f2, f1
/* 80CAFCD8  C0 1C 00 94 */	lfs f0, 0x94(r28)
/* 80CAFCDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAFCE0  40 80 00 0C */	bge lbl_80CAFCEC
/* 80CAFCE4  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80CAFCE8  EC 40 08 2A */	fadds f2, f0, f1
lbl_80CAFCEC:
/* 80CAFCEC  C0 3C 00 A4 */	lfs f1, 0xa4(r28)
/* 80CAFCF0  C0 1C 00 C0 */	lfs f0, 0xc0(r28)
/* 80CAFCF4  EC 02 00 24 */	fdivs f0, f2, f0
/* 80CAFCF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAFCFC  FC 00 00 1E */	fctiwz f0, f0
/* 80CAFD00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CAFD04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAFD08  38 80 00 01 */	li r4, 1
/* 80CAFD0C  3B 40 00 00 */	li r26, 0
/* 80CAFD10  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 80CAFD14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAFD18  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80CAFD1C:
/* 80CAFD1C  54 9B 04 3E */	clrlwi r27, r4, 0x10
/* 80CAFD20  7F 80 D8 39 */	and. r0, r28, r27
/* 80CAFD24  41 82 00 18 */	beq lbl_80CAFD3C
/* 80CAFD28  7F C3 F3 78 */	mr r3, r30
/* 80CAFD2C  7C 9D D2 14 */	add r4, r29, r26
/* 80CAFD30  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAFD34  7C 05 07 74 */	extsb r5, r0
/* 80CAFD38  4B 38 54 C9 */	bl onSwitch__10dSv_info_cFii
lbl_80CAFD3C:
/* 80CAFD3C  57 64 0C 3C */	rlwinm r4, r27, 1, 0x10, 0x1e
/* 80CAFD40  3B 5A 00 01 */	addi r26, r26, 1
/* 80CAFD44  2C 1A 00 04 */	cmpwi r26, 4
/* 80CAFD48  41 80 FF D4 */	blt lbl_80CAFD1C
lbl_80CAFD4C:
/* 80CAFD4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CAFD50  4B 6B 24 CD */	bl _restgpr_26
/* 80CAFD54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CAFD58  7C 08 03 A6 */	mtlr r0
/* 80CAFD5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CAFD60  4E 80 00 20 */	blr 
