lbl_80D15DA8:
/* 80D15DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D15DAC  7C 08 02 A6 */	mflr r0
/* 80D15DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D15DB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D15DB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D15DBC  2C 04 00 00 */	cmpwi r4, 0
/* 80D15DC0  40 82 00 BC */	bne lbl_80D15E7C
/* 80D15DC4  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80D15DC8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D15DCC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80D15DD0  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 80D15DD4  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80D15DD8  A0 05 05 D8 */	lhz r0, 0x5d8(r5)
/* 80D15DDC  7C 04 00 00 */	cmpw r4, r0
/* 80D15DE0  40 82 00 9C */	bne lbl_80D15E7C
/* 80D15DE4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80D15DE8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D15DEC  1F C4 00 30 */	mulli r30, r4, 0x30
/* 80D15DF0  7C 60 F2 14 */	add r3, r0, r30
/* 80D15DF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D15DF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D15DFC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D15E00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D15E04  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D15E08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D15E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D15E10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D15E14  A8 85 05 E0 */	lha r4, 0x5e0(r5)
/* 80D15E18  4B 2F 65 C4 */	b mDoMtx_YrotS__FPA4_fs
/* 80D15E1C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80D15E20  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D15E24  7C 80 F2 14 */	add r4, r0, r30
/* 80D15E28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D15E2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D15E30  7C 65 1B 78 */	mr r5, r3
/* 80D15E34  4B 63 06 B0 */	b PSMTXConcat
/* 80D15E38  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D15E3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D15E40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D15E44  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D15E48  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D15E4C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D15E50  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D15E54  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80D15E58  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80D15E5C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80D15E60  7C 80 F2 14 */	add r4, r0, r30
/* 80D15E64  4B 63 06 4C */	b PSMTXCopy
/* 80D15E68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D15E6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D15E70  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80D15E74  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80D15E78  4B 63 06 38 */	b PSMTXCopy
lbl_80D15E7C:
/* 80D15E7C  38 60 00 01 */	li r3, 1
/* 80D15E80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D15E84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D15E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D15E8C  7C 08 03 A6 */	mtlr r0
/* 80D15E90  38 21 00 20 */	addi r1, r1, 0x20
/* 80D15E94  4E 80 00 20 */	blr 
