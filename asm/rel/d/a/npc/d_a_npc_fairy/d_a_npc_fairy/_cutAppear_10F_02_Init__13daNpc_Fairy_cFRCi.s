lbl_809B4AD8:
/* 809B4AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B4ADC  7C 08 02 A6 */	mflr r0
/* 809B4AE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B4AE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B4AE8  93 C1 00 08 */	stw r30, 8(r1)
/* 809B4AEC  7C 7E 1B 78 */	mr r30, r3
/* 809B4AF0  80 04 00 00 */	lwz r0, 0(r4)
/* 809B4AF4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B4AF8  41 82 00 BC */	beq lbl_809B4BB4
/* 809B4AFC  40 80 00 1C */	bge lbl_809B4B18
/* 809B4B00  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B4B04  41 82 00 80 */	beq lbl_809B4B84
/* 809B4B08  40 80 00 D4 */	bge lbl_809B4BDC
/* 809B4B0C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4B10  41 82 00 14 */	beq lbl_809B4B24
/* 809B4B14  48 00 00 C8 */	b lbl_809B4BDC
lbl_809B4B18:
/* 809B4B18  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B4B1C  41 82 00 A8 */	beq lbl_809B4BC4
/* 809B4B20  48 00 00 BC */	b lbl_809B4BDC
lbl_809B4B24:
/* 809B4B24  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B4B28  2C 00 00 00 */	cmpwi r0, 0
/* 809B4B2C  41 82 00 28 */	beq lbl_809B4B54
/* 809B4B30  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B4B34  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B4B38  4B 79 0D 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B4B3C  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B4B40  38 00 00 00 */	li r0, 0
/* 809B4B44  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B4B48  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B4B4C  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B4B50  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B4B54:
/* 809B4B54  38 00 00 3D */	li r0, 0x3d
/* 809B4B58  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B4B5C  38 60 00 0A */	li r3, 0xa
/* 809B4B60  4B 7F 3C 85 */	bl dKy_change_colpat__FUc
/* 809B4B64  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4B68  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B4B70  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B4B74  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B4B78  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B4B7C  4B 8F B0 19 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B4B80  48 00 00 5C */	b lbl_809B4BDC
lbl_809B4B84:
/* 809B4B84  38 00 00 00 */	li r0, 0
/* 809B4B88  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B4B8C  38 00 00 78 */	li r0, 0x78
/* 809B4B90  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B4B94  38 60 00 0C */	li r3, 0xc
/* 809B4B98  4B 7F 3C 4D */	bl dKy_change_colpat__FUc
/* 809B4B9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4BA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4BA4  80 63 00 00 */	lwz r3, 0(r3)
/* 809B4BA8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B4BAC  4B 8F B2 6D */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B4BB0  48 00 00 2C */	b lbl_809B4BDC
lbl_809B4BB4:
/* 809B4BB4  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B4BB8  38 A0 00 00 */	li r5, 0
/* 809B4BBC  4B 79 70 35 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B4BC0  48 00 00 1C */	b lbl_809B4BDC
lbl_809B4BC4:
/* 809B4BC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4BC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4BCC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B4BD0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B4BD4  38 80 00 2D */	li r4, 0x2d
/* 809B4BD8  4B 8F B3 05 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B4BDC:
/* 809B4BDC  38 60 00 00 */	li r3, 0
/* 809B4BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B4BE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B4BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B4BEC  7C 08 03 A6 */	mtlr r0
/* 809B4BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809B4BF4  4E 80 00 20 */	blr 
