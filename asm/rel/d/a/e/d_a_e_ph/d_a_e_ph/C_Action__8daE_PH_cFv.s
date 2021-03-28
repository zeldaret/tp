lbl_8073EB64:
/* 8073EB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073EB68  7C 08 02 A6 */	mflr r0
/* 8073EB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073EB70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073EB74  93 C1 00 08 */	stw r30, 8(r1)
/* 8073EB78  7C 7F 1B 78 */	mr r31, r3
/* 8073EB7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8073EB80  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8073EB84  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8073EB88  88 83 05 B0 */	lbz r4, 0x5b0(r3)
/* 8073EB8C  2C 04 00 01 */	cmpwi r4, 1
/* 8073EB90  41 82 00 BC */	beq lbl_8073EC4C
/* 8073EB94  40 80 00 10 */	bge lbl_8073EBA4
/* 8073EB98  2C 04 00 00 */	cmpwi r4, 0
/* 8073EB9C  40 80 00 14 */	bge lbl_8073EBB0
/* 8073EBA0  48 00 01 38 */	b lbl_8073ECD8
lbl_8073EBA4:
/* 8073EBA4  2C 04 00 03 */	cmpwi r4, 3
/* 8073EBA8  40 80 01 30 */	bge lbl_8073ECD8
/* 8073EBAC  48 00 00 C8 */	b lbl_8073EC74
lbl_8073EBB0:
/* 8073EBB0  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073EBB4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073EBB8  41 82 00 30 */	beq lbl_8073EBE8
/* 8073EBBC  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 8073EBC0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073EBC4  40 82 00 24 */	bne lbl_8073EBE8
/* 8073EBC8  38 04 00 01 */	addi r0, r4, 1
/* 8073EBCC  98 1F 05 B0 */	stb r0, 0x5b0(r31)
/* 8073EBD0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8073EBD4  D0 1F 06 40 */	stfs f0, 0x640(r31)
/* 8073EBD8  3C 60 80 74 */	lis r3, lit_4501@ha
/* 8073EBDC  C0 03 1C A8 */	lfs f0, lit_4501@l(r3)
/* 8073EBE0  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 8073EBE4  D0 1F 06 20 */	stfs f0, 0x620(r31)
lbl_8073EBE8:
/* 8073EBE8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073EBEC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073EBF0  41 82 00 10 */	beq lbl_8073EC00
/* 8073EBF4  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 8073EBF8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073EBFC  41 82 00 0C */	beq lbl_8073EC08
lbl_8073EC00:
/* 8073EC00  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 8073EC04  D0 1F 06 20 */	stfs f0, 0x620(r31)
lbl_8073EC08:
/* 8073EC08  7F E3 FB 78 */	mr r3, r31
/* 8073EC0C  4B FF FC A5 */	bl C_CheckPoint__8daE_PH_cFv
/* 8073EC10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073EC14  41 82 00 2C */	beq lbl_8073EC40
/* 8073EC18  88 1F 06 62 */	lbz r0, 0x662(r31)
/* 8073EC1C  28 00 00 00 */	cmplwi r0, 0
/* 8073EC20  41 82 00 10 */	beq lbl_8073EC30
/* 8073EC24  7F E3 FB 78 */	mr r3, r31
/* 8073EC28  48 00 01 31 */	bl SearchBackPos__8daE_PH_cFv
/* 8073EC2C  48 00 00 0C */	b lbl_8073EC38
lbl_8073EC30:
/* 8073EC30  7F E3 FB 78 */	mr r3, r31
/* 8073EC34  48 00 00 D9 */	bl SearchNextPos__8daE_PH_cFv
lbl_8073EC38:
/* 8073EC38  7F E3 FB 78 */	mr r3, r31
/* 8073EC3C  4B FF F8 69 */	bl SetCheckAngle__8daE_PH_cFv
lbl_8073EC40:
/* 8073EC40  7F E3 FB 78 */	mr r3, r31
/* 8073EC44  4B FF F5 E9 */	bl GoTarget__8daE_PH_cFv
/* 8073EC48  48 00 00 90 */	b lbl_8073ECD8
lbl_8073EC4C:
/* 8073EC4C  4B FF FC D9 */	bl DownBoots__8daE_PH_cFv
/* 8073EC50  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073EC54  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073EC58  41 82 00 10 */	beq lbl_8073EC68
/* 8073EC5C  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 8073EC60  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073EC64  41 82 00 74 */	beq lbl_8073ECD8
lbl_8073EC68:
/* 8073EC68  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 8073EC6C  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 8073EC70  48 00 00 68 */	b lbl_8073ECD8
lbl_8073EC74:
/* 8073EC74  4B FF F5 B9 */	bl GoTarget__8daE_PH_cFv
/* 8073EC78  7F E3 FB 78 */	mr r3, r31
/* 8073EC7C  4B FF FC 35 */	bl C_CheckPoint__8daE_PH_cFv
/* 8073EC80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073EC84  41 82 00 2C */	beq lbl_8073ECB0
/* 8073EC88  88 1F 06 62 */	lbz r0, 0x662(r31)
/* 8073EC8C  28 00 00 00 */	cmplwi r0, 0
/* 8073EC90  41 82 00 10 */	beq lbl_8073ECA0
/* 8073EC94  7F E3 FB 78 */	mr r3, r31
/* 8073EC98  48 00 00 C1 */	bl SearchBackPos__8daE_PH_cFv
/* 8073EC9C  48 00 00 0C */	b lbl_8073ECA8
lbl_8073ECA0:
/* 8073ECA0  7F E3 FB 78 */	mr r3, r31
/* 8073ECA4  48 00 00 69 */	bl SearchNextPos__8daE_PH_cFv
lbl_8073ECA8:
/* 8073ECA8  7F E3 FB 78 */	mr r3, r31
/* 8073ECAC  4B FF F7 F9 */	bl SetCheckAngle__8daE_PH_cFv
lbl_8073ECB0:
/* 8073ECB0  7F E3 FB 78 */	mr r3, r31
/* 8073ECB4  4B FF FD 9D */	bl UpBoots__8daE_PH_cFv
/* 8073ECB8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 8073ECBC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8073ECC0  41 82 00 10 */	beq lbl_8073ECD0
/* 8073ECC4  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 8073ECC8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8073ECCC  41 82 00 0C */	beq lbl_8073ECD8
lbl_8073ECD0:
/* 8073ECD0  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 8073ECD4  D0 1F 06 20 */	stfs f0, 0x620(r31)
lbl_8073ECD8:
/* 8073ECD8  38 7F 06 24 */	addi r3, r31, 0x624
/* 8073ECDC  C0 3F 06 20 */	lfs f1, 0x620(r31)
/* 8073ECE0  3C 80 80 74 */	lis r4, lit_4286@ha
/* 8073ECE4  C0 44 1C 84 */	lfs f2, lit_4286@l(r4)
/* 8073ECE8  4B B3 1A 58 */	b cLib_chaseF__FPfff
/* 8073ECEC  7F E3 FB 78 */	mr r3, r31
/* 8073ECF0  4B FF F1 09 */	bl FlyAnm__8daE_PH_cFv
/* 8073ECF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073ECF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8073ECFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073ED00  7C 08 03 A6 */	mtlr r0
/* 8073ED04  38 21 00 10 */	addi r1, r1, 0x10
/* 8073ED08  4E 80 00 20 */	blr 
