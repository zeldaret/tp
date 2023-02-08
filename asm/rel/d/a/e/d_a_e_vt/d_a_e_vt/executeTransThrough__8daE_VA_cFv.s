lbl_807C8A84:
/* 807C8A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C8A88  7C 08 02 A6 */	mflr r0
/* 807C8A8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C8A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C8A94  7C 7F 1B 78 */	mr r31, r3
/* 807C8A98  3C 80 80 7D */	lis r4, lit_3907@ha /* 0x807CECA8@ha */
/* 807C8A9C  38 C4 EC A8 */	addi r6, r4, lit_3907@l /* 0x807CECA8@l */
/* 807C8AA0  80 03 13 20 */	lwz r0, 0x1320(r3)
/* 807C8AA4  2C 00 00 01 */	cmpwi r0, 1
/* 807C8AA8  41 82 00 3C */	beq lbl_807C8AE4
/* 807C8AAC  40 80 00 78 */	bge lbl_807C8B24
/* 807C8AB0  2C 00 00 00 */	cmpwi r0, 0
/* 807C8AB4  40 80 00 08 */	bge lbl_807C8ABC
/* 807C8AB8  48 00 00 6C */	b lbl_807C8B24
lbl_807C8ABC:
/* 807C8ABC  C0 06 00 04 */	lfs f0, 4(r6)
/* 807C8AC0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 807C8AC4  38 80 00 2B */	li r4, 0x2b
/* 807C8AC8  38 A0 00 00 */	li r5, 0
/* 807C8ACC  C0 26 00 48 */	lfs f1, 0x48(r6)
/* 807C8AD0  C0 46 00 08 */	lfs f2, 8(r6)
/* 807C8AD4  4B FF AD 45 */	bl setBck__8daE_VA_cFiUcff
/* 807C8AD8  38 00 00 01 */	li r0, 1
/* 807C8ADC  90 1F 13 20 */	stw r0, 0x1320(r31)
/* 807C8AE0  48 00 00 44 */	b lbl_807C8B24
lbl_807C8AE4:
/* 807C8AE4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C8AE8  38 80 00 01 */	li r4, 1
/* 807C8AEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C8AF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C8AF4  40 82 00 18 */	bne lbl_807C8B0C
/* 807C8AF8  C0 26 00 04 */	lfs f1, 4(r6)
/* 807C8AFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C8B00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C8B04  41 82 00 08 */	beq lbl_807C8B0C
/* 807C8B08  38 80 00 00 */	li r4, 0
lbl_807C8B0C:
/* 807C8B0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C8B10  41 82 00 14 */	beq lbl_807C8B24
/* 807C8B14  7F E3 FB 78 */	mr r3, r31
/* 807C8B18  38 80 00 07 */	li r4, 7
/* 807C8B1C  38 A0 00 00 */	li r5, 0
/* 807C8B20  4B FF AD F9 */	bl setActionMode__8daE_VA_cFii
lbl_807C8B24:
/* 807C8B24  4B 99 69 01 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 807C8B28  2C 03 00 00 */	cmpwi r3, 0
/* 807C8B2C  40 82 00 38 */	bne lbl_807C8B64
/* 807C8B30  80 1F 13 58 */	lwz r0, 0x1358(r31)
/* 807C8B34  2C 00 00 00 */	cmpwi r0, 0
/* 807C8B38  40 82 00 2C */	bne lbl_807C8B64
/* 807C8B3C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 807C8B40  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 807C8B44  80 63 00 00 */	lwz r3, 0(r3)
/* 807C8B48  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807C8B4C  38 80 00 01 */	li r4, 1
/* 807C8B50  4B AE 92 A5 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 807C8B54  7F E3 FB 78 */	mr r3, r31
/* 807C8B58  38 80 00 13 */	li r4, 0x13
/* 807C8B5C  38 A0 00 00 */	li r5, 0
/* 807C8B60  4B FF AD B9 */	bl setActionMode__8daE_VA_cFii
lbl_807C8B64:
/* 807C8B64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C8B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C8B6C  7C 08 03 A6 */	mtlr r0
/* 807C8B70  38 21 00 10 */	addi r1, r1, 0x10
/* 807C8B74  4E 80 00 20 */	blr 
