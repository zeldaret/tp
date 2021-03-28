lbl_80D54ECC:
/* 80D54ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D54ED0  7C 08 02 A6 */	mflr r0
/* 80D54ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D54ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D54EDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D54EE0  7C 7E 1B 78 */	mr r30, r3
/* 80D54EE4  3C 60 80 D5 */	lis r3, mAttr__13daTagTWGate_c@ha
/* 80D54EE8  3B E3 57 AC */	addi r31, r3, mAttr__13daTagTWGate_c@l
/* 80D54EEC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D54EF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D54EF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80D54EF8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D54EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D54F04  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D54F08  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 80D54F0C  3C 63 00 01 */	addis r3, r3, 1
/* 80D54F10  38 03 80 00 */	addi r0, r3, -32768
/* 80D54F14  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D54F18  38 64 04 D0 */	addi r3, r4, 0x4d0
/* 80D54F1C  4B 2B 7E 48 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80D54F20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D54F24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D54F28  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D54F2C  4B 2B 75 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80D54F30  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80D54F34  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80D54F38  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 80D54F3C  4B 2B 7E 60 */	b transM__14mDoMtx_stack_cFfff
/* 80D54F40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D54F44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D54F48  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D54F4C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D54F50  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D54F54  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D54F58  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D54F5C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D54F60  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80D54F64  80 84 00 04 */	lwz r4, 4(r4)
/* 80D54F68  38 84 00 24 */	addi r4, r4, 0x24
/* 80D54F6C  4B 5F 15 44 */	b PSMTXCopy
/* 80D54F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D54F74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D54F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D54F7C  7C 08 03 A6 */	mtlr r0
/* 80D54F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D54F84  4E 80 00 20 */	blr 
