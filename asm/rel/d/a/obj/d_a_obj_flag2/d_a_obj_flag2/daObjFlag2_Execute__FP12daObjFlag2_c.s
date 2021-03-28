lbl_80BEDDC0:
/* 80BEDDC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BEDDC4  7C 08 02 A6 */	mflr r0
/* 80BEDDC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BEDDCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BEDDD0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BEDDD4  7C 7E 1B 78 */	mr r30, r3
/* 80BEDDD8  3C 60 80 BF */	lis r3, M_attr__12daObjFlag2_c@ha
/* 80BEDDDC  3B E3 E0 DC */	addi r31, r3, M_attr__12daObjFlag2_c@l
/* 80BEDDE0  88 1E 10 AC */	lbz r0, 0x10ac(r30)
/* 80BEDDE4  28 00 00 00 */	cmplwi r0, 0
/* 80BEDDE8  40 82 00 0C */	bne lbl_80BEDDF4
/* 80BEDDEC  38 60 00 01 */	li r3, 1
/* 80BEDDF0  48 00 00 A8 */	b lbl_80BEDE98
lbl_80BEDDF4:
/* 80BEDDF4  38 7E 10 A0 */	addi r3, r30, 0x10a0
/* 80BEDDF8  38 81 00 10 */	addi r4, r1, 0x10
/* 80BEDDFC  38 A1 00 08 */	addi r5, r1, 8
/* 80BEDE00  4B 46 D4 F8 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BEDE04  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BEDE08  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BEDE0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BEDE10  40 81 00 50 */	ble lbl_80BEDE60
/* 80BEDE14  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800BE@ha */
/* 80BEDE18  38 03 00 BE */	addi r0, r3, 0x00BE /* 0x000800BE@l */
/* 80BEDE1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BEDE20  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80BEDE24  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BEDE28  4B 77 42 84 */	b __cvt_fp2unsigned
/* 80BEDE2C  7C 66 1B 78 */	mr r6, r3
/* 80BEDE30  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BEDE34  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BEDE38  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEDE3C  38 81 00 0C */	addi r4, r1, 0xc
/* 80BEDE40  38 BE 10 A0 */	addi r5, r30, 0x10a0
/* 80BEDE44  38 E0 00 00 */	li r7, 0
/* 80BEDE48  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80BEDE4C  FC 40 08 90 */	fmr f2, f1
/* 80BEDE50  C0 7F 01 08 */	lfs f3, 0x108(r31)
/* 80BEDE54  FC 80 18 90 */	fmr f4, f3
/* 80BEDE58  39 00 00 00 */	li r8, 0
/* 80BEDE5C  4B 6B E6 B0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BEDE60:
/* 80BEDE60  38 7E 07 00 */	addi r3, r30, 0x700
/* 80BEDE64  4B FF EF 35 */	bl execute__11FlagCloth_cFv
/* 80BEDE68  38 61 00 1C */	addi r3, r1, 0x1c
/* 80BEDE6C  38 9E 07 00 */	addi r4, r30, 0x700
/* 80BEDE70  48 00 02 49 */	bl getTargetPos__11FlagCloth_cFv
/* 80BEDE74  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BEDE78  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80BEDE7C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BEDE80  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80BEDE84  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BEDE88  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80BEDE8C  7F C3 F3 78 */	mr r3, r30
/* 80BEDE90  4B FF F5 BD */	bl setCollision__12daObjFlag2_cFv
/* 80BEDE94  38 60 00 01 */	li r3, 1
lbl_80BEDE98:
/* 80BEDE98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BEDE9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BEDEA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BEDEA4  7C 08 03 A6 */	mtlr r0
/* 80BEDEA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BEDEAC  4E 80 00 20 */	blr 
