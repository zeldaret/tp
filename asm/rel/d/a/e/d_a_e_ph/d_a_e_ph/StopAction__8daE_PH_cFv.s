lbl_8073FBDC:
/* 8073FBDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073FBE0  7C 08 02 A6 */	mflr r0
/* 8073FBE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073FBE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8073FBEC  4B C2 25 F1 */	bl _savegpr_29
/* 8073FBF0  7C 7D 1B 78 */	mr r29, r3
/* 8073FBF4  3C 80 80 74 */	lis r4, lit_3767@ha /* 0x80741BF4@ha */
/* 8073FBF8  3B E4 1B F4 */	addi r31, r4, lit_3767@l /* 0x80741BF4@l */
/* 8073FBFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073FC00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073FC04  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8073FC08  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 8073FC0C  2C 00 00 01 */	cmpwi r0, 1
/* 8073FC10  41 82 00 F4 */	beq lbl_8073FD04
/* 8073FC14  40 80 00 10 */	bge lbl_8073FC24
/* 8073FC18  2C 00 00 00 */	cmpwi r0, 0
/* 8073FC1C  40 80 00 14 */	bge lbl_8073FC30
/* 8073FC20  48 00 01 38 */	b lbl_8073FD58
lbl_8073FC24:
/* 8073FC24  2C 00 00 03 */	cmpwi r0, 3
/* 8073FC28  40 80 01 30 */	bge lbl_8073FD58
/* 8073FC2C  48 00 01 04 */	b lbl_8073FD30
lbl_8073FC30:
/* 8073FC30  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 8073FC34  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073FC38  41 82 00 0C */	beq lbl_8073FC44
/* 8073FC3C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8073FC40  40 82 00 20 */	bne lbl_8073FC60
lbl_8073FC44:
/* 8073FC44  A8 9D 06 66 */	lha r4, 0x666(r29)
/* 8073FC48  A8 7D 06 12 */	lha r3, 0x612(r29)
/* 8073FC4C  38 03 10 00 */	addi r0, r3, 0x1000
/* 8073FC50  7C 00 07 34 */	extsh r0, r0
/* 8073FC54  7C 04 02 14 */	add r0, r4, r0
/* 8073FC58  B0 1D 06 66 */	sth r0, 0x666(r29)
/* 8073FC5C  48 00 00 1C */	b lbl_8073FC78
lbl_8073FC60:
/* 8073FC60  A8 9D 06 66 */	lha r4, 0x666(r29)
/* 8073FC64  A8 7D 06 12 */	lha r3, 0x612(r29)
/* 8073FC68  38 03 05 00 */	addi r0, r3, 0x500
/* 8073FC6C  7C 00 07 34 */	extsh r0, r0
/* 8073FC70  7C 04 02 14 */	add r0, r4, r0
/* 8073FC74  B0 1D 06 66 */	sth r0, 0x666(r29)
lbl_8073FC78:
/* 8073FC78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070462@ha */
/* 8073FC7C  38 03 04 62 */	addi r0, r3, 0x0462 /* 0x00070462@l */
/* 8073FC80  90 01 00 08 */	stw r0, 8(r1)
/* 8073FC84  38 7D 06 74 */	addi r3, r29, 0x674
/* 8073FC88  38 81 00 08 */	addi r4, r1, 8
/* 8073FC8C  A8 BD 06 12 */	lha r5, 0x612(r29)
/* 8073FC90  38 A5 05 00 */	addi r5, r5, 0x500
/* 8073FC94  38 C0 FF FF */	li r6, -1
/* 8073FC98  81 9D 06 74 */	lwz r12, 0x674(r29)
/* 8073FC9C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8073FCA0  7D 89 03 A6 */	mtctr r12
/* 8073FCA4  4E 80 04 21 */	bctrl 
/* 8073FCA8  A8 1D 05 AE */	lha r0, 0x5ae(r29)
/* 8073FCAC  2C 00 00 00 */	cmpwi r0, 0
/* 8073FCB0  40 82 00 18 */	bne lbl_8073FCC8
/* 8073FCB4  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8073FCB8  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 8073FCBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073FCC0  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 8073FCC4  4B B2 FD 79 */	bl cLib_addCalc2__FPffff
lbl_8073FCC8:
/* 8073FCC8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073FCCC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073FCD0  41 82 00 88 */	beq lbl_8073FD58
/* 8073FCD4  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 8073FCD8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073FCDC  40 82 00 7C */	bne lbl_8073FD58
/* 8073FCE0  88 7D 05 B0 */	lbz r3, 0x5b0(r29)
/* 8073FCE4  38 03 00 01 */	addi r0, r3, 1
/* 8073FCE8  98 1D 05 B0 */	stb r0, 0x5b0(r29)
/* 8073FCEC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8073FCF0  D0 1D 06 40 */	stfs f0, 0x640(r29)
/* 8073FCF4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8073FCF8  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 8073FCFC  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 8073FD00  48 00 00 58 */	b lbl_8073FD58
lbl_8073FD04:
/* 8073FD04  4B FF EC 21 */	bl DownBoots__8daE_PH_cFv
/* 8073FD08  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073FD0C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073FD10  41 82 00 48 */	beq lbl_8073FD58
/* 8073FD14  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 8073FD18  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073FD1C  40 82 00 3C */	bne lbl_8073FD58
/* 8073FD20  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8073FD24  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 8073FD28  D0 1D 06 20 */	stfs f0, 0x620(r29)
/* 8073FD2C  48 00 00 2C */	b lbl_8073FD58
lbl_8073FD30:
/* 8073FD30  4B FF ED 21 */	bl UpBoots__8daE_PH_cFv
/* 8073FD34  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073FD38  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073FD3C  41 82 00 1C */	beq lbl_8073FD58
/* 8073FD40  80 1D 06 28 */	lwz r0, 0x628(r29)
/* 8073FD44  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073FD48  40 82 00 10 */	bne lbl_8073FD58
/* 8073FD4C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8073FD50  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 8073FD54  D0 1D 06 20 */	stfs f0, 0x620(r29)
lbl_8073FD58:
/* 8073FD58  39 61 00 20 */	addi r11, r1, 0x20
/* 8073FD5C  4B C2 24 CD */	bl _restgpr_29
/* 8073FD60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073FD64  7C 08 03 A6 */	mtlr r0
/* 8073FD68  38 21 00 20 */	addi r1, r1, 0x20
/* 8073FD6C  4E 80 00 20 */	blr 
