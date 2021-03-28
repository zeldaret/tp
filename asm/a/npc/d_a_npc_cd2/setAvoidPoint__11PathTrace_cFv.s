lbl_80159ECC:
/* 80159ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80159ED0  7C 08 02 A6 */	mflr r0
/* 80159ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80159ED8  39 61 00 20 */	addi r11, r1, 0x20
/* 80159EDC  48 20 83 01 */	bl _savegpr_29
/* 80159EE0  7C 7F 1B 78 */	mr r31, r3
/* 80159EE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80159EE8  3B A3 04 D0 */	addi r29, r3, 0x4d0
/* 80159EEC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80159EF0  38 83 04 D0 */	addi r4, r3, 0x4d0
/* 80159EF4  7F A3 EB 78 */	mr r3, r29
/* 80159EF8  48 11 6D 0D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80159EFC  7C 7E 1B 78 */	mr r30, r3
/* 80159F00  80 7F 00 08 */	lwz r3, 8(r31)
/* 80159F04  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80159F08  4B EF 78 A9 */	bl dPath_GetPnt__FPC5dPathi
/* 80159F0C  7C 64 1B 78 */	mr r4, r3
/* 80159F10  7F A3 EB 78 */	mr r3, r29
/* 80159F14  38 84 00 04 */	addi r4, r4, 4
/* 80159F18  48 11 6C ED */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80159F1C  7F C4 07 34 */	extsh r4, r30
/* 80159F20  7C 03 20 50 */	subf r0, r3, r4
/* 80159F24  7C 00 07 35 */	extsh. r0, r0
/* 80159F28  38 04 C0 00 */	addi r0, r4, -16384
/* 80159F2C  7C 1E 07 34 */	extsh r30, r0
/* 80159F30  40 81 00 0C */	ble lbl_80159F3C
/* 80159F34  38 04 40 00 */	addi r0, r4, 0x4000
/* 80159F38  7C 1E 07 34 */	extsh r30, r0
lbl_80159F3C:
/* 80159F3C  C0 02 9A E4 */	lfs f0, lit_4585(r2)
/* 80159F40  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80159F44  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80159F48  C0 02 9B 40 */	lfs f0, lit_5149(r2)
/* 80159F4C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80159F50  80 7F 00 04 */	lwz r3, 4(r31)
/* 80159F54  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80159F58  4B EB 2E 0D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80159F5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80159F60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80159F64  7F C4 F3 78 */	mr r4, r30
/* 80159F68  4B EB 24 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80159F6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80159F70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80159F74  38 9F 00 0C */	addi r4, r31, 0xc
/* 80159F78  7C 85 23 78 */	mr r5, r4
/* 80159F7C  48 1E CD F1 */	bl PSMTXMultVec
/* 80159F80  39 61 00 20 */	addi r11, r1, 0x20
/* 80159F84  48 20 82 A5 */	bl _restgpr_29
/* 80159F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80159F8C  7C 08 03 A6 */	mtlr r0
/* 80159F90  38 21 00 20 */	addi r1, r1, 0x20
/* 80159F94  4E 80 00 20 */	blr 
