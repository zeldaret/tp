lbl_8012EB94:
/* 8012EB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012EB98  7C 08 02 A6 */	mflr r0
/* 8012EB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012EBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012EBA4  93 C1 00 08 */	stw r30, 8(r1)
/* 8012EBA8  7C 7F 1B 78 */	mr r31, r3
/* 8012EBAC  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 8012EBB0  28 00 00 27 */	cmplwi r0, 0x27
/* 8012EBB4  41 82 00 6C */	beq lbl_8012EC20
/* 8012EBB8  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8012EBBC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012EBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012EBC4  40 81 00 3C */	ble lbl_8012EC00
/* 8012EBC8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8012EBCC  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 8012EBD0  7C 03 00 50 */	subf r0, r3, r0
/* 8012EBD4  7C 03 07 34 */	extsh r3, r0
/* 8012EBD8  4B F8 48 BD */	bl getDirectionFromAngle__9daAlink_cFs
/* 8012EBDC  2C 03 00 01 */	cmpwi r3, 1
/* 8012EBE0  40 82 00 20 */	bne lbl_8012EC00
/* 8012EBE4  38 7F 33 98 */	addi r3, r31, 0x3398
/* 8012EBE8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012EBEC  C0 42 93 F8 */	lfs f2, lit_13700(r2)
/* 8012EBF0  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 8012EBF4  EC 42 00 32 */	fmuls f2, f2, f0
/* 8012EBF8  48 14 1B 49 */	bl cLib_chaseF__FPfff
/* 8012EBFC  48 00 00 24 */	b lbl_8012EC20
lbl_8012EC00:
/* 8012EC00  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8012EC04  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8012EC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012EC0C  41 81 00 14 */	bgt lbl_8012EC20
/* 8012EC10  38 7F 33 98 */	addi r3, r31, 0x3398
/* 8012EC14  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012EC18  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 8012EC1C  48 14 1B 25 */	bl cLib_chaseF__FPfff
lbl_8012EC20:
/* 8012EC20  38 00 00 07 */	li r0, 7
/* 8012EC24  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012EC28  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8012EC2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012EC30  41 82 00 14 */	beq lbl_8012EC44
/* 8012EC34  7F E3 FB 78 */	mr r3, r31
/* 8012EC38  38 80 00 00 */	li r4, 0
/* 8012EC3C  4B FF AC 41 */	bl checkWolfLandAction__9daAlink_cFi
/* 8012EC40  48 00 01 78 */	b lbl_8012EDB8
lbl_8012EC44:
/* 8012EC44  7F E3 FB 78 */	mr r3, r31
/* 8012EC48  4B F8 7D E9 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 8012EC4C  2C 03 00 00 */	cmpwi r3, 0
/* 8012EC50  41 82 00 0C */	beq lbl_8012EC5C
/* 8012EC54  38 60 00 01 */	li r3, 1
/* 8012EC58  48 00 01 60 */	b lbl_8012EDB8
lbl_8012EC5C:
/* 8012EC5C  7F E3 FB 78 */	mr r3, r31
/* 8012EC60  48 00 29 C9 */	bl checkWolfRopeJumpHang__9daAlink_cFv
/* 8012EC64  2C 03 00 00 */	cmpwi r3, 0
/* 8012EC68  41 82 00 0C */	beq lbl_8012EC74
/* 8012EC6C  38 60 00 01 */	li r3, 1
/* 8012EC70  48 00 01 48 */	b lbl_8012EDB8
lbl_8012EC74:
/* 8012EC74  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8012EC78  7F E3 FB 78 */	mr r3, r31
/* 8012EC7C  38 80 00 60 */	li r4, 0x60
/* 8012EC80  4B FF 9B 8D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012EC84  2C 03 00 00 */	cmpwi r3, 0
/* 8012EC88  40 82 00 4C */	bne lbl_8012ECD4
/* 8012EC8C  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 8012EC90  C0 3F 33 C4 */	lfs f1, 0x33c4(r31)
/* 8012EC94  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8012EC98  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012EC9C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8012ECA0  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlDamFall_c0@ha /* 0x8038F374@ha */
/* 8012ECA4  38 A3 F3 74 */	addi r5, r3, m__23daAlinkHIO_wlDamFall_c0@l /* 0x8038F374@l */
/* 8012ECA8  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 8012ECAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012ECB0  40 81 00 24 */	ble lbl_8012ECD4
/* 8012ECB4  38 00 00 0C */	li r0, 0xc
/* 8012ECB8  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012ECBC  7F E3 FB 78 */	mr r3, r31
/* 8012ECC0  38 80 00 60 */	li r4, 0x60
/* 8012ECC4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012ECC8  C0 45 00 3C */	lfs f2, 0x3c(r5)
/* 8012ECCC  4B FF AA 0D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8012ECD0  48 00 00 E4 */	b lbl_8012EDB4
lbl_8012ECD4:
/* 8012ECD4  7F E3 FB 78 */	mr r3, r31
/* 8012ECD8  38 80 00 04 */	li r4, 4
/* 8012ECDC  4B FF 9B 31 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012ECE0  2C 03 00 00 */	cmpwi r3, 0
/* 8012ECE4  41 82 00 84 */	beq lbl_8012ED68
/* 8012ECE8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8012ECEC  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8012ECF0  FC 00 00 50 */	fneg f0, f0
/* 8012ECF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012ECF8  40 80 00 28 */	bge lbl_8012ED20
/* 8012ECFC  38 00 00 0C */	li r0, 0xc
/* 8012ED00  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012ED04  7F E3 FB 78 */	mr r3, r31
/* 8012ED08  38 80 00 05 */	li r4, 5
/* 8012ED0C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012ED10  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012ED14  38 A5 00 28 */	addi r5, r5, 0x28
/* 8012ED18  4B FF AB 31 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012ED1C  48 00 00 98 */	b lbl_8012EDB4
lbl_8012ED20:
/* 8012ED20  7F C3 F3 78 */	mr r3, r30
/* 8012ED24  48 02 F7 A9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012ED28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012ED2C  41 82 00 88 */	beq lbl_8012EDB4
/* 8012ED30  38 00 00 0C */	li r0, 0xc
/* 8012ED34  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8012ED38  7F E3 FB 78 */	mr r3, r31
/* 8012ED3C  38 80 00 05 */	li r4, 5
/* 8012ED40  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8012ED44  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012ED48  38 C5 F0 A8 */	addi r6, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012ED4C  C0 46 00 30 */	lfs f2, 0x30(r6)
/* 8012ED50  A8 A6 00 28 */	lha r5, 0x28(r6)
/* 8012ED54  C0 66 00 34 */	lfs f3, 0x34(r6)
/* 8012ED58  4B FF A9 AD */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8012ED5C  38 00 00 00 */	li r0, 0
/* 8012ED60  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012ED64  48 00 00 50 */	b lbl_8012EDB4
lbl_8012ED68:
/* 8012ED68  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8012ED6C  2C 00 00 00 */	cmpwi r0, 0
/* 8012ED70  40 82 00 44 */	bne lbl_8012EDB4
/* 8012ED74  7F E3 FB 78 */	mr r3, r31
/* 8012ED78  38 80 00 05 */	li r4, 5
/* 8012ED7C  4B FF 9A 91 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8012ED80  2C 03 00 00 */	cmpwi r3, 0
/* 8012ED84  41 82 00 30 */	beq lbl_8012EDB4
/* 8012ED88  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8012ED8C  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8012ED90  FC 00 00 50 */	fneg f0, f0
/* 8012ED94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012ED98  40 80 00 1C */	bge lbl_8012EDB4
/* 8012ED9C  38 00 00 01 */	li r0, 1
/* 8012EDA0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012EDA4  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 8012EDA8  38 63 F0 A8 */	addi r3, r3, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 8012EDAC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8012EDB0  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_8012EDB4:
/* 8012EDB4  38 60 00 01 */	li r3, 1
lbl_8012EDB8:
/* 8012EDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012EDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012EDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012EDC4  7C 08 03 A6 */	mtlr r0
/* 8012EDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8012EDCC  4E 80 00 20 */	blr 
