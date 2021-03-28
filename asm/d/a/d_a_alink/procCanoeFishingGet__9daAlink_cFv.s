lbl_800F6A70:
/* 800F6A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6A74  7C 08 02 A6 */	mflr r0
/* 800F6A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6A7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6A80  93 C1 00 08 */	stw r30, 8(r1)
/* 800F6A84  7C 7F 1B 78 */	mr r31, r3
/* 800F6A88  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800F6A8C  4B FF DD 4D */	bl canoeCommon__9daAlink_cFv
/* 800F6A90  2C 03 00 00 */	cmpwi r3, 0
/* 800F6A94  41 82 00 14 */	beq lbl_800F6AA8
/* 800F6A98  38 00 00 01 */	li r0, 1
/* 800F6A9C  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800F6AA0  38 60 00 01 */	li r3, 1
/* 800F6AA4  48 00 01 30 */	b lbl_800F6BD4
lbl_800F6AA8:
/* 800F6AA8  7F E3 FB 78 */	mr r3, r31
/* 800F6AAC  4B FF D9 E5 */	bl setFishGetFace__9daAlink_cFv
/* 800F6AB0  7F E3 FB 78 */	mr r3, r31
/* 800F6AB4  38 80 00 E3 */	li r4, 0xe3
/* 800F6AB8  4B FB 5A A1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F6ABC  2C 03 00 00 */	cmpwi r3, 0
/* 800F6AC0  41 82 00 6C */	beq lbl_800F6B2C
/* 800F6AC4  7F C3 F3 78 */	mr r3, r30
/* 800F6AC8  48 06 7A 05 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F6ACC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F6AD0  41 82 00 10 */	beq lbl_800F6AE0
/* 800F6AD4  7F E3 FB 78 */	mr r3, r31
/* 800F6AD8  4B FF F9 8D */	bl procCanoeFishingWaitInit__9daAlink_cFv
/* 800F6ADC  48 00 00 F4 */	b lbl_800F6BD0
lbl_800F6AE0:
/* 800F6AE0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F6AE4  C0 02 94 BC */	lfs f0, lit_17593(r2)
/* 800F6AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F6AEC  4C 41 13 82 */	cror 2, 1, 2
/* 800F6AF0  40 82 00 20 */	bne lbl_800F6B10
/* 800F6AF4  38 00 00 01 */	li r0, 1
/* 800F6AF8  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800F6AFC  38 00 00 04 */	li r0, 4
/* 800F6B00  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800F6B04  38 00 00 05 */	li r0, 5
/* 800F6B08  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800F6B0C  48 00 00 C4 */	b lbl_800F6BD0
lbl_800F6B10:
/* 800F6B10  C0 02 93 C4 */	lfs f0, lit_10194(r2)
/* 800F6B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F6B18  4C 41 13 82 */	cror 2, 1, 2
/* 800F6B1C  40 82 00 B4 */	bne lbl_800F6BD0
/* 800F6B20  38 00 00 FE */	li r0, 0xfe
/* 800F6B24  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800F6B28  48 00 00 A8 */	b lbl_800F6BD0
lbl_800F6B2C:
/* 800F6B2C  7F C3 F3 78 */	mr r3, r30
/* 800F6B30  48 06 79 9D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F6B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F6B38  41 82 00 58 */	beq lbl_800F6B90
/* 800F6B3C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800F6B40  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 800F6B44  41 82 00 2C */	beq lbl_800F6B70
/* 800F6B48  7F E3 FB 78 */	mr r3, r31
/* 800F6B4C  38 80 00 E3 */	li r4, 0xe3
/* 800F6B50  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F6B54  4B FB 64 5D */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800F6B58  38 00 00 00 */	li r0, 0
/* 800F6B5C  98 1F 2F C8 */	stb r0, 0x2fc8(r31)
/* 800F6B60  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800F6B64  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 800F6B68  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800F6B6C  48 00 00 64 */	b lbl_800F6BD0
lbl_800F6B70:
/* 800F6B70  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 800F6B74  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800F6B78  41 82 00 58 */	beq lbl_800F6BD0
/* 800F6B7C  38 00 00 00 */	li r0, 0
/* 800F6B80  98 1F 2F C8 */	stb r0, 0x2fc8(r31)
/* 800F6B84  7F E3 FB 78 */	mr r3, r31
/* 800F6B88  4B FF F8 DD */	bl procCanoeFishingWaitInit__9daAlink_cFv
/* 800F6B8C  48 00 00 44 */	b lbl_800F6BD0
lbl_800F6B90:
/* 800F6B90  7F C3 F3 78 */	mr r3, r30
/* 800F6B94  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800F6B98  48 23 18 95 */	bl checkPass__12J3DFrameCtrlFf
/* 800F6B9C  2C 03 00 00 */	cmpwi r3, 0
/* 800F6BA0  41 82 00 10 */	beq lbl_800F6BB0
/* 800F6BA4  38 00 00 05 */	li r0, 5
/* 800F6BA8  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800F6BAC  48 00 00 24 */	b lbl_800F6BD0
lbl_800F6BB0:
/* 800F6BB0  7F C3 F3 78 */	mr r3, r30
/* 800F6BB4  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 800F6BB8  48 23 18 75 */	bl checkPass__12J3DFrameCtrlFf
/* 800F6BBC  2C 03 00 00 */	cmpwi r3, 0
/* 800F6BC0  41 82 00 10 */	beq lbl_800F6BD0
/* 800F6BC4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800F6BC8  60 00 01 00 */	ori r0, r0, 0x100
/* 800F6BCC  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800F6BD0:
/* 800F6BD0  38 60 00 01 */	li r3, 1
lbl_800F6BD4:
/* 800F6BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6BD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F6BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6BE0  7C 08 03 A6 */	mtlr r0
/* 800F6BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6BE8  4E 80 00 20 */	blr 
