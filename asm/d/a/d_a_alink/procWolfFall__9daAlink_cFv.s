lbl_8012EFB8:
/* 8012EFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012EFBC  7C 08 02 A6 */	mflr r0
/* 8012EFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012EFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012EFC8  7C 7F 1B 78 */	mr r31, r3
/* 8012EFCC  A8 63 30 12 */	lha r3, 0x3012(r3)
/* 8012EFD0  7C 60 07 35 */	extsh. r0, r3
/* 8012EFD4  40 82 00 18 */	bne lbl_8012EFEC
/* 8012EFD8  38 7F 33 98 */	addi r3, r31, 0x3398
/* 8012EFDC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012EFE0  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 8012EFE4  48 14 17 5D */	bl cLib_chaseF__FPfff
/* 8012EFE8  48 00 00 1C */	b lbl_8012F004
lbl_8012EFEC:
/* 8012EFEC  7C 60 07 35 */	extsh. r0, r3
/* 8012EFF0  40 81 00 14 */	ble lbl_8012F004
/* 8012EFF4  38 00 FF FF */	li r0, -1
/* 8012EFF8  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8012EFFC  38 60 00 01 */	li r3, 1
/* 8012F000  48 00 01 24 */	b lbl_8012F124
lbl_8012F004:
/* 8012F004  38 00 00 04 */	li r0, 4
/* 8012F008  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012F00C  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8012F010  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012F014  41 82 00 14 */	beq lbl_8012F028
/* 8012F018  7F E3 FB 78 */	mr r3, r31
/* 8012F01C  38 80 00 00 */	li r4, 0
/* 8012F020  4B FF A8 5D */	bl checkWolfLandAction__9daAlink_cFi
/* 8012F024  48 00 01 00 */	b lbl_8012F124
lbl_8012F028:
/* 8012F028  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8012F02C  2C 00 00 01 */	cmpwi r0, 1
/* 8012F030  40 82 00 60 */	bne lbl_8012F090
/* 8012F034  A8 7F 30 0A */	lha r3, 0x300a(r31)
/* 8012F038  2C 03 00 00 */	cmpwi r3, 0
/* 8012F03C  40 81 00 10 */	ble lbl_8012F04C
/* 8012F040  38 03 FF FF */	addi r0, r3, -1
/* 8012F044  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 8012F048  48 00 00 68 */	b lbl_8012F0B0
lbl_8012F04C:
/* 8012F04C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8012F050  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012F054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F058  40 81 00 58 */	ble lbl_8012F0B0
/* 8012F05C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8012F060  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 8012F064  7C 03 00 50 */	subf r0, r3, r0
/* 8012F068  7C 03 07 34 */	extsh r3, r0
/* 8012F06C  4B F8 44 29 */	bl getDirectionFromAngle__9daAlink_cFs
/* 8012F070  2C 03 00 00 */	cmpwi r3, 0
/* 8012F074  40 82 00 3C */	bne lbl_8012F0B0
/* 8012F078  7F E3 FB 78 */	mr r3, r31
/* 8012F07C  4B F8 79 B5 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012F080  2C 03 00 00 */	cmpwi r3, 0
/* 8012F084  41 82 00 2C */	beq lbl_8012F0B0
/* 8012F088  38 60 00 01 */	li r3, 1
/* 8012F08C  48 00 00 98 */	b lbl_8012F124
lbl_8012F090:
/* 8012F090  2C 00 00 02 */	cmpwi r0, 2
/* 8012F094  40 82 00 1C */	bne lbl_8012F0B0
/* 8012F098  7F E3 FB 78 */	mr r3, r31
/* 8012F09C  4B F8 79 95 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012F0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8012F0A4  41 82 00 0C */	beq lbl_8012F0B0
/* 8012F0A8  38 60 00 01 */	li r3, 1
/* 8012F0AC  48 00 00 78 */	b lbl_8012F124
lbl_8012F0B0:
/* 8012F0B0  7F E3 FB 78 */	mr r3, r31
/* 8012F0B4  48 00 25 75 */	bl checkWolfRopeJumpHang__9daAlink_cFv
/* 8012F0B8  2C 03 00 00 */	cmpwi r3, 0
/* 8012F0BC  41 82 00 0C */	beq lbl_8012F0C8
/* 8012F0C0  38 60 00 01 */	li r3, 1
/* 8012F0C4  48 00 00 60 */	b lbl_8012F124
lbl_8012F0C8:
/* 8012F0C8  7F E3 FB 78 */	mr r3, r31
/* 8012F0CC  38 80 00 60 */	li r4, 0x60
/* 8012F0D0  4B FF 97 3D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012F0D4  2C 03 00 00 */	cmpwi r3, 0
/* 8012F0D8  40 82 00 48 */	bne lbl_8012F120
/* 8012F0DC  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 8012F0E0  C0 3F 33 C4 */	lfs f1, 0x33c4(r31)
/* 8012F0E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8012F0E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012F0EC  EC 22 00 32 */	fmuls f1, f2, f0
/* 8012F0F0  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlDamFall_c0@ha /* 0x8038F374@ha */
/* 8012F0F4  38 A3 F3 74 */	addi r5, r3, m__23daAlinkHIO_wlDamFall_c0@l /* 0x8038F374@l */
/* 8012F0F8  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8012F0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012F100  40 81 00 20 */	ble lbl_8012F120
/* 8012F104  38 00 00 0C */	li r0, 0xc
/* 8012F108  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012F10C  7F E3 FB 78 */	mr r3, r31
/* 8012F110  38 80 00 60 */	li r4, 0x60
/* 8012F114  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012F118  C0 45 00 3C */	lfs f2, 0x3c(r5)
/* 8012F11C  4B FF A5 BD */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_8012F120:
/* 8012F120  38 60 00 01 */	li r3, 1
lbl_8012F124:
/* 8012F124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F12C  7C 08 03 A6 */	mtlr r0
/* 8012F130  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F134  4E 80 00 20 */	blr 
