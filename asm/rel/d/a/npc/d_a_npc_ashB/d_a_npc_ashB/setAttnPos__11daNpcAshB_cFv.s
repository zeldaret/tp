lbl_80961264:
/* 80961264  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80961268  7C 08 02 A6 */	mflr r0
/* 8096126C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80961270  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80961274  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80961278  7C 7E 1B 78 */	mr r30, r3
/* 8096127C  3C 60 80 96 */	lis r3, m__17daNpcAshB_Param_c@ha /* 0x809620E4@ha */
/* 80961280  3B E3 20 E4 */	addi r31, r3, m__17daNpcAshB_Param_c@l /* 0x809620E4@l */
/* 80961284  A8 1E 0D E6 */	lha r0, 0xde6(r30)
/* 80961288  2C 00 00 01 */	cmpwi r0, 1
/* 8096128C  40 82 00 34 */	bne lbl_809612C0
/* 80961290  38 60 00 00 */	li r3, 0
/* 80961294  7C 66 1B 78 */	mr r6, r3
/* 80961298  7C 65 1B 78 */	mr r5, r3
/* 8096129C  7C 64 1B 78 */	mr r4, r3
/* 809612A0  38 00 00 03 */	li r0, 3
/* 809612A4  7C 09 03 A6 */	mtctr r0
lbl_809612A8:
/* 809612A8  7C FE 1A 14 */	add r7, r30, r3
/* 809612AC  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 809612B0  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 809612B4  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 809612B8  38 63 00 06 */	addi r3, r3, 6
/* 809612BC  42 00 FF EC */	bdnz lbl_809612A8
lbl_809612C0:
/* 809612C0  7F C3 F3 78 */	mr r3, r30
/* 809612C4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809612C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809612CC  7D 89 03 A6 */	mtctr r12
/* 809612D0  4E 80 04 21 */	bctrl 
/* 809612D4  7F C3 F3 78 */	mr r3, r30
/* 809612D8  48 00 02 9D */	bl lookat__11daNpcAshB_cFv
/* 809612DC  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 809612E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809612E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809612E8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 809612EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809612F0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809612F4  80 63 00 04 */	lwz r3, 4(r3)
/* 809612F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809612FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80961300  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80961304  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80961308  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096130C  4B 9E 51 A5 */	bl PSMTXCopy
/* 80961310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80961314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80961318  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8096131C  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80961320  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80961324  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80961328  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8096132C  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80961330  38 81 00 30 */	addi r4, r1, 0x30
/* 80961334  38 BE 05 38 */	addi r5, r30, 0x538
/* 80961338  4B 9E 5A 35 */	bl PSMTXMultVec
/* 8096133C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80961340  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80961344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80961348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8096134C  38 81 00 30 */	addi r4, r1, 0x30
/* 80961350  7C 85 23 78 */	mr r5, r4
/* 80961354  4B 9E 5A 19 */	bl PSMTXMultVec
/* 80961358  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8096135C  38 81 00 30 */	addi r4, r1, 0x30
/* 80961360  4B 90 F9 15 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80961364  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80961368  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 8096136C  38 81 00 30 */	addi r4, r1, 0x30
/* 80961370  4B 90 F8 95 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80961374  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80961378  80 9E 0C 10 */	lwz r4, 0xc10(r30)
/* 8096137C  28 04 00 00 */	cmplwi r4, 0
/* 80961380  41 82 01 70 */	beq lbl_809614F0
/* 80961384  38 61 00 18 */	addi r3, r1, 0x18
/* 80961388  38 BE 05 38 */	addi r5, r30, 0x538
/* 8096138C  4B 90 57 A9 */	bl __mi__4cXyzCFRC3Vec
/* 80961390  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80961394  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80961398  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8096139C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809613A0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 809613A4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 809613A8  A8 7E 09 28 */	lha r3, 0x928(r30)
/* 809613AC  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809613B0  7C 03 02 14 */	add r0, r3, r0
/* 809613B4  7C 00 00 D0 */	neg r0, r0
/* 809613B8  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 809613BC  4B 90 62 B9 */	bl cM_atan2s__Fff
/* 809613C0  A8 1E 08 FE */	lha r0, 0x8fe(r30)
/* 809613C4  7C 00 1A 14 */	add r0, r0, r3
/* 809613C8  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 809613CC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809613D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809613D4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 809613D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809613DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809613E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809613E4  38 61 00 0C */	addi r3, r1, 0xc
/* 809613E8  4B 9E 5D 51 */	bl PSVECSquareMag
/* 809613EC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 809613F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809613F4  40 81 00 58 */	ble lbl_8096144C
/* 809613F8  FC 00 08 34 */	frsqrte f0, f1
/* 809613FC  C8 9F 02 E0 */	lfd f4, 0x2e0(r31)
/* 80961400  FC 44 00 32 */	fmul f2, f4, f0
/* 80961404  C8 7F 02 E8 */	lfd f3, 0x2e8(r31)
/* 80961408  FC 00 00 32 */	fmul f0, f0, f0
/* 8096140C  FC 01 00 32 */	fmul f0, f1, f0
/* 80961410  FC 03 00 28 */	fsub f0, f3, f0
/* 80961414  FC 02 00 32 */	fmul f0, f2, f0
/* 80961418  FC 44 00 32 */	fmul f2, f4, f0
/* 8096141C  FC 00 00 32 */	fmul f0, f0, f0
/* 80961420  FC 01 00 32 */	fmul f0, f1, f0
/* 80961424  FC 03 00 28 */	fsub f0, f3, f0
/* 80961428  FC 02 00 32 */	fmul f0, f2, f0
/* 8096142C  FC 44 00 32 */	fmul f2, f4, f0
/* 80961430  FC 00 00 32 */	fmul f0, f0, f0
/* 80961434  FC 01 00 32 */	fmul f0, f1, f0
/* 80961438  FC 03 00 28 */	fsub f0, f3, f0
/* 8096143C  FC 02 00 32 */	fmul f0, f2, f0
/* 80961440  FC 41 00 32 */	fmul f2, f1, f0
/* 80961444  FC 40 10 18 */	frsp f2, f2
/* 80961448  48 00 00 90 */	b lbl_809614D8
lbl_8096144C:
/* 8096144C  C8 1F 02 F0 */	lfd f0, 0x2f0(r31)
/* 80961450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80961454  40 80 00 10 */	bge lbl_80961464
/* 80961458  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8096145C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80961460  48 00 00 78 */	b lbl_809614D8
lbl_80961464:
/* 80961464  D0 21 00 08 */	stfs f1, 8(r1)
/* 80961468  80 81 00 08 */	lwz r4, 8(r1)
/* 8096146C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80961470  3C 00 7F 80 */	lis r0, 0x7f80
/* 80961474  7C 03 00 00 */	cmpw r3, r0
/* 80961478  41 82 00 14 */	beq lbl_8096148C
/* 8096147C  40 80 00 40 */	bge lbl_809614BC
/* 80961480  2C 03 00 00 */	cmpwi r3, 0
/* 80961484  41 82 00 20 */	beq lbl_809614A4
/* 80961488  48 00 00 34 */	b lbl_809614BC
lbl_8096148C:
/* 8096148C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80961490  41 82 00 0C */	beq lbl_8096149C
/* 80961494  38 00 00 01 */	li r0, 1
/* 80961498  48 00 00 28 */	b lbl_809614C0
lbl_8096149C:
/* 8096149C  38 00 00 02 */	li r0, 2
/* 809614A0  48 00 00 20 */	b lbl_809614C0
lbl_809614A4:
/* 809614A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809614A8  41 82 00 0C */	beq lbl_809614B4
/* 809614AC  38 00 00 05 */	li r0, 5
/* 809614B0  48 00 00 10 */	b lbl_809614C0
lbl_809614B4:
/* 809614B4  38 00 00 03 */	li r0, 3
/* 809614B8  48 00 00 08 */	b lbl_809614C0
lbl_809614BC:
/* 809614BC  38 00 00 04 */	li r0, 4
lbl_809614C0:
/* 809614C0  2C 00 00 01 */	cmpwi r0, 1
/* 809614C4  40 82 00 10 */	bne lbl_809614D4
/* 809614C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 809614CC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 809614D0  48 00 00 08 */	b lbl_809614D8
lbl_809614D4:
/* 809614D4  FC 40 08 90 */	fmr f2, f1
lbl_809614D8:
/* 809614D8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809614DC  4B 90 61 99 */	bl cM_atan2s__Fff
/* 809614E0  A8 1E 09 02 */	lha r0, 0x902(r30)
/* 809614E4  7C 03 00 50 */	subf r0, r3, r0
/* 809614E8  B0 1E 08 FC */	sth r0, 0x8fc(r30)
/* 809614EC  48 00 00 10 */	b lbl_809614FC
lbl_809614F0:
/* 809614F0  38 00 00 00 */	li r0, 0
/* 809614F4  B0 1E 08 FE */	sth r0, 0x8fe(r30)
/* 809614F8  B0 1E 08 FC */	sth r0, 0x8fc(r30)
lbl_809614FC:
/* 809614FC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80961500  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80961504  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80961508  EC 21 00 2A */	fadds f1, f1, f0
/* 8096150C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80961510  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80961514  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80961518  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 8096151C  38 7E 0D AC */	addi r3, r30, 0xdac
/* 80961520  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80961524  4B 90 DC B9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80961528  38 7E 0D AC */	addi r3, r30, 0xdac
/* 8096152C  38 9F 00 00 */	addi r4, r31, 0
/* 80961530  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80961534  4B 90 DC C5 */	bl SetH__8cM3dGCylFf
/* 80961538  38 7E 0D AC */	addi r3, r30, 0xdac
/* 8096153C  38 9F 00 00 */	addi r4, r31, 0
/* 80961540  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80961544  4B 90 DC BD */	bl SetR__8cM3dGCylFf
/* 80961548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096154C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80961550  38 63 23 3C */	addi r3, r3, 0x233c
/* 80961554  38 9E 0C 88 */	addi r4, r30, 0xc88
/* 80961558  4B 90 36 51 */	bl Set__4cCcSFP8cCcD_Obj
/* 8096155C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80961560  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80961564  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80961568  7C 08 03 A6 */	mtlr r0
/* 8096156C  38 21 00 50 */	addi r1, r1, 0x50
/* 80961570  4E 80 00 20 */	blr 
