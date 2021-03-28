lbl_80076350:
/* 80076350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80076354  7C 08 02 A6 */	mflr r0
/* 80076358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007635C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80076360  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80076364  7C 7E 1B 78 */	mr r30, r3
/* 80076368  7C 9F 23 78 */	mr r31, r4
/* 8007636C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80076370  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80076374  40 82 01 C0 */	bne lbl_80076534
/* 80076378  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8007637C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80076380  D0 01 00 08 */	stfs f0, 8(r1)
/* 80076384  C0 64 00 04 */	lfs f3, 4(r4)
/* 80076388  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8007638C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80076390  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80076394  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80076398  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8007639C  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 800763A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800763A4  EC 02 00 2A */	fadds f0, f2, f0
/* 800763A8  EC 03 00 2A */	fadds f0, f3, f0
/* 800763AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800763B0  48 00 10 31 */	bl ChkGndThinCellingOff__9dBgS_AcchFv
/* 800763B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800763B8  40 82 00 7C */	bne lbl_80076434
/* 800763BC  88 0D 89 E8 */	lbz r0, data_80450F68(r13)
/* 800763C0  7C 00 07 75 */	extsb. r0, r0
/* 800763C4  40 82 00 2C */	bne lbl_800763F0
/* 800763C8  3C 60 80 42 */	lis r3, tmpRoofChk@ha
/* 800763CC  38 63 4B 2C */	addi r3, r3, tmpRoofChk@l
/* 800763D0  48 00 2C 25 */	bl __ct__12dBgS_RoofChkFv
/* 800763D4  3C 80 80 08 */	lis r4, __dt__12dBgS_RoofChkFv@ha
/* 800763D8  38 84 90 90 */	addi r4, r4, __dt__12dBgS_RoofChkFv@l
/* 800763DC  3C A0 80 42 */	lis r5, lit_4166@ha
/* 800763E0  38 A5 4B 20 */	addi r5, r5, lit_4166@l
/* 800763E4  48 2E B8 41 */	bl __register_global_object
/* 800763E8  38 00 00 01 */	li r0, 1
/* 800763EC  98 0D 89 E8 */	stb r0, data_80450F68(r13)
lbl_800763F0:
/* 800763F0  80 1E 00 E4 */	lwz r0, 0xe4(r30)
/* 800763F4  3C 60 80 42 */	lis r3, tmpRoofChk@ha
/* 800763F8  38 83 4B 2C */	addi r4, r3, tmpRoofChk@l
/* 800763FC  90 04 00 18 */	stw r0, 0x18(r4)
/* 80076400  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076404  C0 03 00 00 */	lfs f0, 0(r3)
/* 80076408  D0 04 00 3C */	stfs f0, 0x3c(r4)
/* 8007640C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80076410  D0 04 00 40 */	stfs f0, 0x40(r4)
/* 80076414  C0 03 00 08 */	lfs f0, 8(r3)
/* 80076418  D0 04 00 44 */	stfs f0, 0x44(r4)
/* 8007641C  7F E3 FB 78 */	mr r3, r31
/* 80076420  4B FF F0 7D */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80076424  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80076428  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007642C  40 81 00 08 */	ble lbl_80076434
/* 80076430  D0 21 00 0C */	stfs f1, 0xc(r1)
lbl_80076434:
/* 80076434  C0 02 8C C0 */	lfs f0, lit_4025(r2)
/* 80076438  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 8007643C  38 7E 00 DC */	addi r3, r30, 0xdc
/* 80076440  38 81 00 08 */	addi r4, r1, 8
/* 80076444  48 1F 18 E5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80076448  7F E3 FB 78 */	mr r3, r31
/* 8007644C  38 9E 00 DC */	addi r4, r30, 0xdc
/* 80076450  4B FF E0 51 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80076454  D0 3E 00 98 */	stfs f1, 0x98(r30)
/* 80076458  C0 02 8C C4 */	lfs f0, lit_4089(r2)
/* 8007645C  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80076460  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80076464  41 82 00 AC */	beq lbl_80076510
/* 80076468  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 8007646C  EC 01 00 2A */	fadds f0, f1, f0
/* 80076470  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 80076474  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80076478  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 8007647C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80076480  40 81 00 90 */	ble lbl_80076510
/* 80076484  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 80076488  D0 23 00 04 */	stfs f1, 4(r3)
/* 8007648C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076490  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80076494  40 82 00 18 */	bne lbl_800764AC
/* 80076498  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8007649C  28 03 00 00 */	cmplwi r3, 0
/* 800764A0  41 82 00 0C */	beq lbl_800764AC
/* 800764A4  C0 02 8C C0 */	lfs f0, lit_4025(r2)
/* 800764A8  D0 03 00 04 */	stfs f0, 4(r3)
lbl_800764AC:
/* 800764AC  7F E3 FB 78 */	mr r3, r31
/* 800764B0  38 9E 00 F0 */	addi r4, r30, 0xf0
/* 800764B4  38 BE 00 A0 */	addi r5, r30, 0xa0
/* 800764B8  4B FF E2 8D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800764BC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 800764C0  60 00 00 40 */	ori r0, r0, 0x40
/* 800764C4  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 800764C8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 800764CC  60 00 00 20 */	ori r0, r0, 0x20
/* 800764D0  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 800764D4  88 1E 00 C0 */	lbz r0, 0xc0(r30)
/* 800764D8  28 00 00 00 */	cmplwi r0, 0
/* 800764DC  40 82 00 1C */	bne lbl_800764F8
/* 800764E0  38 00 00 01 */	li r0, 1
/* 800764E4  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 800764E8  7F E3 FB 78 */	mr r3, r31
/* 800764EC  38 9E 00 F0 */	addi r4, r30, 0xf0
/* 800764F0  80 BE 00 84 */	lwz r5, 0x84(r30)
/* 800764F4  4B FF F6 91 */	bl RideCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_c
lbl_800764F8:
/* 800764F8  88 1E 00 B4 */	lbz r0, 0xb4(r30)
/* 800764FC  28 00 00 00 */	cmplwi r0, 0
/* 80076500  40 82 00 10 */	bne lbl_80076510
/* 80076504  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076508  60 00 00 80 */	ori r0, r0, 0x80
/* 8007650C  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_80076510:
/* 80076510  88 1E 00 B4 */	lbz r0, 0xb4(r30)
/* 80076514  28 00 00 00 */	cmplwi r0, 0
/* 80076518  41 82 00 1C */	beq lbl_80076534
/* 8007651C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80076520  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80076524  40 82 00 10 */	bne lbl_80076534
/* 80076528  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8007652C  60 00 01 00 */	ori r0, r0, 0x100
/* 80076530  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_80076534:
/* 80076534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80076538  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007653C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80076540  7C 08 03 A6 */	mtlr r0
/* 80076544  38 21 00 20 */	addi r1, r1, 0x20
/* 80076548  4E 80 00 20 */	blr 
