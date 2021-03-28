lbl_8097A60C:
/* 8097A60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097A610  7C 08 02 A6 */	mflr r0
/* 8097A614  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097A618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097A61C  93 C1 00 08 */	stw r30, 8(r1)
/* 8097A620  7C 7E 1B 78 */	mr r30, r3
/* 8097A624  3C 80 80 98 */	lis r4, lit_4037@ha
/* 8097A628  3B E4 F5 40 */	addi r31, r4, lit_4037@l
/* 8097A62C  38 00 00 00 */	li r0, 0
/* 8097A630  90 03 0B 58 */	stw r0, 0xb58(r3)
/* 8097A634  38 80 00 26 */	li r4, 0x26
/* 8097A638  80 A3 0B 58 */	lwz r5, 0xb58(r3)
/* 8097A63C  4B 7D DA B4 */	b getAnmP__10daNpcCd2_cFii
/* 8097A640  7C 64 1B 78 */	mr r4, r3
/* 8097A644  7F C3 F3 78 */	mr r3, r30
/* 8097A648  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8097A64C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8097A650  38 A0 00 02 */	li r5, 2
/* 8097A654  38 C0 00 00 */	li r6, 0
/* 8097A658  38 E0 FF FF */	li r7, -1
/* 8097A65C  4B 7D E8 A4 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097A660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097A664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097A668  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8097A66C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8097A670  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8097A674  4B 8F 65 90 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8097A678  B0 7E 0B 92 */	sth r3, 0xb92(r30)
/* 8097A67C  38 00 00 00 */	li r0, 0
/* 8097A680  90 1E 0B 70 */	stw r0, 0xb70(r30)
/* 8097A684  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8097A688  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8097A68C  38 00 00 02 */	li r0, 2
/* 8097A690  90 1E 0B 68 */	stw r0, 0xb68(r30)
/* 8097A694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097A698  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097A69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097A6A0  7C 08 03 A6 */	mtlr r0
/* 8097A6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8097A6A8  4E 80 00 20 */	blr 
