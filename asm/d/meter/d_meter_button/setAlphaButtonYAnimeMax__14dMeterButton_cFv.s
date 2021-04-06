lbl_80207DB0:
/* 80207DB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80207DB4  7C 08 02 A6 */	mflr r0
/* 80207DB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80207DBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207DC0  7C 7F 1B 78 */	mr r31, r3
/* 80207DC4  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80207DC8  48 04 DA 61 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207DCC  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207DD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207DD4  41 82 00 B4 */	beq lbl_80207E88
/* 80207DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80207DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80207DE0  88 03 5E 62 */	lbz r0, 0x5e62(r3)
/* 80207DE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207DE8  41 82 00 20 */	beq lbl_80207E08
/* 80207DEC  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207DF0  FC 20 00 90 */	fmr f1, f0
/* 80207DF4  48 04 D9 DD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207DF8  38 00 00 05 */	li r0, 5
/* 80207DFC  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207E00  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207E04  48 00 00 2C */	b lbl_80207E30
lbl_80207E08:
/* 80207E08  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207E0C  FC 20 00 90 */	fmr f1, f0
/* 80207E10  48 04 D9 C1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207E14  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80207E18  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80207E1C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207E20  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80207E24  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 80207E28  38 A0 00 05 */	li r5, 5
/* 80207E2C  48 01 2C 79 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207E30:
/* 80207E30  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207E34  48 04 D9 F5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207E38  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207E3C  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80207E40  40 82 00 48 */	bne lbl_80207E88
/* 80207E44  88 1F 04 C8 */	lbz r0, 0x4c8(r31)
/* 80207E48  28 00 00 00 */	cmplwi r0, 0
/* 80207E4C  40 82 00 3C */	bne lbl_80207E88
/* 80207E50  38 00 00 56 */	li r0, 0x56
/* 80207E54  90 01 00 08 */	stw r0, 8(r1)
/* 80207E58  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207E5C  38 81 00 08 */	addi r4, r1, 8
/* 80207E60  38 A0 00 00 */	li r5, 0
/* 80207E64  38 C0 00 00 */	li r6, 0
/* 80207E68  38 E0 00 00 */	li r7, 0
/* 80207E6C  FC 20 10 90 */	fmr f1, f2
/* 80207E70  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80207E74  FC 80 18 90 */	fmr f4, f3
/* 80207E78  39 00 00 00 */	li r8, 0
/* 80207E7C  48 0A 3B 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207E80  38 00 00 01 */	li r0, 1
/* 80207E84  98 1F 04 C8 */	stb r0, 0x4c8(r31)
lbl_80207E88:
/* 80207E88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80207E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207E90  7C 08 03 A6 */	mtlr r0
/* 80207E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80207E98  4E 80 00 20 */	blr 
