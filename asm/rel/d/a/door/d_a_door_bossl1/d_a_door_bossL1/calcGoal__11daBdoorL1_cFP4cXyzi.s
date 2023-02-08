lbl_804E3DE8:
/* 804E3DE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E3DEC  7C 08 02 A6 */	mflr r0
/* 804E3DF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E3DF4  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3DF8  4B E7 E3 E1 */	bl _savegpr_28
/* 804E3DFC  7C 7D 1B 78 */	mr r29, r3
/* 804E3E00  7C 9E 23 78 */	mr r30, r4
/* 804E3E04  7C BC 2B 78 */	mr r28, r5
/* 804E3E08  3C 60 80 4E */	lis r3, l_staff_name@ha /* 0x804E4A14@ha */
/* 804E3E0C  3B E3 4A 14 */	addi r31, r3, l_staff_name@l /* 0x804E4A14@l */
/* 804E3E10  38 61 00 08 */	addi r3, r1, 8
/* 804E3E14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E3E18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E3E1C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804E3E20  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 804E3E24  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804E3E28  4B D8 2D 0D */	bl __mi__4cXyzCFRC3Vec
/* 804E3E2C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804E3E30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E3E34  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E3E38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E3E3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E3E40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E3E44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E3E48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E3E4C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804E3E50  7C 00 00 D0 */	neg r0, r0
/* 804E3E54  7C 04 07 34 */	extsh r4, r0
/* 804E3E58  4B B2 85 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 804E3E5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E3E60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E3E64  38 81 00 14 */	addi r4, r1, 0x14
/* 804E3E68  7C 85 23 78 */	mr r5, r4
/* 804E3E6C  4B E6 2F 01 */	bl PSMTXMultVec
/* 804E3E70  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804E3E74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E3E78  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E3E7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E3E80  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804E3E84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E3E88  2C 1C 00 00 */	cmpwi r28, 0
/* 804E3E8C  40 82 00 10 */	bne lbl_804E3E9C
/* 804E3E90  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 804E3E94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E3E98  48 00 00 0C */	b lbl_804E3EA4
lbl_804E3E9C:
/* 804E3E9C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 804E3EA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_804E3EA4:
/* 804E3EA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E3EA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E3EAC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 804E3EB0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 804E3EB4  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 804E3EB8  4B E6 2A 31 */	bl PSMTXTrans
/* 804E3EBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E3EC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E3EC4  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804E3EC8  4B B2 85 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 804E3ECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804E3ED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804E3ED4  38 81 00 14 */	addi r4, r1, 0x14
/* 804E3ED8  7C 85 23 78 */	mr r5, r4
/* 804E3EDC  4B E6 2E 91 */	bl PSMTXMultVec
/* 804E3EE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E3EE4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 804E3EE8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804E3EEC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 804E3EF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804E3EF4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 804E3EF8  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3EFC  4B E7 E3 29 */	bl _restgpr_28
/* 804E3F00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E3F04  7C 08 03 A6 */	mtlr r0
/* 804E3F08  38 21 00 30 */	addi r1, r1, 0x30
/* 804E3F0C  4E 80 00 20 */	blr 
