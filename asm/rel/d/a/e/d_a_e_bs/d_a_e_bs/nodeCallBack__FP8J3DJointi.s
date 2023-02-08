lbl_8068E2D4:
/* 8068E2D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068E2D8  7C 08 02 A6 */	mflr r0
/* 8068E2DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068E2E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8068E2E4  4B CD 3E F5 */	bl _savegpr_28
/* 8068E2E8  2C 04 00 00 */	cmpwi r4, 0
/* 8068E2EC  40 82 00 CC */	bne lbl_8068E3B8
/* 8068E2F0  A3 83 00 14 */	lhz r28, 0x14(r3)
/* 8068E2F4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8068E2F8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8068E2FC  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8068E300  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8068E304  28 1D 00 00 */	cmplwi r29, 0
/* 8068E308  41 82 00 B0 */	beq lbl_8068E3B8
/* 8068E30C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8068E310  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8068E314  1F DC 00 30 */	mulli r30, r28, 0x30
/* 8068E318  7C 60 F2 14 */	add r3, r0, r30
/* 8068E31C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8068E320  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8068E324  80 84 00 00 */	lwz r4, 0(r4)
/* 8068E328  4B CB 81 89 */	bl PSMTXCopy
/* 8068E32C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 8068E330  40 82 00 54 */	bne lbl_8068E384
/* 8068E334  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068E338  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068E33C  80 63 00 00 */	lwz r3, 0(r3)
/* 8068E340  A8 9D 06 AC */	lha r4, 0x6ac(r29)
/* 8068E344  4B 97 E0 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068E348  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068E34C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068E350  80 63 00 00 */	lwz r3, 0(r3)
/* 8068E354  A8 9D 06 AA */	lha r4, 0x6aa(r29)
/* 8068E358  A8 1D 06 B2 */	lha r0, 0x6b2(r29)
/* 8068E35C  7C 04 02 14 */	add r0, r4, r0
/* 8068E360  7C 04 07 34 */	extsh r4, r0
/* 8068E364  4B 97 E0 39 */	bl mDoMtx_XrotM__FPA4_fs
/* 8068E368  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068E36C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068E370  80 63 00 00 */	lwz r3, 0(r3)
/* 8068E374  A8 1D 06 B0 */	lha r0, 0x6b0(r29)
/* 8068E378  7C 00 00 D0 */	neg r0, r0
/* 8068E37C  7C 04 07 34 */	extsh r4, r0
/* 8068E380  4B 97 E1 4D */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8068E384:
/* 8068E384  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068E388  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068E38C  80 63 00 00 */	lwz r3, 0(r3)
/* 8068E390  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8068E394  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8068E398  7C 80 F2 14 */	add r4, r0, r30
/* 8068E39C  4B CB 81 15 */	bl PSMTXCopy
/* 8068E3A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8068E3A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8068E3A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8068E3AC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8068E3B0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8068E3B4  4B CB 80 FD */	bl PSMTXCopy
lbl_8068E3B8:
/* 8068E3B8  38 60 00 01 */	li r3, 1
/* 8068E3BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8068E3C0  4B CD 3E 65 */	bl _restgpr_28
/* 8068E3C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068E3C8  7C 08 03 A6 */	mtlr r0
/* 8068E3CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8068E3D0  4E 80 00 20 */	blr 
