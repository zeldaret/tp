lbl_8051AA9C:
/* 8051AA9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051AAA0  7C 08 02 A6 */	mflr r0
/* 8051AAA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051AAA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051AAAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051AAB0  7C 7E 1B 78 */	mr r30, r3
/* 8051AAB4  3C 60 80 52 */	lis r3, lit_3649@ha
/* 8051AAB8  3B E3 B9 C8 */	addi r31, r3, lit_3649@l
/* 8051AABC  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 8051AAC0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8051AAC4  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8051AAC8  4B D5 4F B8 */	b cLib_addCalc0__FPfff
/* 8051AACC  38 00 00 00 */	li r0, 0
/* 8051AAD0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8051AAD4  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 8051AAD8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8051AADC  40 82 00 10 */	bne lbl_8051AAEC
/* 8051AAE0  88 1E 05 CE */	lbz r0, 0x5ce(r30)
/* 8051AAE4  7C 00 07 75 */	extsb. r0, r0
/* 8051AAE8  41 82 00 10 */	beq lbl_8051AAF8
lbl_8051AAEC:
/* 8051AAEC  38 00 00 00 */	li r0, 0
/* 8051AAF0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8051AAF4  48 00 00 48 */	b lbl_8051AB3C
lbl_8051AAF8:
/* 8051AAF8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8051AAFC  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8051AB00  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051AB04  FC 00 00 1E */	fctiwz f0, f0
/* 8051AB08  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8051AB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051AB10  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8051AB14  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 8051AB18  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8051AB1C  40 81 00 10 */	ble lbl_8051AB2C
/* 8051AB20  38 00 10 00 */	li r0, 0x1000
/* 8051AB24  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8051AB28  48 00 00 14 */	b lbl_8051AB3C
lbl_8051AB2C:
/* 8051AB2C  2C 00 E0 00 */	cmpwi r0, -8192
/* 8051AB30  40 80 00 0C */	bge lbl_8051AB3C
/* 8051AB34  38 00 E0 00 */	li r0, -8192
/* 8051AB38  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_8051AB3C:
/* 8051AB3C  88 1E 05 EC */	lbz r0, 0x5ec(r30)
/* 8051AB40  7C 00 07 75 */	extsb. r0, r0
/* 8051AB44  41 82 00 78 */	beq lbl_8051ABBC
/* 8051AB48  38 00 00 14 */	li r0, 0x14
/* 8051AB4C  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051AB50  38 00 00 00 */	li r0, 0
/* 8051AB54  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051AB58  7F C3 F3 78 */	mr r3, r30
/* 8051AB5C  4B FF FD A9 */	bl swim_on__FP8fr_class
/* 8051AB60  7F C3 F3 78 */	mr r3, r30
/* 8051AB64  4B FF EF 55 */	bl sibuki_set__FP8fr_class
/* 8051AB68  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8051AB6C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8051AB70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051AB74  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8051AB78  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020089@ha */
/* 8051AB7C  38 03 00 89 */	addi r0, r3, 0x0089 /* 0x00020089@l */
/* 8051AB80  90 01 00 08 */	stw r0, 8(r1)
/* 8051AB84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8051AB88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8051AB8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8051AB90  38 81 00 08 */	addi r4, r1, 8
/* 8051AB94  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8051AB98  38 C0 00 00 */	li r6, 0
/* 8051AB9C  38 E0 00 00 */	li r7, 0
/* 8051ABA0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8051ABA4  FC 40 08 90 */	fmr f2, f1
/* 8051ABA8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 8051ABAC  FC 80 18 90 */	fmr f4, f3
/* 8051ABB0  39 00 00 00 */	li r8, 0
/* 8051ABB4  4B D9 0D D0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8051ABB8  48 00 00 5C */	b lbl_8051AC14
lbl_8051ABBC:
/* 8051ABBC  A8 1E 09 94 */	lha r0, 0x994(r30)
/* 8051ABC0  2C 00 FF FF */	cmpwi r0, -1
/* 8051ABC4  41 82 00 1C */	beq lbl_8051ABE0
/* 8051ABC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8051ABCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8051ABD0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8051ABD4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8051ABD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8051ABDC  40 82 00 38 */	bne lbl_8051AC14
lbl_8051ABE0:
/* 8051ABE0  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 8051ABE4  2C 00 00 05 */	cmpwi r0, 5
/* 8051ABE8  41 82 00 2C */	beq lbl_8051AC14
/* 8051ABEC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8051ABF0  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051ABF4  38 63 BC 20 */	addi r3, r3, l_HIO@l
/* 8051ABF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051ABFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051AC00  40 80 00 14 */	bge lbl_8051AC14
/* 8051AC04  38 00 00 05 */	li r0, 5
/* 8051AC08  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
/* 8051AC0C  38 00 00 00 */	li r0, 0
/* 8051AC10  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
lbl_8051AC14:
/* 8051AC14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051AC18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051AC1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051AC20  7C 08 03 A6 */	mtlr r0
/* 8051AC24  38 21 00 20 */	addi r1, r1, 0x20
/* 8051AC28  4E 80 00 20 */	blr 
