lbl_80104AA0:
/* 80104AA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80104AA4  7C 08 02 A6 */	mflr r0
/* 80104AA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80104AAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80104AB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80104AB4  7C 7F 1B 78 */	mr r31, r3
/* 80104AB8  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 80104ABC  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 80104AC0  2C 00 00 00 */	cmpwi r0, 0
/* 80104AC4  40 82 00 10 */	bne lbl_80104AD4
/* 80104AC8  38 80 00 4C */	li r4, 0x4c
/* 80104ACC  4B FA E7 85 */	bl setDoStatus__9daAlink_cFUc
/* 80104AD0  48 00 00 3C */	b lbl_80104B0C
lbl_80104AD4:
/* 80104AD4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104AD8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80104ADC  41 82 00 30 */	beq lbl_80104B0C
/* 80104AE0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80104AE4  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 80104AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80104AEC  40 81 00 20 */	ble lbl_80104B0C
/* 80104AF0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104AF4  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80104AF8  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80104AFC  38 60 00 01 */	li r3, 1
/* 80104B00  88 1F 2D 73 */	lbz r0, 0x2d73(r31)
/* 80104B04  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80104B08  98 1F 2D 73 */	stb r0, 0x2d73(r31)
lbl_80104B0C:
/* 80104B0C  38 00 00 07 */	li r0, 7
/* 80104B10  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80104B14  38 00 00 1E */	li r0, 0x1e
/* 80104B18  B0 1F 30 00 */	sth r0, 0x3000(r31)
/* 80104B1C  7F E3 FB 78 */	mr r3, r31
/* 80104B20  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80104B24  3C 80 80 39 */	lis r4, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80104B28  38 84 ED 2C */	addi r4, r4, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104B2C  C0 44 00 80 */	lfs f2, 0x80(r4)
/* 80104B30  4B FA ED F5 */	bl setNormalSpeedF__9daAlink_cFff
/* 80104B34  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 80104B38  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80104B3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80104B40  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80104B44  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 80104B48  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80104B4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80104B50  40 81 00 08 */	ble lbl_80104B58
/* 80104B54  D0 1F 34 78 */	stfs f0, 0x3478(r31)
lbl_80104B58:
/* 80104B58  7F C3 F3 78 */	mr r3, r30
/* 80104B5C  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 80104B60  48 22 38 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80104B64  2C 03 00 00 */	cmpwi r3, 0
/* 80104B68  41 82 00 38 */	beq lbl_80104BA0
/* 80104B6C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80104B70  2C 00 00 00 */	cmpwi r0, 0
/* 80104B74  41 82 00 2C */	beq lbl_80104BA0
/* 80104B78  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80104B7C  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 80104B80  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80104B84  D0 01 00 08 */	stfs f0, 8(r1)
/* 80104B88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80104B8C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80104B90  38 61 00 08 */	addi r3, r1, 8
/* 80104B94  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 80104B98  38 80 00 00 */	li r4, 0
/* 80104B9C  4B F1 AC E1 */	bl fopKyM_createWpillar__FPC4cXyzfi
lbl_80104BA0:
/* 80104BA0  C0 7F 1A 08 */	lfs f3, 0x1a08(r31)
/* 80104BA4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80104BA8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 80104BAC  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 80104BB0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80104BB4  EC 02 08 28 */	fsubs f0, f2, f1
/* 80104BB8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80104BBC  40 81 00 0C */	ble lbl_80104BC8
/* 80104BC0  EC 01 18 2A */	fadds f0, f1, f3
/* 80104BC4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80104BC8:
/* 80104BC8  7F C3 F3 78 */	mr r3, r30
/* 80104BCC  48 05 99 01 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80104BD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80104BD4  41 82 00 60 */	beq lbl_80104C34
/* 80104BD8  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80104BDC  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104BE0  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80104BE4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80104BE8  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80104BEC  2C 00 00 00 */	cmpwi r0, 0
/* 80104BF0  41 82 00 1C */	beq lbl_80104C0C
/* 80104BF4  38 00 28 00 */	li r0, 0x2800
/* 80104BF8  B0 1F 30 80 */	sth r0, 0x3080(r31)
/* 80104BFC  A8 1F 30 80 */	lha r0, 0x3080(r31)
/* 80104C00  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 80104C04  38 00 00 01 */	li r0, 1
/* 80104C08  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_80104C0C:
/* 80104C0C  7F E3 FB 78 */	mr r3, r31
/* 80104C10  A8 1F 30 80 */	lha r0, 0x3080(r31)
/* 80104C14  7C 00 00 D0 */	neg r0, r0
/* 80104C18  7C 04 07 34 */	extsh r4, r0
/* 80104C1C  38 A0 00 00 */	li r5, 0
/* 80104C20  38 C0 00 00 */	li r6, 0
/* 80104C24  4B FA 8F 55 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80104C28  7F E3 FB 78 */	mr r3, r31
/* 80104C2C  4B FF FA 45 */	bl procSwimMoveInit__9daAlink_cFv
/* 80104C30  48 00 00 08 */	b lbl_80104C38
lbl_80104C34:
/* 80104C34  38 60 00 01 */	li r3, 1
lbl_80104C38:
/* 80104C38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80104C3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80104C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80104C44  7C 08 03 A6 */	mtlr r0
/* 80104C48  38 21 00 20 */	addi r1, r1, 0x20
/* 80104C4C  4E 80 00 20 */	blr 
