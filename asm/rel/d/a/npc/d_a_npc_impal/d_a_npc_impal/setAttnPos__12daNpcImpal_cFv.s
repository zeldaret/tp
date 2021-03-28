lbl_80A0B45C:
/* 80A0B45C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A0B460  7C 08 02 A6 */	mflr r0
/* 80A0B464  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A0B468  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80A0B46C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80A0B470  7C 7E 1B 78 */	mr r30, r3
/* 80A0B474  3C 60 80 A1 */	lis r3, m__18daNpcImpal_Param_c@ha
/* 80A0B478  3B E3 C2 70 */	addi r31, r3, m__18daNpcImpal_Param_c@l
/* 80A0B47C  A8 1E 0D E4 */	lha r0, 0xde4(r30)
/* 80A0B480  2C 00 00 01 */	cmpwi r0, 1
/* 80A0B484  40 82 00 34 */	bne lbl_80A0B4B8
/* 80A0B488  38 60 00 00 */	li r3, 0
/* 80A0B48C  7C 66 1B 78 */	mr r6, r3
/* 80A0B490  7C 65 1B 78 */	mr r5, r3
/* 80A0B494  7C 64 1B 78 */	mr r4, r3
/* 80A0B498  38 00 00 03 */	li r0, 3
/* 80A0B49C  7C 09 03 A6 */	mtctr r0
lbl_80A0B4A0:
/* 80A0B4A0  7C FE 1A 14 */	add r7, r30, r3
/* 80A0B4A4  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80A0B4A8  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80A0B4AC  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80A0B4B0  38 63 00 06 */	addi r3, r3, 6
/* 80A0B4B4  42 00 FF EC */	bdnz lbl_80A0B4A0
lbl_80A0B4B8:
/* 80A0B4B8  7F C3 F3 78 */	mr r3, r30
/* 80A0B4BC  4B 74 72 B0 */	b setMtx__8daNpcF_cFv
/* 80A0B4C0  7F C3 F3 78 */	mr r3, r30
/* 80A0B4C4  48 00 02 A9 */	bl lookat__12daNpcImpal_cFv
/* 80A0B4C8  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 80A0B4CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A0B4D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A0B4D4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A0B4D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A0B4DC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A0B4E0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0B4E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A0B4E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A0B4EC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A0B4F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A0B4F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A0B4F8  4B 93 AF B8 */	b PSMTXCopy
/* 80A0B4FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0B500  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A0B504  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A0B508  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80A0B50C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A0B510  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80A0B514  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A0B518  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80A0B51C  38 81 00 30 */	addi r4, r1, 0x30
/* 80A0B520  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A0B524  4B 93 B8 48 */	b PSMTXMultVec
/* 80A0B528  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A0B52C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A0B530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A0B534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A0B538  38 81 00 30 */	addi r4, r1, 0x30
/* 80A0B53C  7C 85 23 78 */	mr r5, r4
/* 80A0B540  4B 93 B8 2C */	b PSMTXMultVec
/* 80A0B544  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A0B548  38 81 00 30 */	addi r4, r1, 0x30
/* 80A0B54C  4B 86 57 28 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A0B550  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80A0B554  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A0B558  38 81 00 30 */	addi r4, r1, 0x30
/* 80A0B55C  4B 86 56 A8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80A0B560  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80A0B564  80 9E 0C 0C */	lwz r4, 0xc0c(r30)
/* 80A0B568  28 04 00 00 */	cmplwi r4, 0
/* 80A0B56C  41 82 01 70 */	beq lbl_80A0B6DC
/* 80A0B570  38 61 00 18 */	addi r3, r1, 0x18
/* 80A0B574  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A0B578  4B 85 B5 BC */	b __mi__4cXyzCFRC3Vec
/* 80A0B57C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A0B580  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A0B584  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A0B588  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A0B58C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80A0B590  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A0B594  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 80A0B598  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 80A0B59C  7C 03 02 14 */	add r0, r3, r0
/* 80A0B5A0  7C 00 00 D0 */	neg r0, r0
/* 80A0B5A4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A0B5A8  4B 85 C0 CC */	b cM_atan2s__Fff
/* 80A0B5AC  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 80A0B5B0  7C 00 1A 14 */	add r0, r0, r3
/* 80A0B5B4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A0B5B8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A0B5BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A0B5C0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A0B5C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A0B5C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80A0B5CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A0B5D0  38 61 00 0C */	addi r3, r1, 0xc
/* 80A0B5D4  4B 93 BB 64 */	b PSVECSquareMag
/* 80A0B5D8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A0B5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0B5E0  40 81 00 58 */	ble lbl_80A0B638
/* 80A0B5E4  FC 00 08 34 */	frsqrte f0, f1
/* 80A0B5E8  C8 9F 02 00 */	lfd f4, 0x200(r31)
/* 80A0B5EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0B5F0  C8 7F 02 08 */	lfd f3, 0x208(r31)
/* 80A0B5F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0B5F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0B5FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0B600  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0B604  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0B608  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0B60C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0B610  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0B614  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0B618  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0B61C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0B620  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0B624  FC 03 00 28 */	fsub f0, f3, f0
/* 80A0B628  FC 02 00 32 */	fmul f0, f2, f0
/* 80A0B62C  FC 41 00 32 */	fmul f2, f1, f0
/* 80A0B630  FC 40 10 18 */	frsp f2, f2
/* 80A0B634  48 00 00 90 */	b lbl_80A0B6C4
lbl_80A0B638:
/* 80A0B638  C8 1F 02 10 */	lfd f0, 0x210(r31)
/* 80A0B63C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A0B640  40 80 00 10 */	bge lbl_80A0B650
/* 80A0B644  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A0B648  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A0B64C  48 00 00 78 */	b lbl_80A0B6C4
lbl_80A0B650:
/* 80A0B650  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A0B654  80 81 00 08 */	lwz r4, 8(r1)
/* 80A0B658  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A0B65C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A0B660  7C 03 00 00 */	cmpw r3, r0
/* 80A0B664  41 82 00 14 */	beq lbl_80A0B678
/* 80A0B668  40 80 00 40 */	bge lbl_80A0B6A8
/* 80A0B66C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0B670  41 82 00 20 */	beq lbl_80A0B690
/* 80A0B674  48 00 00 34 */	b lbl_80A0B6A8
lbl_80A0B678:
/* 80A0B678  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0B67C  41 82 00 0C */	beq lbl_80A0B688
/* 80A0B680  38 00 00 01 */	li r0, 1
/* 80A0B684  48 00 00 28 */	b lbl_80A0B6AC
lbl_80A0B688:
/* 80A0B688  38 00 00 02 */	li r0, 2
/* 80A0B68C  48 00 00 20 */	b lbl_80A0B6AC
lbl_80A0B690:
/* 80A0B690  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A0B694  41 82 00 0C */	beq lbl_80A0B6A0
/* 80A0B698  38 00 00 05 */	li r0, 5
/* 80A0B69C  48 00 00 10 */	b lbl_80A0B6AC
lbl_80A0B6A0:
/* 80A0B6A0  38 00 00 03 */	li r0, 3
/* 80A0B6A4  48 00 00 08 */	b lbl_80A0B6AC
lbl_80A0B6A8:
/* 80A0B6A8  38 00 00 04 */	li r0, 4
lbl_80A0B6AC:
/* 80A0B6AC  2C 00 00 01 */	cmpwi r0, 1
/* 80A0B6B0  40 82 00 10 */	bne lbl_80A0B6C0
/* 80A0B6B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A0B6B8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A0B6BC  48 00 00 08 */	b lbl_80A0B6C4
lbl_80A0B6C0:
/* 80A0B6C0  FC 40 08 90 */	fmr f2, f1
lbl_80A0B6C4:
/* 80A0B6C4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A0B6C8  4B 85 BF AC */	b cM_atan2s__Fff
/* 80A0B6CC  A8 1E 09 02 */	lha r0, 0x902(r30)
/* 80A0B6D0  7C 03 00 50 */	subf r0, r3, r0
/* 80A0B6D4  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 80A0B6D8  48 00 00 10 */	b lbl_80A0B6E8
lbl_80A0B6DC:
/* 80A0B6DC  38 00 00 00 */	li r0, 0
/* 80A0B6E0  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 80A0B6E4  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_80A0B6E8:
/* 80A0B6E8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80A0B6EC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A0B6F0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A0B6F4  EC 21 00 2A */	fadds f1, f1, f0
/* 80A0B6F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A0B6FC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A0B700  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80A0B704  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80A0B708  88 1E 0D E9 */	lbz r0, 0xde9(r30)
/* 80A0B70C  28 00 00 00 */	cmplwi r0, 0
/* 80A0B710  41 82 00 44 */	beq lbl_80A0B754
/* 80A0B714  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 80A0B718  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A0B71C  4B 86 3A C0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A0B720  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 80A0B724  38 9F 00 00 */	addi r4, r31, 0
/* 80A0B728  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80A0B72C  4B 86 3A CC */	b SetH__8cM3dGCylFf
/* 80A0B730  38 7E 0D A8 */	addi r3, r30, 0xda8
/* 80A0B734  38 9F 00 00 */	addi r4, r31, 0
/* 80A0B738  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A0B73C  4B 86 3A C4 */	b SetR__8cM3dGCylFf
/* 80A0B740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0B744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0B748  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A0B74C  38 9E 0C 84 */	addi r4, r30, 0xc84
/* 80A0B750  4B 85 94 58 */	b Set__4cCcSFP8cCcD_Obj
lbl_80A0B754:
/* 80A0B754  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80A0B758  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80A0B75C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A0B760  7C 08 03 A6 */	mtlr r0
/* 80A0B764  38 21 00 50 */	addi r1, r1, 0x50
/* 80A0B768  4E 80 00 20 */	blr 
