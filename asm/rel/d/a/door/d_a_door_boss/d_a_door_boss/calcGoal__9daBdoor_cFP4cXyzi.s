lbl_8066FF04:
/* 8066FF04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8066FF08  7C 08 02 A6 */	mflr r0
/* 8066FF0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8066FF10  39 61 00 30 */	addi r11, r1, 0x30
/* 8066FF14  4B CF 22 C5 */	bl _savegpr_28
/* 8066FF18  7C 7D 1B 78 */	mr r29, r3
/* 8066FF1C  7C 9E 23 78 */	mr r30, r4
/* 8066FF20  7C BC 2B 78 */	mr r28, r5
/* 8066FF24  3C 60 80 67 */	lis r3, lit_3726@ha /* 0x80670914@ha */
/* 8066FF28  3B E3 09 14 */	addi r31, r3, lit_3726@l /* 0x80670914@l */
/* 8066FF2C  38 61 00 08 */	addi r3, r1, 8
/* 8066FF30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066FF34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8066FF38  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8066FF3C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8066FF40  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8066FF44  4B BF 6B F1 */	bl __mi__4cXyzCFRC3Vec
/* 8066FF48  C0 01 00 08 */	lfs f0, 8(r1)
/* 8066FF4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8066FF50  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8066FF54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8066FF58  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8066FF5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066FF60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066FF64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066FF68  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8066FF6C  7C 00 00 D0 */	neg r0, r0
/* 8066FF70  7C 04 07 34 */	extsh r4, r0
/* 8066FF74  4B 99 C4 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 8066FF78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066FF7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066FF80  38 81 00 14 */	addi r4, r1, 0x14
/* 8066FF84  7C 85 23 78 */	mr r5, r4
/* 8066FF88  4B CD 6D E5 */	bl PSMTXMultVec
/* 8066FF8C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8066FF90  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8066FF94  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066FF98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8066FF9C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8066FFA0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8066FFA4  2C 1C 00 00 */	cmpwi r28, 0
/* 8066FFA8  40 82 00 10 */	bne lbl_8066FFB8
/* 8066FFAC  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8066FFB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066FFB4  48 00 00 0C */	b lbl_8066FFC0
lbl_8066FFB8:
/* 8066FFB8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066FFBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8066FFC0:
/* 8066FFC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066FFC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066FFC8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8066FFCC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8066FFD0  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 8066FFD4  4B CD 69 15 */	bl PSMTXTrans
/* 8066FFD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066FFDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066FFE0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8066FFE4  4B 99 C4 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 8066FFE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8066FFEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8066FFF0  38 81 00 14 */	addi r4, r1, 0x14
/* 8066FFF4  7C 85 23 78 */	mr r5, r4
/* 8066FFF8  4B CD 6D 75 */	bl PSMTXMultVec
/* 8066FFFC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80670000  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80670004  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80670008  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8067000C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80670010  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80670014  39 61 00 30 */	addi r11, r1, 0x30
/* 80670018  4B CF 22 0D */	bl _restgpr_28
/* 8067001C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80670020  7C 08 03 A6 */	mtlr r0
/* 80670024  38 21 00 30 */	addi r1, r1, 0x30
/* 80670028  4E 80 00 20 */	blr 
