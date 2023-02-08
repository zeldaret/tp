lbl_80BB90E0:
/* 80BB90E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB90E4  7C 08 02 A6 */	mflr r0
/* 80BB90E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB90EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BB90F0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BB90F4  7C 7F 1B 78 */	mr r31, r3
/* 80BB90F8  3C 60 80 BC */	lis r3, lit_3653@ha /* 0x80BB973C@ha */
/* 80BB90FC  3B C3 97 3C */	addi r30, r3, lit_3653@l /* 0x80BB973C@l */
/* 80BB9100  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80BB9104  28 04 00 00 */	cmplwi r4, 0
/* 80BB9108  41 82 00 14 */	beq lbl_80BB911C
/* 80BB910C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9114  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BB9118  4B 4B B1 39 */	bl Release__4cBgSFP9dBgW_Base
lbl_80BB911C:
/* 80BB911C  7F E3 FB 78 */	mr r3, r31
/* 80BB9120  38 80 00 00 */	li r4, 0
/* 80BB9124  48 00 02 01 */	bl setBreakEffect__12daBmWindow_cFi
/* 80BB9128  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 80BB912C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BB9130  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80BB9134  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB9138  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BB913C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9144  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BB9148  3C 80 80 BC */	lis r4, l_HIO@ha /* 0x80BB999C@ha */
/* 80BB914C  38 84 99 9C */	addi r4, r4, l_HIO@l /* 0x80BB999C@l */
/* 80BB9150  88 84 00 05 */	lbz r4, 5(r4)
/* 80BB9154  38 A0 00 0F */	li r5, 0xf
/* 80BB9158  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BB915C  4B 4B 68 C9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BB9160  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BB9164  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB9168  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BB916C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BB9170  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80BB9174  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BB9178  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80BB917C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BB9180  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BB9184  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB9188  7C 03 07 74 */	extsb r3, r0
/* 80BB918C  4B 47 3E E1 */	bl dComIfGp_getReverb__Fi
/* 80BB9190  7C 67 1B 78 */	mr r7, r3
/* 80BB9194  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080110@ha */
/* 80BB9198  38 03 01 10 */	addi r0, r3, 0x0110 /* 0x00080110@l */
/* 80BB919C  90 01 00 08 */	stw r0, 8(r1)
/* 80BB91A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB91A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB91A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB91AC  38 81 00 08 */	addi r4, r1, 8
/* 80BB91B0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BB91B4  38 C0 00 00 */	li r6, 0
/* 80BB91B8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80BB91BC  FC 40 08 90 */	fmr f2, f1
/* 80BB91C0  C0 7E 00 90 */	lfs f3, 0x90(r30)
/* 80BB91C4  FC 80 18 90 */	fmr f4, f3
/* 80BB91C8  39 00 00 00 */	li r8, 0
/* 80BB91CC  4B 6F 27 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB91D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB91D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB91D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BB91DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BB91E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BB91E4  7C 05 07 74 */	extsb r5, r0
/* 80BB91E8  4B 47 C0 19 */	bl onSwitch__10dSv_info_cFii
/* 80BB91EC  38 00 00 01 */	li r0, 1
/* 80BB91F0  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80BB91F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BB91F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BB91FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB9200  7C 08 03 A6 */	mtlr r0
/* 80BB9204  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB9208  4E 80 00 20 */	blr 
