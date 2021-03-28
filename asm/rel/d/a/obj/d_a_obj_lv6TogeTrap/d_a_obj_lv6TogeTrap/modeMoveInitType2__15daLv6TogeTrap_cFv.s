lbl_80C7BA50:
/* 80C7BA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7BA54  7C 08 02 A6 */	mflr r0
/* 80C7BA58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7BA5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7BA60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C7BA64  7C 7E 1B 78 */	mr r30, r3
/* 80C7BA68  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C7BA6C  7C 03 07 74 */	extsb r3, r0
/* 80C7BA70  4B 3B 15 FC */	b dComIfGp_getReverb__Fi
/* 80C7BA74  7C 7F 1B 78 */	mr r31, r3
/* 80C7BA78  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C7BA7C  4B 6E 66 30 */	b __cvt_fp2unsigned
/* 80C7BA80  7C 66 1B 78 */	mr r6, r3
/* 80C7BA84  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7BA88  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7BA8C  90 01 00 08 */	stw r0, 8(r1)
/* 80C7BA90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C7BA94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C7BA98  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7BA9C  38 81 00 08 */	addi r4, r1, 8
/* 80C7BAA0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C7BAA4  7F E7 FB 78 */	mr r7, r31
/* 80C7BAA8  3D 00 80 C8 */	lis r8, lit_3632@ha
/* 80C7BAAC  C0 28 C6 1C */	lfs f1, lit_3632@l(r8)
/* 80C7BAB0  FC 40 08 90 */	fmr f2, f1
/* 80C7BAB4  3D 00 80 C8 */	lis r8, lit_4150@ha
/* 80C7BAB8  C0 68 C7 28 */	lfs f3, lit_4150@l(r8)
/* 80C7BABC  FC 80 18 90 */	fmr f4, f3
/* 80C7BAC0  39 00 00 00 */	li r8, 0
/* 80C7BAC4  4B 63 0A 48 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7BAC8  7F C3 F3 78 */	mr r3, r30
/* 80C7BACC  48 00 00 1D */	bl init_modeAccType2__15daLv6TogeTrap_cFv
/* 80C7BAD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7BAD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7BAD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7BADC  7C 08 03 A6 */	mtlr r0
/* 80C7BAE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7BAE4  4E 80 00 20 */	blr 
