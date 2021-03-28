lbl_805EE438:
/* 805EE438  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 805EE43C  7C 08 02 A6 */	mflr r0
/* 805EE440  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805EE444  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 805EE448  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 805EE44C  7C 7E 1B 78 */	mr r30, r3
/* 805EE450  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805EE454  3B E3 41 88 */	addi r31, r3, lit_3774@l
/* 805EE458  38 61 00 40 */	addi r3, r1, 0x40
/* 805EE45C  4B A8 98 0C */	b __ct__11dBgS_LinChkFv
/* 805EE460  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805EE464  38 03 47 70 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805EE468  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805EE46C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EE470  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EE474  80 63 00 00 */	lwz r3, 0(r3)
/* 805EE478  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805EE47C  4B A1 DF 60 */	b mDoMtx_YrotS__FPA4_fs
/* 805EE480  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805EE484  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805EE488  80 63 00 00 */	lwz r3, 0(r3)
/* 805EE48C  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805EE490  4B A1 DF 0C */	b mDoMtx_XrotM__FPA4_fs
/* 805EE494  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805EE498  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EE49C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805EE4A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EE4A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805EE4A8  38 61 00 08 */	addi r3, r1, 8
/* 805EE4AC  38 81 00 20 */	addi r4, r1, 0x20
/* 805EE4B0  4B C8 2A 3C */	b MtxPosition__FP4cXyzP4cXyz
/* 805EE4B4  38 61 00 20 */	addi r3, r1, 0x20
/* 805EE4B8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805EE4BC  7C 65 1B 78 */	mr r5, r3
/* 805EE4C0  4B D5 8B D0 */	b PSVECAdd
/* 805EE4C4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805EE4C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805EE4CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EE4D0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805EE4D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805EE4D8  38 61 00 08 */	addi r3, r1, 8
/* 805EE4DC  38 81 00 14 */	addi r4, r1, 0x14
/* 805EE4E0  4B C8 2A 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 805EE4E4  38 61 00 14 */	addi r3, r1, 0x14
/* 805EE4E8  38 81 00 20 */	addi r4, r1, 0x20
/* 805EE4EC  7C 65 1B 78 */	mr r5, r3
/* 805EE4F0  4B D5 8B A0 */	b PSVECAdd
/* 805EE4F4  38 61 00 40 */	addi r3, r1, 0x40
/* 805EE4F8  38 81 00 20 */	addi r4, r1, 0x20
/* 805EE4FC  38 A1 00 14 */	addi r5, r1, 0x14
/* 805EE500  7F C6 F3 78 */	mr r6, r30
/* 805EE504  4B A8 98 60 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805EE508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EE50C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EE510  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 805EE514  7F E3 FB 78 */	mr r3, r31
/* 805EE518  38 81 00 40 */	addi r4, r1, 0x40
/* 805EE51C  4B A8 5E 98 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805EE520  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805EE524  41 82 00 80 */	beq lbl_805EE5A4
/* 805EE528  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 805EE52C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 805EE530  40 80 00 3C */	bge lbl_805EE56C
/* 805EE534  2C 00 F0 00 */	cmpwi r0, -4096
/* 805EE538  40 81 00 34 */	ble lbl_805EE56C
/* 805EE53C  7F E3 FB 78 */	mr r3, r31
/* 805EE540  38 81 00 54 */	addi r4, r1, 0x54
/* 805EE544  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805EE548  4B A8 61 FC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 805EE54C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 805EE550  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EE554  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 805EE558  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805EE55C  4B C7 91 18 */	b cM_atan2s__Fff
/* 805EE560  3C 63 00 01 */	addis r3, r3, 1
/* 805EE564  38 03 80 00 */	addi r0, r3, -32768
/* 805EE568  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_805EE56C:
/* 805EE56C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805EE570  D0 1E 07 3C */	stfs f0, 0x73c(r30)
/* 805EE574  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805EE578  D0 1E 07 40 */	stfs f0, 0x740(r30)
/* 805EE57C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 805EE580  D0 1E 07 44 */	stfs f0, 0x744(r30)
/* 805EE584  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805EE588  38 03 47 70 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805EE58C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805EE590  38 61 00 40 */	addi r3, r1, 0x40
/* 805EE594  38 80 FF FF */	li r4, -1
/* 805EE598  4B A8 97 44 */	b __dt__11dBgS_LinChkFv
/* 805EE59C  38 60 00 01 */	li r3, 1
/* 805EE5A0  48 00 00 20 */	b lbl_805EE5C0
lbl_805EE5A4:
/* 805EE5A4  3C 60 80 5F */	lis r3, __vt__8cM3dGPla@ha
/* 805EE5A8  38 03 47 70 */	addi r0, r3, __vt__8cM3dGPla@l
/* 805EE5AC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805EE5B0  38 61 00 40 */	addi r3, r1, 0x40
/* 805EE5B4  38 80 FF FF */	li r4, -1
/* 805EE5B8  4B A8 97 24 */	b __dt__11dBgS_LinChkFv
/* 805EE5BC  38 60 00 00 */	li r3, 0
lbl_805EE5C0:
/* 805EE5C0  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 805EE5C4  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 805EE5C8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 805EE5CC  7C 08 03 A6 */	mtlr r0
/* 805EE5D0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 805EE5D4  4E 80 00 20 */	blr 
