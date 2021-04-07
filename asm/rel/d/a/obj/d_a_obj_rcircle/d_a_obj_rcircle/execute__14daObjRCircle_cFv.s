lbl_80CB8B28:
/* 80CB8B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8B2C  7C 08 02 A6 */	mflr r0
/* 80CB8B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB8B38  7C 7F 1B 78 */	mr r31, r3
/* 80CB8B3C  88 03 05 A8 */	lbz r0, 0x5a8(r3)
/* 80CB8B40  28 00 00 00 */	cmplwi r0, 0
/* 80CB8B44  41 82 00 40 */	beq lbl_80CB8B84
/* 80CB8B48  38 80 00 01 */	li r4, 1
/* 80CB8B4C  88 1F 05 79 */	lbz r0, 0x579(r31)
/* 80CB8B50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CB8B54  40 82 00 1C */	bne lbl_80CB8B70
/* 80CB8B58  3C 60 80 CC */	lis r3, lit_3702@ha /* 0x80CB8D04@ha */
/* 80CB8B5C  C0 23 8D 04 */	lfs f1, lit_3702@l(r3)  /* 0x80CB8D04@l */
/* 80CB8B60  C0 1F 05 80 */	lfs f0, 0x580(r31)
/* 80CB8B64  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CB8B68  41 82 00 08 */	beq lbl_80CB8B70
/* 80CB8B6C  38 80 00 00 */	li r4, 0
lbl_80CB8B70:
/* 80CB8B70  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CB8B74  41 82 00 48 */	beq lbl_80CB8BBC
/* 80CB8B78  7F E3 FB 78 */	mr r3, r31
/* 80CB8B7C  4B 36 11 01 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80CB8B80  48 00 00 3C */	b lbl_80CB8BBC
lbl_80CB8B84:
/* 80CB8B84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CB8B88  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB8B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB8B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB8B94  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CB8B98  7C 05 07 74 */	extsb r5, r0
/* 80CB8B9C  4B 37 C7 C5 */	bl isSwitch__10dSv_info_cCFii
/* 80CB8BA0  2C 03 00 00 */	cmpwi r3, 0
/* 80CB8BA4  41 82 00 18 */	beq lbl_80CB8BBC
/* 80CB8BA8  38 00 00 01 */	li r0, 1
/* 80CB8BAC  98 1F 05 A8 */	stb r0, 0x5a8(r31)
/* 80CB8BB0  3C 60 80 CC */	lis r3, lit_3701@ha /* 0x80CB8D00@ha */
/* 80CB8BB4  C0 03 8D 00 */	lfs f0, lit_3701@l(r3)  /* 0x80CB8D00@l */
/* 80CB8BB8  D0 1F 05 80 */	stfs f0, 0x580(r31)
lbl_80CB8BBC:
/* 80CB8BBC  38 7F 05 8C */	addi r3, r31, 0x58c
/* 80CB8BC0  4B 35 48 69 */	bl play__14mDoExt_baseAnmFv
/* 80CB8BC4  38 7F 05 74 */	addi r3, r31, 0x574
/* 80CB8BC8  4B 35 48 61 */	bl play__14mDoExt_baseAnmFv
/* 80CB8BCC  38 60 00 01 */	li r3, 1
/* 80CB8BD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB8BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8BD8  7C 08 03 A6 */	mtlr r0
/* 80CB8BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8BE0  4E 80 00 20 */	blr 
