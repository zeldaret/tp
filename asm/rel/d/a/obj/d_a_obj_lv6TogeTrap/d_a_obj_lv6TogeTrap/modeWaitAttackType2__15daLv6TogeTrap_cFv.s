lbl_80C7BC7C:
/* 80C7BC7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7BC80  7C 08 02 A6 */	mflr r0
/* 80C7BC84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7BC88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7BC8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C7BC90  7C 7F 1B 78 */	mr r31, r3
/* 80C7BC94  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80C7BC98  7C 03 07 74 */	extsb r3, r0
/* 80C7BC9C  4B 3B 13 D1 */	bl dComIfGp_getReverb__Fi
/* 80C7BCA0  7C 7E 1B 78 */	mr r30, r3
/* 80C7BCA4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C7BCA8  4B 6E 64 05 */	bl __cvt_fp2unsigned
/* 80C7BCAC  7C 66 1B 78 */	mr r6, r3
/* 80C7BCB0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A9@ha */
/* 80C7BCB4  38 03 01 A9 */	addi r0, r3, 0x01A9 /* 0x000801A9@l */
/* 80C7BCB8  90 01 00 08 */	stw r0, 8(r1)
/* 80C7BCBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C7BCC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C7BCC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C7BCC8  38 81 00 08 */	addi r4, r1, 8
/* 80C7BCCC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C7BCD0  7F C7 F3 78 */	mr r7, r30
/* 80C7BCD4  3D 00 80 C8 */	lis r8, lit_3632@ha /* 0x80C7C61C@ha */
/* 80C7BCD8  C0 28 C6 1C */	lfs f1, lit_3632@l(r8)  /* 0x80C7C61C@l */
/* 80C7BCDC  FC 40 08 90 */	fmr f2, f1
/* 80C7BCE0  3D 00 80 C8 */	lis r8, lit_4150@ha /* 0x80C7C728@ha */
/* 80C7BCE4  C0 68 C7 28 */	lfs f3, lit_4150@l(r8)  /* 0x80C7C728@l */
/* 80C7BCE8  FC 80 18 90 */	fmr f4, f3
/* 80C7BCEC  39 00 00 00 */	li r8, 0
/* 80C7BCF0  4B 63 08 1D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C7BCF4  88 1F 06 08 */	lbz r0, 0x608(r31)
/* 80C7BCF8  28 00 00 00 */	cmplwi r0, 0
/* 80C7BCFC  40 82 00 18 */	bne lbl_80C7BD14
/* 80C7BD00  88 1F 06 09 */	lbz r0, 0x609(r31)
/* 80C7BD04  28 00 00 00 */	cmplwi r0, 0
/* 80C7BD08  40 82 00 0C */	bne lbl_80C7BD14
/* 80C7BD0C  38 00 00 00 */	li r0, 0
/* 80C7BD10  98 1F 06 0A */	stb r0, 0x60a(r31)
lbl_80C7BD14:
/* 80C7BD14  88 7F 06 0A */	lbz r3, 0x60a(r31)
/* 80C7BD18  28 03 00 00 */	cmplwi r3, 0
/* 80C7BD1C  41 82 00 10 */	beq lbl_80C7BD2C
/* 80C7BD20  38 03 FF FF */	addi r0, r3, -1
/* 80C7BD24  98 1F 06 0A */	stb r0, 0x60a(r31)
/* 80C7BD28  48 00 00 24 */	b lbl_80C7BD4C
lbl_80C7BD2C:
/* 80C7BD2C  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80C7BD30  3C 60 80 C8 */	lis r3, l_HIO@ha /* 0x80C7CA64@ha */
/* 80C7BD34  38 63 CA 64 */	addi r3, r3, l_HIO@l /* 0x80C7CA64@l */
/* 80C7BD38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C7BD3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C7BD40  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 80C7BD44  7F E3 FB 78 */	mr r3, r31
/* 80C7BD48  4B FF FC F1 */	bl init_modeMoveInitType2__15daLv6TogeTrap_cFv
lbl_80C7BD4C:
/* 80C7BD4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7BD50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C7BD54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7BD58  7C 08 03 A6 */	mtlr r0
/* 80C7BD5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7BD60  4E 80 00 20 */	blr 
