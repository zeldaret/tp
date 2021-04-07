lbl_802071DC:
/* 802071DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802071E0  7C 08 02 A6 */	mflr r0
/* 802071E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802071E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802071EC  7C 7F 1B 78 */	mr r31, r3
/* 802071F0  80 63 00 24 */	lwz r3, 0x24(r3)
/* 802071F4  48 04 E6 35 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802071F8  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 802071FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207200  41 82 00 B4 */	beq lbl_802072B4
/* 80207204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80207208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020720C  88 03 5E 43 */	lbz r0, 0x5e43(r3)
/* 80207210  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207214  41 82 00 20 */	beq lbl_80207234
/* 80207218  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8020721C  FC 20 00 90 */	fmr f1, f0
/* 80207220  48 04 E5 B1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207224  38 00 00 05 */	li r0, 5
/* 80207228  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8020722C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207230  48 00 00 2C */	b lbl_8020725C
lbl_80207234:
/* 80207234  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80207238  FC 20 00 90 */	fmr f1, f0
/* 8020723C  48 04 E5 95 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207240  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80207244  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80207248  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8020724C  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80207250  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80207254  38 A0 00 05 */	li r5, 5
/* 80207258  48 01 38 4D */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_8020725C:
/* 8020725C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80207260  48 04 E5 C9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207264  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207268  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8020726C  40 82 00 48 */	bne lbl_802072B4
/* 80207270  88 1F 04 C1 */	lbz r0, 0x4c1(r31)
/* 80207274  28 00 00 00 */	cmplwi r0, 0
/* 80207278  40 82 00 3C */	bne lbl_802072B4
/* 8020727C  38 00 00 56 */	li r0, 0x56
/* 80207280  90 01 00 08 */	stw r0, 8(r1)
/* 80207284  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207288  38 81 00 08 */	addi r4, r1, 8
/* 8020728C  38 A0 00 00 */	li r5, 0
/* 80207290  38 C0 00 00 */	li r6, 0
/* 80207294  38 E0 00 00 */	li r7, 0
/* 80207298  FC 20 10 90 */	fmr f1, f2
/* 8020729C  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 802072A0  FC 80 18 90 */	fmr f4, f3
/* 802072A4  39 00 00 00 */	li r8, 0
/* 802072A8  48 0A 46 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802072AC  38 00 00 01 */	li r0, 1
/* 802072B0  98 1F 04 C1 */	stb r0, 0x4c1(r31)
lbl_802072B4:
/* 802072B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802072B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802072BC  7C 08 03 A6 */	mtlr r0
/* 802072C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802072C4  4E 80 00 20 */	blr 
