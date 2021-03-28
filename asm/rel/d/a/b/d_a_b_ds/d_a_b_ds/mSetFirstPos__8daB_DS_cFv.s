lbl_805D3EA0:
/* 805D3EA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D3EA4  7C 08 02 A6 */	mflr r0
/* 805D3EA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D3EAC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805D3EB0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805D3EB4  7C 7E 1B 78 */	mr r30, r3
/* 805D3EB8  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D3EBC  3B E3 CA 54 */	addi r31, r3, lit_3932@l
/* 805D3EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D3EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D3EC8  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 805D3ECC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D3ED0  D0 3E 04 A8 */	stfs f1, 0x4a8(r30)
/* 805D3ED4  C0 1F 02 90 */	lfs f0, 0x290(r31)
/* 805D3ED8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 805D3EDC  D0 3E 04 B0 */	stfs f1, 0x4b0(r30)
/* 805D3EE0  38 61 00 08 */	addi r3, r1, 8
/* 805D3EE4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 805D3EE8  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 805D3EEC  4B C9 2C 48 */	b __mi__4cXyzCFRC3Vec
/* 805D3EF0  C0 01 00 08 */	lfs f0, 8(r1)
/* 805D3EF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805D3EF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D3EFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D3F00  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805D3F04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D3F08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D3F0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805D3F10  38 61 00 14 */	addi r3, r1, 0x14
/* 805D3F14  4B C9 32 14 */	b atan2sX_Z__4cXyzCFv
/* 805D3F18  38 03 B8 00 */	addi r0, r3, -18432
/* 805D3F1C  7C 04 07 34 */	extsh r4, r0
/* 805D3F20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D3F24  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D3F28  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3F2C  4B A3 84 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 805D3F30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D3F34  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D3F38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805D3F3C  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805D3F40  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805D3F44  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D3F48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D3F4C  38 61 00 20 */	addi r3, r1, 0x20
/* 805D3F50  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805D3F54  4B C9 CF 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D3F58  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805D3F5C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805D3F60  7C 65 1B 78 */	mr r5, r3
/* 805D3F64  4B D7 31 2C */	b PSVECAdd
/* 805D3F68  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805D3F6C  D0 1E 07 E8 */	stfs f0, 0x7e8(r30)
/* 805D3F70  38 00 00 00 */	li r0, 0
/* 805D3F74  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 805D3F78  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805D3F7C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805D3F80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D3F84  7C 08 03 A6 */	mtlr r0
/* 805D3F88  38 21 00 40 */	addi r1, r1, 0x40
/* 805D3F8C  4E 80 00 20 */	blr 
