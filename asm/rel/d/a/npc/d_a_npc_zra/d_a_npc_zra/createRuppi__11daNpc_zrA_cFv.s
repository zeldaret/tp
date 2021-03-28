lbl_80B86E78:
/* 80B86E78  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B86E7C  7C 08 02 A6 */	mflr r0
/* 80B86E80  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B86E84  39 61 00 50 */	addi r11, r1, 0x50
/* 80B86E88  4B 7D B3 54 */	b _savegpr_29
/* 80B86E8C  7C 7D 1B 78 */	mr r29, r3
/* 80B86E90  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B86E94  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B86E98  38 60 00 00 */	li r3, 0
/* 80B86E9C  38 80 00 05 */	li r4, 5
/* 80B86EA0  4B FF 88 45 */	bl func_80B7F6E4
/* 80B86EA4  38 80 00 04 */	li r4, 4
/* 80B86EA8  7C 04 18 10 */	subfc r0, r4, r3
/* 80B86EAC  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80B86EB0  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80B86EB4  7C 60 21 10 */	subfe r3, r0, r4
/* 80B86EB8  38 03 00 02 */	addi r0, r3, 2
/* 80B86EBC  7C 1E 03 78 */	mr r30, r0
/* 80B86EC0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B86EC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B86EC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B86ECC  C0 1F 08 50 */	lfs f0, 0x850(r31)
/* 80B86ED0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B86ED4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B86ED8  4B 48 5E 8C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B86EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B86EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B86EE4  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 80B86EE8  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80B86EEC  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 80B86EF0  4B 48 53 B0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B86EF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B86EF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B86EFC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B86F00  7C 85 23 78 */	mr r5, r4
/* 80B86F04  4B 7B FE 68 */	b PSMTXMultVec
/* 80B86F08  38 61 00 30 */	addi r3, r1, 0x30
/* 80B86F0C  38 81 00 18 */	addi r4, r1, 0x18
/* 80B86F10  4B 49 69 80 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B86F14  2C 03 00 00 */	cmpwi r3, 0
/* 80B86F18  41 82 00 14 */	beq lbl_80B86F2C
/* 80B86F1C  C0 3F 07 C8 */	lfs f1, 0x7c8(r31)
/* 80B86F20  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B86F24  EC 01 00 2A */	fadds f0, f1, f0
/* 80B86F28  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80B86F2C:
/* 80B86F2C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B86F30  38 80 00 00 */	li r4, 0
/* 80B86F34  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 80B86F38  38 C0 00 00 */	li r6, 0
/* 80B86F3C  4B 6E 04 B8 */	b __ct__5csXyzFsss
/* 80B86F40  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B86F44  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B86F48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B86F4C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B86F50  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B86F54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B86F58  C0 1F 07 C8 */	lfs f0, 0x7c8(r31)
/* 80B86F5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B86F60  38 00 00 00 */	li r0, 0
/* 80B86F64  90 01 00 08 */	stw r0, 8(r1)
/* 80B86F68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B86F6C  38 61 00 30 */	addi r3, r1, 0x30
/* 80B86F70  7F C4 F3 78 */	mr r4, r30
/* 80B86F74  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B86F78  7C 05 07 74 */	extsb r5, r0
/* 80B86F7C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80B86F80  38 E1 00 24 */	addi r7, r1, 0x24
/* 80B86F84  39 01 00 14 */	addi r8, r1, 0x14
/* 80B86F88  39 21 00 10 */	addi r9, r1, 0x10
/* 80B86F8C  39 40 FF FF */	li r10, -1
/* 80B86F90  4B 49 56 20 */	b fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i
/* 80B86F94  39 61 00 50 */	addi r11, r1, 0x50
/* 80B86F98  4B 7D B2 90 */	b _restgpr_29
/* 80B86F9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B86FA0  7C 08 03 A6 */	mtlr r0
/* 80B86FA4  38 21 00 50 */	addi r1, r1, 0x50
/* 80B86FA8  4E 80 00 20 */	blr 
