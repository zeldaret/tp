lbl_8098D26C:
/* 8098D26C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8098D270  7C 08 02 A6 */	mflr r0
/* 8098D274  90 01 00 54 */	stw r0, 0x54(r1)
/* 8098D278  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8098D27C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8098D280  7C 7E 1B 78 */	mr r30, r3
/* 8098D284  3C 60 80 99 */	lis r3, sLoadResPat_Normal@ha /* 0x809918F8@ha */
/* 8098D288  3B E3 18 F8 */	addi r31, r3, sLoadResPat_Normal@l /* 0x809918F8@l */
/* 8098D28C  A8 1E 0E 02 */	lha r0, 0xe02(r30)
/* 8098D290  2C 00 00 01 */	cmpwi r0, 1
/* 8098D294  40 82 00 34 */	bne lbl_8098D2C8
/* 8098D298  38 60 00 00 */	li r3, 0
/* 8098D29C  7C 66 1B 78 */	mr r6, r3
/* 8098D2A0  7C 65 1B 78 */	mr r5, r3
/* 8098D2A4  7C 64 1B 78 */	mr r4, r3
/* 8098D2A8  38 00 00 03 */	li r0, 3
/* 8098D2AC  7C 09 03 A6 */	mtctr r0
lbl_8098D2B0:
/* 8098D2B0  7C FE 1A 14 */	add r7, r30, r3
/* 8098D2B4  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 8098D2B8  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 8098D2BC  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 8098D2C0  38 63 00 06 */	addi r3, r3, 6
/* 8098D2C4  42 00 FF EC */	bdnz lbl_8098D2B0
lbl_8098D2C8:
/* 8098D2C8  7F C3 F3 78 */	mr r3, r30
/* 8098D2CC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098D2D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8098D2D4  7D 89 03 A6 */	mtctr r12
/* 8098D2D8  4E 80 04 21 */	bctrl 
/* 8098D2DC  7F C3 F3 78 */	mr r3, r30
/* 8098D2E0  48 00 13 B1 */	bl lookat__11daNpcChin_cFv
/* 8098D2E4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8098D2E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8098D2EC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8098D2F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8098D2F4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8098D2F8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8098D2FC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8098D300  80 63 00 04 */	lwz r3, 4(r3)
/* 8098D304  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8098D308  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8098D30C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8098D310  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8098D314  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8098D318  4B 9B 91 99 */	bl PSMTXCopy
/* 8098D31C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8098D320  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8098D324  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8098D328  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 8098D32C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8098D330  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 8098D334  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8098D338  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 8098D33C  38 81 00 30 */	addi r4, r1, 0x30
/* 8098D340  38 BE 05 38 */	addi r5, r30, 0x538
/* 8098D344  4B 9B 9A 29 */	bl PSMTXMultVec
/* 8098D348  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8098D34C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8098D350  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8098D354  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8098D358  38 81 00 30 */	addi r4, r1, 0x30
/* 8098D35C  7C 85 23 78 */	mr r5, r4
/* 8098D360  4B 9B 9A 0D */	bl PSMTXMultVec
/* 8098D364  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8098D368  38 81 00 30 */	addi r4, r1, 0x30
/* 8098D36C  4B 8E 39 09 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8098D370  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 8098D374  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8098D378  38 81 00 30 */	addi r4, r1, 0x30
/* 8098D37C  4B 8E 38 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8098D380  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 8098D384  80 9E 0C 0C */	lwz r4, 0xc0c(r30)
/* 8098D388  28 04 00 00 */	cmplwi r4, 0
/* 8098D38C  41 82 01 7C */	beq lbl_8098D508
/* 8098D390  38 61 00 18 */	addi r3, r1, 0x18
/* 8098D394  38 BE 05 38 */	addi r5, r30, 0x538
/* 8098D398  4B 8D 97 9D */	bl __mi__4cXyzCFRC3Vec
/* 8098D39C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8098D3A0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8098D3A4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8098D3A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8098D3AC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8098D3B0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8098D3B4  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 8098D3B8  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 8098D3BC  7C 03 02 14 */	add r0, r3, r0
/* 8098D3C0  7C 00 00 D0 */	neg r0, r0
/* 8098D3C4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 8098D3C8  4B 8D A2 AD */	bl cM_atan2s__Fff
/* 8098D3CC  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 8098D3D0  7C 00 1A 14 */	add r0, r0, r3
/* 8098D3D4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 8098D3D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8098D3DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8098D3E0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8098D3E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8098D3E8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8098D3EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8098D3F0  38 61 00 0C */	addi r3, r1, 0xc
/* 8098D3F4  4B 9B 9D 45 */	bl PSVECSquareMag
/* 8098D3F8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8098D3FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8098D400  40 81 00 58 */	ble lbl_8098D458
/* 8098D404  FC 00 08 34 */	frsqrte f0, f1
/* 8098D408  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8098D40C  FC 44 00 32 */	fmul f2, f4, f0
/* 8098D410  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8098D414  FC 00 00 32 */	fmul f0, f0, f0
/* 8098D418  FC 01 00 32 */	fmul f0, f1, f0
/* 8098D41C  FC 03 00 28 */	fsub f0, f3, f0
/* 8098D420  FC 02 00 32 */	fmul f0, f2, f0
/* 8098D424  FC 44 00 32 */	fmul f2, f4, f0
/* 8098D428  FC 00 00 32 */	fmul f0, f0, f0
/* 8098D42C  FC 01 00 32 */	fmul f0, f1, f0
/* 8098D430  FC 03 00 28 */	fsub f0, f3, f0
/* 8098D434  FC 02 00 32 */	fmul f0, f2, f0
/* 8098D438  FC 44 00 32 */	fmul f2, f4, f0
/* 8098D43C  FC 00 00 32 */	fmul f0, f0, f0
/* 8098D440  FC 01 00 32 */	fmul f0, f1, f0
/* 8098D444  FC 03 00 28 */	fsub f0, f3, f0
/* 8098D448  FC 02 00 32 */	fmul f0, f2, f0
/* 8098D44C  FC 41 00 32 */	fmul f2, f1, f0
/* 8098D450  FC 40 10 18 */	frsp f2, f2
/* 8098D454  48 00 00 90 */	b lbl_8098D4E4
lbl_8098D458:
/* 8098D458  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8098D45C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8098D460  40 80 00 10 */	bge lbl_8098D470
/* 8098D464  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8098D468  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8098D46C  48 00 00 78 */	b lbl_8098D4E4
lbl_8098D470:
/* 8098D470  D0 21 00 08 */	stfs f1, 8(r1)
/* 8098D474  80 81 00 08 */	lwz r4, 8(r1)
/* 8098D478  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8098D47C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8098D480  7C 03 00 00 */	cmpw r3, r0
/* 8098D484  41 82 00 14 */	beq lbl_8098D498
/* 8098D488  40 80 00 40 */	bge lbl_8098D4C8
/* 8098D48C  2C 03 00 00 */	cmpwi r3, 0
/* 8098D490  41 82 00 20 */	beq lbl_8098D4B0
/* 8098D494  48 00 00 34 */	b lbl_8098D4C8
lbl_8098D498:
/* 8098D498  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8098D49C  41 82 00 0C */	beq lbl_8098D4A8
/* 8098D4A0  38 00 00 01 */	li r0, 1
/* 8098D4A4  48 00 00 28 */	b lbl_8098D4CC
lbl_8098D4A8:
/* 8098D4A8  38 00 00 02 */	li r0, 2
/* 8098D4AC  48 00 00 20 */	b lbl_8098D4CC
lbl_8098D4B0:
/* 8098D4B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8098D4B4  41 82 00 0C */	beq lbl_8098D4C0
/* 8098D4B8  38 00 00 05 */	li r0, 5
/* 8098D4BC  48 00 00 10 */	b lbl_8098D4CC
lbl_8098D4C0:
/* 8098D4C0  38 00 00 03 */	li r0, 3
/* 8098D4C4  48 00 00 08 */	b lbl_8098D4CC
lbl_8098D4C8:
/* 8098D4C8  38 00 00 04 */	li r0, 4
lbl_8098D4CC:
/* 8098D4CC  2C 00 00 01 */	cmpwi r0, 1
/* 8098D4D0  40 82 00 10 */	bne lbl_8098D4E0
/* 8098D4D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8098D4D8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8098D4DC  48 00 00 08 */	b lbl_8098D4E4
lbl_8098D4E0:
/* 8098D4E0  FC 40 08 90 */	fmr f2, f1
lbl_8098D4E4:
/* 8098D4E4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8098D4E8  4B 8D A1 8D */	bl cM_atan2s__Fff
/* 8098D4EC  7C 03 00 D0 */	neg r0, r3
/* 8098D4F0  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 8098D4F4  A8 7E 08 FC */	lha r3, 0x8fc(r30)
/* 8098D4F8  A8 1E 09 02 */	lha r0, 0x902(r30)
/* 8098D4FC  7C 03 02 14 */	add r0, r3, r0
/* 8098D500  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 8098D504  48 00 00 10 */	b lbl_8098D514
lbl_8098D508:
/* 8098D508  38 00 00 00 */	li r0, 0
/* 8098D50C  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 8098D510  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_8098D514:
/* 8098D514  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 8098D518  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 8098D51C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8098D520  EC 21 00 2A */	fadds f1, f1, f0
/* 8098D524  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 8098D528  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8098D52C  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 8098D530  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 8098D534  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8098D538  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8098D53C  4B 8E 1C A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8098D540  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8098D544  38 9F 00 14 */	addi r4, r31, 0x14
/* 8098D548  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8098D54C  4B 8E 1C AD */	bl SetH__8cM3dGCylFf
/* 8098D550  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8098D554  38 9F 00 14 */	addi r4, r31, 0x14
/* 8098D558  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8098D55C  4B 8E 1C A5 */	bl SetR__8cM3dGCylFf
/* 8098D560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098D564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098D568  38 63 23 3C */	addi r3, r3, 0x233c
/* 8098D56C  38 9E 0C 7C */	addi r4, r30, 0xc7c
/* 8098D570  4B 8D 76 39 */	bl Set__4cCcSFP8cCcD_Obj
/* 8098D574  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8098D578  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8098D57C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8098D580  7C 08 03 A6 */	mtlr r0
/* 8098D584  38 21 00 50 */	addi r1, r1, 0x50
/* 8098D588  4E 80 00 20 */	blr 
