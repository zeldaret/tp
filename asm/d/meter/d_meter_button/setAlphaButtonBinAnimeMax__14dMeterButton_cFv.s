lbl_8020914C:
/* 8020914C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80209150  7C 08 02 A6 */	mflr r0
/* 80209154  90 01 00 24 */	stw r0, 0x24(r1)
/* 80209158  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020915C  7C 7F 1B 78 */	mr r31, r3
/* 80209160  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80209164  28 03 00 00 */	cmplwi r3, 0
/* 80209168  41 82 00 D0 */	beq lbl_80209238
/* 8020916C  48 04 C6 BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209170  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80209174  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80209178  41 82 00 C0 */	beq lbl_80209238
/* 8020917C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80209180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80209184  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 80209188  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020918C  40 82 00 10 */	bne lbl_8020919C
/* 80209190  88 03 5E 4B */	lbz r0, 0x5e4b(r3)
/* 80209194  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80209198  41 82 00 20 */	beq lbl_802091B8
lbl_8020919C:
/* 8020919C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802091A0  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 802091A4  48 04 C6 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802091A8  38 00 00 05 */	li r0, 5
/* 802091AC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802091B0  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802091B4  48 00 00 2C */	b lbl_802091E0
lbl_802091B8:
/* 802091B8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802091BC  FC 20 00 90 */	fmr f1, f0
/* 802091C0  48 04 C6 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802091C4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 802091C8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 802091CC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802091D0  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 802091D4  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 802091D8  38 A0 00 05 */	li r5, 5
/* 802091DC  48 01 18 C9 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802091E0:
/* 802091E0  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802091E4  48 04 C6 45 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802091E8  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802091EC  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802091F0  40 82 00 48 */	bne lbl_80209238
/* 802091F4  88 1F 04 D5 */	lbz r0, 0x4d5(r31)
/* 802091F8  28 00 00 00 */	cmplwi r0, 0
/* 802091FC  40 82 00 3C */	bne lbl_80209238
/* 80209200  38 00 00 56 */	li r0, 0x56
/* 80209204  90 01 00 08 */	stw r0, 8(r1)
/* 80209208  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020920C  38 81 00 08 */	addi r4, r1, 8
/* 80209210  38 A0 00 00 */	li r5, 0
/* 80209214  38 C0 00 00 */	li r6, 0
/* 80209218  38 E0 00 00 */	li r7, 0
/* 8020921C  FC 20 10 90 */	fmr f1, f2
/* 80209220  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80209224  FC 80 18 90 */	fmr f4, f3
/* 80209228  39 00 00 00 */	li r8, 0
/* 8020922C  48 0A 27 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80209230  38 00 00 01 */	li r0, 1
/* 80209234  98 1F 04 D5 */	stb r0, 0x4d5(r31)
lbl_80209238:
/* 80209238  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020923C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80209240  7C 08 03 A6 */	mtlr r0
/* 80209244  38 21 00 20 */	addi r1, r1, 0x20
/* 80209248  4E 80 00 20 */	blr 
