lbl_80C7B60C:
/* 80C7B60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7B610  7C 08 02 A6 */	mflr r0
/* 80C7B614  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7B618  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7B61C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C7B620  7C 7E 1B 78 */	mr r30, r3
/* 80C7B624  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C7B628  7C 03 07 74 */	extsb r3, r0
/* 80C7B62C  4B 3B 1A 40 */	b dComIfGp_getReverb__Fi
/* 80C7B630  7C 7F 1B 78 */	mr r31, r3
/* 80C7B634  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C7B638  4B 6E 6A 74 */	b __cvt_fp2unsigned
/* 80C7B63C  7C 66 1B 78 */	mr r6, r3
/* 80C7B640  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7B644  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7B648  90 01 00 08 */	stw r0, 8(r1)
/* 80C7B64C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C7B650  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C7B654  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7B658  38 81 00 08 */	addi r4, r1, 8
/* 80C7B65C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7B660  7F E7 FB 78 */	mr r7, r31
/* 80C7B664  3D 00 80 C8 */	lis r8, lit_3632@ha
/* 80C7B668  C0 28 C6 1C */	lfs f1, lit_3632@l(r8)
/* 80C7B66C  FC 40 08 90 */	fmr f2, f1
/* 80C7B670  3D 00 80 C8 */	lis r8, lit_4150@ha
/* 80C7B674  C0 68 C7 28 */	lfs f3, lit_4150@l(r8)
/* 80C7B678  FC 80 18 90 */	fmr f4, f3
/* 80C7B67C  39 00 00 00 */	li r8, 0
/* 80C7B680  4B 63 0E 8C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7B684  88 1E 05 DA */	lbz r0, 0x5da(r30)
/* 80C7B688  28 00 00 05 */	cmplwi r0, 5
/* 80C7B68C  40 82 00 10 */	bne lbl_80C7B69C
/* 80C7B690  7F C3 F3 78 */	mr r3, r30
/* 80C7B694  4B FF FD A9 */	bl init_modeMove2__15daLv6TogeTrap_cFv
/* 80C7B698  48 00 00 24 */	b lbl_80C7B6BC
lbl_80C7B69C:
/* 80C7B69C  88 1E 05 F8 */	lbz r0, 0x5f8(r30)
/* 80C7B6A0  28 00 00 00 */	cmplwi r0, 0
/* 80C7B6A4  41 82 00 10 */	beq lbl_80C7B6B4
/* 80C7B6A8  7F C3 F3 78 */	mr r3, r30
/* 80C7B6AC  4B FF FD 91 */	bl init_modeMove2__15daLv6TogeTrap_cFv
/* 80C7B6B0  48 00 00 0C */	b lbl_80C7B6BC
lbl_80C7B6B4:
/* 80C7B6B4  7F C3 F3 78 */	mr r3, r30
/* 80C7B6B8  4B FF F7 61 */	bl init_modeAcc__15daLv6TogeTrap_cFv
lbl_80C7B6BC:
/* 80C7B6BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7B6C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7B6C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7B6C8  7C 08 03 A6 */	mtlr r0
/* 80C7B6CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7B6D0  4E 80 00 20 */	blr 
