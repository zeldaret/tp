lbl_80671954:
/* 80671954  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80671958  7C 08 02 A6 */	mflr r0
/* 8067195C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80671960  39 61 00 30 */	addi r11, r1, 0x30
/* 80671964  4B CF 08 75 */	bl _savegpr_28
/* 80671968  7C 7D 1B 78 */	mr r29, r3
/* 8067196C  7C 9E 23 78 */	mr r30, r4
/* 80671970  7C BC 2B 78 */	mr r28, r5
/* 80671974  3C 60 80 67 */	lis r3, l_door_open_demo@ha /* 0x806724C8@ha */
/* 80671978  3B E3 24 C8 */	addi r31, r3, l_door_open_demo@l /* 0x806724C8@l */
/* 8067197C  38 61 00 08 */	addi r3, r1, 8
/* 80671980  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80671984  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80671988  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8067198C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80671990  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80671994  4B BF 51 A1 */	bl __mi__4cXyzCFRC3Vec
/* 80671998  C0 01 00 08 */	lfs f0, 8(r1)
/* 8067199C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806719A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806719A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806719A8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806719AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806719B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806719B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806719B8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806719BC  7C 00 00 D0 */	neg r0, r0
/* 806719C0  7C 04 07 34 */	extsh r4, r0
/* 806719C4  4B 99 AA 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 806719C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806719CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806719D0  38 81 00 14 */	addi r4, r1, 0x14
/* 806719D4  7C 85 23 78 */	mr r5, r4
/* 806719D8  4B CD 53 95 */	bl PSMTXMultVec
/* 806719DC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806719E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806719E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806719E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806719EC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806719F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806719F4  2C 1C 00 00 */	cmpwi r28, 0
/* 806719F8  40 82 00 10 */	bne lbl_80671A08
/* 806719FC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80671A00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80671A04  48 00 00 0C */	b lbl_80671A10
lbl_80671A08:
/* 80671A08  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80671A0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80671A10:
/* 80671A10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80671A14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80671A18  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80671A1C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80671A20  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80671A24  4B CD 4E C5 */	bl PSMTXTrans
/* 80671A28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80671A2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80671A30  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80671A34  4B 99 AA 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 80671A38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80671A3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80671A40  38 81 00 14 */	addi r4, r1, 0x14
/* 80671A44  7C 85 23 78 */	mr r5, r4
/* 80671A48  4B CD 53 25 */	bl PSMTXMultVec
/* 80671A4C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80671A50  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80671A54  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80671A58  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80671A5C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80671A60  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80671A64  39 61 00 30 */	addi r11, r1, 0x30
/* 80671A68  4B CF 07 BD */	bl _restgpr_28
/* 80671A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80671A70  7C 08 03 A6 */	mtlr r0
/* 80671A74  38 21 00 30 */	addi r1, r1, 0x30
/* 80671A78  4E 80 00 20 */	blr 
