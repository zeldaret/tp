lbl_8067D21C:
/* 8067D21C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067D220  7C 08 02 A6 */	mflr r0
/* 8067D224  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067D228  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8067D22C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8067D230  7C 7E 1B 78 */	mr r30, r3
/* 8067D234  3C 60 80 68 */	lis r3, lit_3983@ha
/* 8067D238  3B E3 E8 80 */	addi r31, r3, lit_3983@l
/* 8067D23C  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 8067D240  2C 00 00 01 */	cmpwi r0, 1
/* 8067D244  41 82 00 8C */	beq lbl_8067D2D0
/* 8067D248  40 80 01 AC */	bge lbl_8067D3F4
/* 8067D24C  2C 00 00 00 */	cmpwi r0, 0
/* 8067D250  40 80 00 08 */	bge lbl_8067D258
/* 8067D254  48 00 01 A0 */	b lbl_8067D3F4
lbl_8067D258:
/* 8067D258  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8067D25C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8067D260  38 00 00 01 */	li r0, 1
/* 8067D264  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 8067D268  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 8067D26C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8067D270  41 82 00 10 */	beq lbl_8067D280
/* 8067D274  38 00 27 10 */	li r0, 0x2710
/* 8067D278  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
/* 8067D27C  48 00 00 0C */	b lbl_8067D288
lbl_8067D280:
/* 8067D280  38 00 00 64 */	li r0, 0x64
/* 8067D284  B0 1E 05 C6 */	sth r0, 0x5c6(r30)
lbl_8067D288:
/* 8067D288  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8067D28C  4B BE A6 C8 */	b cM_rndF__Ff
/* 8067D290  FC 00 08 1E */	fctiwz f0, f1
/* 8067D294  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8067D298  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8067D29C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8067D2A0  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 8067D2A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067D2A8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8067D2AC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8067D2B0  38 81 00 0C */	addi r4, r1, 0xc
/* 8067D2B4  4B 99 C5 44 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8067D2B8  28 03 00 00 */	cmplwi r3, 0
/* 8067D2BC  41 82 00 14 */	beq lbl_8067D2D0
/* 8067D2C0  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 8067D2C4  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8067D2C8  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 8067D2CC  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
lbl_8067D2D0:
/* 8067D2D0  88 1E 05 B9 */	lbz r0, 0x5b9(r30)
/* 8067D2D4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8067D2D8  41 82 00 EC */	beq lbl_8067D3C4
/* 8067D2DC  38 00 00 56 */	li r0, 0x56
/* 8067D2E0  B0 01 00 08 */	sth r0, 8(r1)
/* 8067D2E4  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 8067D2E8  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8067D2EC  38 81 00 08 */	addi r4, r1, 8
/* 8067D2F0  4B 99 C5 08 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8067D2F4  7C 64 1B 79 */	or. r4, r3, r3
/* 8067D2F8  41 82 00 BC */	beq lbl_8067D3B4
/* 8067D2FC  38 61 00 10 */	addi r3, r1, 0x10
/* 8067D300  38 84 05 38 */	addi r4, r4, 0x538
/* 8067D304  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8067D308  4B BE 98 2C */	b __mi__4cXyzCFRC3Vec
/* 8067D30C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8067D310  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8067D314  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8067D318  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8067D31C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8067D320  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8067D324  4B BE A3 50 */	b cM_atan2s__Fff
/* 8067D328  7C 64 1B 78 */	mr r4, r3
/* 8067D32C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8067D330  7C 00 20 50 */	subf r0, r0, r4
/* 8067D334  7C 00 07 34 */	extsh r0, r0
/* 8067D338  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8067D33C  40 80 00 68 */	bge lbl_8067D3A4
/* 8067D340  2C 00 F0 00 */	cmpwi r0, -4096
/* 8067D344  40 81 00 60 */	ble lbl_8067D3A4
/* 8067D348  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8067D34C  38 A0 00 02 */	li r5, 2
/* 8067D350  38 C0 00 19 */	li r6, 0x19
/* 8067D354  4B BF 32 B4 */	b cLib_addCalcAngleS2__FPssss
/* 8067D358  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8067D35C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8067D360  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8067D364  EC 00 00 32 */	fmuls f0, f0, f0
/* 8067D368  EC 41 00 2A */	fadds f2, f1, f0
/* 8067D36C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067D370  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8067D374  40 81 00 0C */	ble lbl_8067D380
/* 8067D378  FC 00 10 34 */	frsqrte f0, f2
/* 8067D37C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8067D380:
/* 8067D380  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8067D384  4B BE A2 F0 */	b cM_atan2s__Fff
/* 8067D388  7C 03 00 D0 */	neg r0, r3
/* 8067D38C  7C 04 07 34 */	extsh r4, r0
/* 8067D390  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8067D394  38 A0 00 02 */	li r5, 2
/* 8067D398  38 C0 00 19 */	li r6, 0x19
/* 8067D39C  4B BF 32 6C */	b cLib_addCalcAngleS2__FPssss
/* 8067D3A0  48 00 00 30 */	b lbl_8067D3D0
lbl_8067D3A4:
/* 8067D3A4  A8 7E 04 DC */	lha r3, 0x4dc(r30)
/* 8067D3A8  38 03 00 41 */	addi r0, r3, 0x41
/* 8067D3AC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8067D3B0  48 00 00 20 */	b lbl_8067D3D0
lbl_8067D3B4:
/* 8067D3B4  A8 7E 04 DC */	lha r3, 0x4dc(r30)
/* 8067D3B8  38 03 00 41 */	addi r0, r3, 0x41
/* 8067D3BC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8067D3C0  48 00 00 10 */	b lbl_8067D3D0
lbl_8067D3C4:
/* 8067D3C4  A8 7E 04 DC */	lha r3, 0x4dc(r30)
/* 8067D3C8  38 03 00 41 */	addi r0, r3, 0x41
/* 8067D3CC  B0 1E 04 DC */	sth r0, 0x4dc(r30)
lbl_8067D3D0:
/* 8067D3D0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8067D3D4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8067D3D8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8067D3DC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 8067D3E0  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 8067D3E4  2C 00 00 00 */	cmpwi r0, 0
/* 8067D3E8  40 82 00 0C */	bne lbl_8067D3F4
/* 8067D3EC  7F C3 F3 78 */	mr r3, r30
/* 8067D3F0  4B 99 C8 8C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8067D3F4:
/* 8067D3F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8067D3F8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8067D3FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8067D400  7C 08 03 A6 */	mtlr r0
/* 8067D404  38 21 00 40 */	addi r1, r1, 0x40
/* 8067D408  4E 80 00 20 */	blr 
