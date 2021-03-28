lbl_8098FB3C:
/* 8098FB3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8098FB40  7C 08 02 A6 */	mflr r0
/* 8098FB44  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098FB48  39 61 00 30 */	addi r11, r1, 0x30
/* 8098FB4C  4B 9D 26 90 */	b _savegpr_29
/* 8098FB50  7C 7D 1B 78 */	mr r29, r3
/* 8098FB54  7C 9E 23 78 */	mr r30, r4
/* 8098FB58  38 00 FF FF */	li r0, -1
/* 8098FB5C  90 04 00 00 */	stw r0, 0(r4)
/* 8098FB60  4B 8D 16 E4 */	b dTimer_getRestTimeMs__Fv
/* 8098FB64  7C 7F 1B 79 */	or. r31, r3, r3
/* 8098FB68  41 81 00 50 */	bgt lbl_8098FBB8
/* 8098FB6C  38 00 00 8B */	li r0, 0x8b
/* 8098FB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098FB74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098FB78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098FB7C  80 63 00 00 */	lwz r3, 0(r3)
/* 8098FB80  38 81 00 14 */	addi r4, r1, 0x14
/* 8098FB84  38 A0 00 00 */	li r5, 0
/* 8098FB88  38 C0 00 00 */	li r6, 0
/* 8098FB8C  38 E0 00 00 */	li r7, 0
/* 8098FB90  3D 00 80 99 */	lis r8, lit_3884@ha
/* 8098FB94  C0 28 19 78 */	lfs f1, lit_3884@l(r8)
/* 8098FB98  FC 40 08 90 */	fmr f2, f1
/* 8098FB9C  3D 00 80 99 */	lis r8, lit_4627@ha
/* 8098FBA0  C0 68 19 A4 */	lfs f3, lit_4627@l(r8)
/* 8098FBA4  FC 80 18 90 */	fmr f4, f3
/* 8098FBA8  39 00 00 00 */	li r8, 0
/* 8098FBAC  4B 91 BD D8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8098FBB0  38 60 00 01 */	li r3, 1
/* 8098FBB4  48 00 01 6C */	b lbl_8098FD20
lbl_8098FBB8:
/* 8098FBB8  2C 1F 4E 20 */	cmpwi r31, 0x4e20
/* 8098FBBC  41 81 01 28 */	bgt lbl_8098FCE4
/* 8098FBC0  80 7D 0E 14 */	lwz r3, 0xe14(r29)
/* 8098FBC4  1C 83 03 E8 */	mulli r4, r3, 0x3e8
/* 8098FBC8  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 8098FBCC  7C 00 20 00 */	cmpw r0, r4
/* 8098FBD0  40 81 01 0C */	ble lbl_8098FCDC
/* 8098FBD4  7C 1F 20 00 */	cmpw r31, r4
/* 8098FBD8  41 81 01 04 */	bgt lbl_8098FCDC
/* 8098FBDC  2C 03 00 00 */	cmpwi r3, 0
/* 8098FBE0  40 81 00 54 */	ble lbl_8098FC34
/* 8098FBE4  2C 03 00 05 */	cmpwi r3, 5
/* 8098FBE8  41 81 00 4C */	bgt lbl_8098FC34
/* 8098FBEC  38 00 00 8A */	li r0, 0x8a
/* 8098FBF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098FBF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098FBF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098FBFC  80 63 00 00 */	lwz r3, 0(r3)
/* 8098FC00  38 81 00 10 */	addi r4, r1, 0x10
/* 8098FC04  38 A0 00 00 */	li r5, 0
/* 8098FC08  38 C0 00 00 */	li r6, 0
/* 8098FC0C  38 E0 00 00 */	li r7, 0
/* 8098FC10  3D 00 80 99 */	lis r8, lit_3884@ha
/* 8098FC14  C0 28 19 78 */	lfs f1, lit_3884@l(r8)
/* 8098FC18  FC 40 08 90 */	fmr f2, f1
/* 8098FC1C  3D 00 80 99 */	lis r8, lit_4627@ha
/* 8098FC20  C0 68 19 A4 */	lfs f3, lit_4627@l(r8)
/* 8098FC24  FC 80 18 90 */	fmr f4, f3
/* 8098FC28  39 00 00 00 */	li r8, 0
/* 8098FC2C  4B 91 BD 58 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8098FC30  48 00 00 A0 */	b lbl_8098FCD0
lbl_8098FC34:
/* 8098FC34  2C 03 00 05 */	cmpwi r3, 5
/* 8098FC38  40 81 00 54 */	ble lbl_8098FC8C
/* 8098FC3C  2C 03 00 0A */	cmpwi r3, 0xa
/* 8098FC40  41 81 00 4C */	bgt lbl_8098FC8C
/* 8098FC44  38 00 00 89 */	li r0, 0x89
/* 8098FC48  90 01 00 0C */	stw r0, 0xc(r1)
/* 8098FC4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098FC50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098FC54  80 63 00 00 */	lwz r3, 0(r3)
/* 8098FC58  38 81 00 0C */	addi r4, r1, 0xc
/* 8098FC5C  38 A0 00 00 */	li r5, 0
/* 8098FC60  38 C0 00 00 */	li r6, 0
/* 8098FC64  38 E0 00 00 */	li r7, 0
/* 8098FC68  3D 00 80 99 */	lis r8, lit_3884@ha
/* 8098FC6C  C0 28 19 78 */	lfs f1, lit_3884@l(r8)
/* 8098FC70  FC 40 08 90 */	fmr f2, f1
/* 8098FC74  3D 00 80 99 */	lis r8, lit_4627@ha
/* 8098FC78  C0 68 19 A4 */	lfs f3, lit_4627@l(r8)
/* 8098FC7C  FC 80 18 90 */	fmr f4, f3
/* 8098FC80  39 00 00 00 */	li r8, 0
/* 8098FC84  4B 91 BD 00 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8098FC88  48 00 00 48 */	b lbl_8098FCD0
lbl_8098FC8C:
/* 8098FC8C  38 00 00 88 */	li r0, 0x88
/* 8098FC90  90 01 00 08 */	stw r0, 8(r1)
/* 8098FC94  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8098FC98  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8098FC9C  80 63 00 00 */	lwz r3, 0(r3)
/* 8098FCA0  38 81 00 08 */	addi r4, r1, 8
/* 8098FCA4  38 A0 00 00 */	li r5, 0
/* 8098FCA8  38 C0 00 00 */	li r6, 0
/* 8098FCAC  38 E0 00 00 */	li r7, 0
/* 8098FCB0  3D 00 80 99 */	lis r8, lit_3884@ha
/* 8098FCB4  C0 28 19 78 */	lfs f1, lit_3884@l(r8)
/* 8098FCB8  FC 40 08 90 */	fmr f2, f1
/* 8098FCBC  3D 00 80 99 */	lis r8, lit_4627@ha
/* 8098FCC0  C0 68 19 A4 */	lfs f3, lit_4627@l(r8)
/* 8098FCC4  FC 80 18 90 */	fmr f4, f3
/* 8098FCC8  39 00 00 00 */	li r8, 0
/* 8098FCCC  4B 91 BC B8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8098FCD0:
/* 8098FCD0  80 7D 0E 14 */	lwz r3, 0xe14(r29)
/* 8098FCD4  38 03 FF FF */	addi r0, r3, -1
/* 8098FCD8  90 1D 0E 14 */	stw r0, 0xe14(r29)
lbl_8098FCDC:
/* 8098FCDC  93 FD 0E 18 */	stw r31, 0xe18(r29)
/* 8098FCE0  48 00 00 18 */	b lbl_8098FCF8
lbl_8098FCE4:
/* 8098FCE4  3C 60 00 0F */	lis r3, 0x000F /* 0x000F4240@ha */
/* 8098FCE8  38 03 42 40 */	addi r0, r3, 0x4240 /* 0x000F4240@l */
/* 8098FCEC  90 1D 0E 18 */	stw r0, 0xe18(r29)
/* 8098FCF0  38 00 00 14 */	li r0, 0x14
/* 8098FCF4  90 1D 0E 14 */	stw r0, 0xe14(r29)
lbl_8098FCF8:
/* 8098FCF8  7F A3 EB 78 */	mr r3, r29
/* 8098FCFC  48 00 00 3D */	bl _chkGameClear__11daNpcChin_cFv
/* 8098FD00  2C 03 00 00 */	cmpwi r3, 0
/* 8098FD04  41 82 00 18 */	beq lbl_8098FD1C
/* 8098FD08  80 1D 0E 10 */	lwz r0, 0xe10(r29)
/* 8098FD0C  7C 1F 00 50 */	subf r0, r31, r0
/* 8098FD10  90 1E 00 00 */	stw r0, 0(r30)
/* 8098FD14  38 60 00 02 */	li r3, 2
/* 8098FD18  48 00 00 08 */	b lbl_8098FD20
lbl_8098FD1C:
/* 8098FD1C  38 60 00 00 */	li r3, 0
lbl_8098FD20:
/* 8098FD20  39 61 00 30 */	addi r11, r1, 0x30
/* 8098FD24  4B 9D 25 04 */	b _restgpr_29
/* 8098FD28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8098FD2C  7C 08 03 A6 */	mtlr r0
/* 8098FD30  38 21 00 30 */	addi r1, r1, 0x30
/* 8098FD34  4E 80 00 20 */	blr 
