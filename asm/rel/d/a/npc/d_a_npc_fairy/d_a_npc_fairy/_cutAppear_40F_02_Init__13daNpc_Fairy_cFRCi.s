lbl_809B5B48:
/* 809B5B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B5B4C  7C 08 02 A6 */	mflr r0
/* 809B5B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B5B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B5B58  93 C1 00 08 */	stw r30, 8(r1)
/* 809B5B5C  7C 7E 1B 78 */	mr r30, r3
/* 809B5B60  80 04 00 00 */	lwz r0, 0(r4)
/* 809B5B64  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B5B68  41 82 00 BC */	beq lbl_809B5C24
/* 809B5B6C  40 80 00 1C */	bge lbl_809B5B88
/* 809B5B70  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B5B74  41 82 00 80 */	beq lbl_809B5BF4
/* 809B5B78  40 80 00 D4 */	bge lbl_809B5C4C
/* 809B5B7C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B5B80  41 82 00 14 */	beq lbl_809B5B94
/* 809B5B84  48 00 00 C8 */	b lbl_809B5C4C
lbl_809B5B88:
/* 809B5B88  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B5B8C  41 82 00 A8 */	beq lbl_809B5C34
/* 809B5B90  48 00 00 BC */	b lbl_809B5C4C
lbl_809B5B94:
/* 809B5B94  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B5B98  2C 00 00 03 */	cmpwi r0, 3
/* 809B5B9C  41 82 00 28 */	beq lbl_809B5BC4
/* 809B5BA0  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B5BA4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B5BA8  4B 78 FC F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B5BAC  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B5BB0  38 00 00 03 */	li r0, 3
/* 809B5BB4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B5BB8  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B5BBC  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B5BC0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B5BC4:
/* 809B5BC4  38 00 00 3D */	li r0, 0x3d
/* 809B5BC8  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5BCC  38 60 00 0A */	li r3, 0xa
/* 809B5BD0  4B 7F 2C 15 */	bl dKy_change_colpat__FUc
/* 809B5BD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B5BD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B5BDC  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5BE0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5BE4  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B5BE8  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B5BEC  4B 8F 9F A9 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B5BF0  48 00 00 5C */	b lbl_809B5C4C
lbl_809B5BF4:
/* 809B5BF4  38 00 00 00 */	li r0, 0
/* 809B5BF8  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B5BFC  38 00 00 64 */	li r0, 0x64
/* 809B5C00  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B5C04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B5C08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B5C0C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5C10  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5C14  4B 8F A2 05 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B5C18  38 60 00 0C */	li r3, 0xc
/* 809B5C1C  4B 7F 2B C9 */	bl dKy_change_colpat__FUc
/* 809B5C20  48 00 00 2C */	b lbl_809B5C4C
lbl_809B5C24:
/* 809B5C24  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B5C28  38 A0 00 00 */	li r5, 0
/* 809B5C2C  4B 79 5F C5 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B5C30  48 00 00 1C */	b lbl_809B5C4C
lbl_809B5C34:
/* 809B5C34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B5C38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B5C3C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B5C40  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B5C44  38 80 00 2D */	li r4, 0x2d
/* 809B5C48  4B 8F A2 95 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B5C4C:
/* 809B5C4C  38 60 00 00 */	li r3, 0
/* 809B5C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B5C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B5C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B5C5C  7C 08 03 A6 */	mtlr r0
/* 809B5C60  38 21 00 10 */	addi r1, r1, 0x10
/* 809B5C64  4E 80 00 20 */	blr 
