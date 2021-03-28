lbl_8061E1D8:
/* 8061E1D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061E1DC  7C 08 02 A6 */	mflr r0
/* 8061E1E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061E1E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8061E1E8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8061E1EC  7C 7E 1B 78 */	mr r30, r3
/* 8061E1F0  3C 60 80 62 */	lis r3, lit_3678@ha
/* 8061E1F4  3B E3 EA 38 */	addi r31, r3, lit_3678@l
/* 8061E1F8  A8 1E 05 CE */	lha r0, 0x5ce(r30)
/* 8061E1FC  2C 00 00 00 */	cmpwi r0, 0
/* 8061E200  3C 60 80 62 */	lis r3, boss@ha
/* 8061E204  38 63 EA E8 */	addi r3, r3, boss@l
/* 8061E208  80 63 00 00 */	lwz r3, 0(r3)
/* 8061E20C  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 8061E210  80 63 00 04 */	lwz r3, 4(r3)
/* 8061E214  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061E218  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8061E21C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8061E220  38 03 00 08 */	addi r0, r3, 8
/* 8061E224  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8061E228  7C 64 02 14 */	add r3, r4, r0
/* 8061E22C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8061E230  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8061E234  4B D2 82 7C */	b PSMTXCopy
/* 8061E238  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061E23C  38 83 D4 70 */	addi r4, r3, now__14mDoMtx_stack_c@l
/* 8061E240  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8061E244  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8061E248  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8061E24C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8061E250  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8061E254  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8061E258  3C 60 80 62 */	lis r3, boss@ha
/* 8061E25C  38 63 EA E8 */	addi r3, r3, boss@l
/* 8061E260  80 63 00 00 */	lwz r3, 0(r3)
/* 8061E264  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 8061E268  80 63 00 04 */	lwz r3, 4(r3)
/* 8061E26C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8061E270  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8061E274  4B D2 82 3C */	b PSMTXCopy
/* 8061E278  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8061E27C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8061E280  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 8061E284  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 8061E288  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061E28C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061E290  3C 00 43 30 */	lis r0, 0x4330
/* 8061E294  90 01 00 30 */	stw r0, 0x30(r1)
/* 8061E298  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8061E29C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061E2A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8061E2A4  EC 23 00 2A */	fadds f1, f3, f0
/* 8061E2A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061E2AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8061E2B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8061E2B4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8061E2B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061E2BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061E2C0  38 81 00 20 */	addi r4, r1, 0x20
/* 8061E2C4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8061E2C8  4B D2 8A A4 */	b PSMTXMultVec
/* 8061E2CC  38 61 00 08 */	addi r3, r1, 8
/* 8061E2D0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8061E2D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8061E2D8  4B C4 88 5C */	b __mi__4cXyzCFRC3Vec
/* 8061E2DC  C0 21 00 08 */	lfs f1, 8(r1)
/* 8061E2E0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8061E2E4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8061E2E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8061E2EC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8061E2F0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8061E2F4  4B C4 93 80 */	b cM_atan2s__Fff
/* 8061E2F8  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 8061E2FC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8061E300  EC 20 00 32 */	fmuls f1, f0, f0
/* 8061E304  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8061E308  EC 00 00 32 */	fmuls f0, f0, f0
/* 8061E30C  EC 41 00 2A */	fadds f2, f1, f0
/* 8061E310  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061E314  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8061E318  40 81 00 0C */	ble lbl_8061E324
/* 8061E31C  FC 00 10 34 */	frsqrte f0, f2
/* 8061E320  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8061E324:
/* 8061E324  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8061E328  4B C4 93 4C */	b cM_atan2s__Fff
/* 8061E32C  7C 03 00 D0 */	neg r0, r3
/* 8061E330  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8061E334  7F C3 F3 78 */	mr r3, r30
/* 8061E338  4B FF FB 15 */	bl dmcalc__FP11b_oh2_class
/* 8061E33C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061E340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061E344  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8061E348  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8061E34C  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8061E350  4B D2 85 98 */	b PSMTXTrans
/* 8061E354  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061E358  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061E35C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8061E360  4B 9E E0 D4 */	b mDoMtx_YrotM__FPA4_fs
/* 8061E364  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061E368  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061E36C  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 8061E370  4B 9E E0 2C */	b mDoMtx_XrotM__FPA4_fs
/* 8061E374  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E378  80 83 00 04 */	lwz r4, 4(r3)
/* 8061E37C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8061E380  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8061E384  38 84 00 24 */	addi r4, r4, 0x24
/* 8061E388  4B D2 81 28 */	b PSMTXCopy
/* 8061E38C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8061E390  7C 03 07 74 */	extsb r3, r0
/* 8061E394  4B A0 EC D8 */	b dComIfGp_getReverb__Fi
/* 8061E398  7C 65 1B 78 */	mr r5, r3
/* 8061E39C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E3A0  38 80 00 00 */	li r4, 0
/* 8061E3A4  4B 9F 2D 0C */	b play__16mDoExt_McaMorfSOFUlSc
/* 8061E3A8  3C 60 80 62 */	lis r3, boss@ha
/* 8061E3AC  38 63 EA E8 */	addi r3, r3, boss@l
/* 8061E3B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8061E3B4  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8061E3B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061E3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8061E3C0  4C 40 13 82 */	cror 2, 0, 2
/* 8061E3C4  40 82 00 1C */	bne lbl_8061E3E0
/* 8061E3C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061E3CC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061E3D0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8061E3D4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061E3D8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8061E3DC  48 00 00 14 */	b lbl_8061E3F0
lbl_8061E3E0:
/* 8061E3E0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061E3E4  4B 9E F0 44 */	b play__14mDoExt_baseAnmFv
/* 8061E3E8  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061E3EC  4B 9E F0 3C */	b play__14mDoExt_baseAnmFv
lbl_8061E3F0:
/* 8061E3F0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E3F4  4B 9F 2D F8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8061E3F8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8061E3FC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8061E400  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061E404  7C 08 03 A6 */	mtlr r0
/* 8061E408  38 21 00 40 */	addi r1, r1, 0x40
/* 8061E40C  4E 80 00 20 */	blr 
