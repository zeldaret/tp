lbl_8068B428:
/* 8068B428  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8068B42C  7C 08 02 A6 */	mflr r0
/* 8068B430  90 01 00 74 */	stw r0, 0x74(r1)
/* 8068B434  39 61 00 70 */	addi r11, r1, 0x70
/* 8068B438  4B CD 6D 90 */	b _savegpr_24
/* 8068B43C  7C 7C 1B 78 */	mr r28, r3
/* 8068B440  3C 80 80 69 */	lis r4, lit_3903@ha
/* 8068B444  3B C4 D7 EC */	addi r30, r4, lit_3903@l
/* 8068B448  A8 03 06 70 */	lha r0, 0x670(r3)
/* 8068B44C  2C 00 00 01 */	cmpwi r0, 1
/* 8068B450  41 82 00 8C */	beq lbl_8068B4DC
/* 8068B454  40 80 00 10 */	bge lbl_8068B464
/* 8068B458  2C 00 00 00 */	cmpwi r0, 0
/* 8068B45C  40 80 00 14 */	bge lbl_8068B470
/* 8068B460  48 00 00 BC */	b lbl_8068B51C
lbl_8068B464:
/* 8068B464  2C 00 00 03 */	cmpwi r0, 3
/* 8068B468  40 80 00 B4 */	bge lbl_8068B51C
/* 8068B46C  48 00 00 8C */	b lbl_8068B4F8
lbl_8068B470:
/* 8068B470  38 00 00 01 */	li r0, 1
/* 8068B474  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 8068B478  38 00 00 A0 */	li r0, 0xa0
/* 8068B47C  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 8068B480  38 80 00 06 */	li r4, 6
/* 8068B484  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8068B488  38 A0 00 00 */	li r5, 0
/* 8068B48C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8068B490  4B FF F1 A5 */	bl anm_init__FP10e_bi_classifUcf
/* 8068B494  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8068B498  4B BD C4 BC */	b cM_rndF__Ff
/* 8068B49C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8068B4A0  EC 20 08 2A */	fadds f1, f0, f1
/* 8068B4A4  38 00 00 00 */	li r0, 0
/* 8068B4A8  B0 1C 06 A2 */	sth r0, 0x6a2(r28)
/* 8068B4AC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8068B4B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8068B4B4  FC 00 00 1E */	fctiwz f0, f0
/* 8068B4B8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8068B4BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068B4C0  B0 1C 06 A4 */	sth r0, 0x6a4(r28)
/* 8068B4C4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8068B4C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8068B4CC  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 8068B4D0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8068B4D4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8068B4D8  48 00 00 44 */	b lbl_8068B51C
lbl_8068B4DC:
/* 8068B4DC  80 1C 09 F8 */	lwz r0, 0x9f8(r28)
/* 8068B4E0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8068B4E4  41 82 00 14 */	beq lbl_8068B4F8
/* 8068B4E8  38 00 00 02 */	li r0, 2
/* 8068B4EC  B0 1C 06 70 */	sth r0, 0x670(r28)
/* 8068B4F0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8068B4F4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_8068B4F8:
/* 8068B4F8  38 7C 06 A8 */	addi r3, r28, 0x6a8
/* 8068B4FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8068B500  FC 40 08 90 */	fmr f2, f1
/* 8068B504  4B BE 45 7C */	b cLib_addCalc0__FPfff
/* 8068B508  38 7C 06 A4 */	addi r3, r28, 0x6a4
/* 8068B50C  38 80 00 00 */	li r4, 0
/* 8068B510  38 A0 00 01 */	li r5, 1
/* 8068B514  38 C0 00 C8 */	li r6, 0xc8
/* 8068B518  4B BE 50 F0 */	b cLib_addCalcAngleS2__FPssss
lbl_8068B51C:
/* 8068B51C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8068B520  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8068B524  80 63 00 00 */	lwz r3, 0(r3)
/* 8068B528  A8 9C 06 A6 */	lha r4, 0x6a6(r28)
/* 8068B52C  4B 98 0E B0 */	b mDoMtx_YrotS__FPA4_fs
/* 8068B530  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068B534  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8068B538  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8068B53C  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 8068B540  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8068B544  38 61 00 30 */	addi r3, r1, 0x30
/* 8068B548  38 81 00 24 */	addi r4, r1, 0x24
/* 8068B54C  4B BE 59 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8068B550  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8068B554  38 81 00 24 */	addi r4, r1, 0x24
/* 8068B558  7C 65 1B 78 */	mr r5, r3
/* 8068B55C  4B CB BB 34 */	b PSVECAdd
/* 8068B560  A8 7C 06 A2 */	lha r3, 0x6a2(r28)
/* 8068B564  A8 1C 06 A4 */	lha r0, 0x6a4(r28)
/* 8068B568  7C 03 02 14 */	add r0, r3, r0
/* 8068B56C  B0 1C 06 A2 */	sth r0, 0x6a2(r28)
/* 8068B570  A8 7C 06 94 */	lha r3, 0x694(r28)
/* 8068B574  2C 03 00 00 */	cmpwi r3, 0
/* 8068B578  41 82 01 C0 */	beq lbl_8068B738
/* 8068B57C  38 03 FF FF */	addi r0, r3, -1
/* 8068B580  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 8068B584  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000A@ha */
/* 8068B588  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0008000A@l */
/* 8068B58C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8068B590  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8068B594  38 81 00 20 */	addi r4, r1, 0x20
/* 8068B598  38 A0 00 00 */	li r5, 0
/* 8068B59C  38 C0 FF FF */	li r6, -1
/* 8068B5A0  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8068B5A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8068B5A8  7D 89 03 A6 */	mtctr r12
/* 8068B5AC  4E 80 04 21 */	bctrl 
/* 8068B5B0  A8 7C 06 96 */	lha r3, 0x696(r28)
/* 8068B5B4  38 03 11 00 */	addi r0, r3, 0x1100
/* 8068B5B8  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 8068B5BC  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8068B5C0  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8068B5C4  40 80 00 28 */	bge lbl_8068B5EC
/* 8068B5C8  A8 7C 06 96 */	lha r3, 0x696(r28)
/* 8068B5CC  38 03 11 00 */	addi r0, r3, 0x1100
/* 8068B5D0  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 8068B5D4  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8068B5D8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8068B5DC  40 80 00 10 */	bge lbl_8068B5EC
/* 8068B5E0  A8 7C 06 96 */	lha r3, 0x696(r28)
/* 8068B5E4  38 03 11 00 */	addi r0, r3, 0x1100
/* 8068B5E8  B0 1C 06 96 */	sth r0, 0x696(r28)
lbl_8068B5EC:
/* 8068B5EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8068B5F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8068B5F4  A8 1C 06 96 */	lha r0, 0x696(r28)
/* 8068B5F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8068B5FC  7C 63 02 14 */	add r3, r3, r0
/* 8068B600  C0 43 00 04 */	lfs f2, 4(r3)
/* 8068B604  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8068B608  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8068B60C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8068B610  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068B614  FC 00 00 1E */	fctiwz f0, f0
/* 8068B618  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8068B61C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068B620  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 8068B624  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8068B628  2C 00 00 00 */	cmpwi r0, 0
/* 8068B62C  40 82 00 38 */	bne lbl_8068B664
/* 8068B630  38 00 00 00 */	li r0, 0
/* 8068B634  90 01 00 08 */	stw r0, 8(r1)
/* 8068B638  38 60 02 21 */	li r3, 0x221
/* 8068B63C  38 80 00 00 */	li r4, 0
/* 8068B640  38 BC 05 38 */	addi r5, r28, 0x538
/* 8068B644  38 C0 FF FF */	li r6, -1
/* 8068B648  38 E0 00 00 */	li r7, 0
/* 8068B64C  39 00 00 00 */	li r8, 0
/* 8068B650  39 20 FF FF */	li r9, -1
/* 8068B654  39 40 00 00 */	li r10, 0
/* 8068B658  4B 98 E7 AC */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8068B65C  38 00 00 01 */	li r0, 1
/* 8068B660  98 1C 06 B0 */	stb r0, 0x6b0(r28)
lbl_8068B664:
/* 8068B664  3B A0 00 00 */	li r29, 0
/* 8068B668  3B 60 00 00 */	li r27, 0
/* 8068B66C  3B 40 00 00 */	li r26, 0
/* 8068B670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8068B674  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8068B678  3C 60 80 69 */	lis r3, ex_eff_id@ha
/* 8068B67C  3B 03 D9 24 */	addi r24, r3, ex_eff_id@l
lbl_8068B680:
/* 8068B680  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8068B684  38 00 00 FF */	li r0, 0xff
/* 8068B688  90 01 00 08 */	stw r0, 8(r1)
/* 8068B68C  38 80 00 00 */	li r4, 0
/* 8068B690  90 81 00 0C */	stw r4, 0xc(r1)
/* 8068B694  38 00 FF FF */	li r0, -1
/* 8068B698  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068B69C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8068B6A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8068B6A4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8068B6A8  3B 3A 0B C4 */	addi r25, r26, 0xbc4
/* 8068B6AC  7C 9C C8 2E */	lwzx r4, r28, r25
/* 8068B6B0  38 A0 00 00 */	li r5, 0
/* 8068B6B4  7C D8 DA 2E */	lhzx r6, r24, r27
/* 8068B6B8  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 8068B6BC  39 1C 01 0C */	addi r8, r28, 0x10c
/* 8068B6C0  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 8068B6C4  39 40 00 00 */	li r10, 0
/* 8068B6C8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8068B6CC  4B 9C 1E 00 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8068B6D0  7C 7C C9 2E */	stwx r3, r28, r25
/* 8068B6D4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8068B6D8  38 63 02 10 */	addi r3, r3, 0x210
/* 8068B6DC  7C 9C C8 2E */	lwzx r4, r28, r25
/* 8068B6E0  4B 9C 02 38 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8068B6E4  7C 79 1B 79 */	or. r25, r3, r3
/* 8068B6E8  41 82 00 3C */	beq lbl_8068B724
/* 8068B6EC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 8068B6F0  80 63 00 04 */	lwz r3, 4(r3)
/* 8068B6F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8068B6F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068B6FC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8068B700  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8068B704  80 84 00 00 */	lwz r4, 0(r4)
/* 8068B708  4B CB AD A8 */	b PSMTXCopy
/* 8068B70C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8068B710  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8068B714  80 63 00 00 */	lwz r3, 0(r3)
/* 8068B718  38 99 00 68 */	addi r4, r25, 0x68
/* 8068B71C  38 B9 00 A4 */	addi r5, r25, 0xa4
/* 8068B720  4B BF 50 C0 */	b func_802807E0
lbl_8068B724:
/* 8068B724  3B BD 00 01 */	addi r29, r29, 1
/* 8068B728  2C 1D 00 05 */	cmpwi r29, 5
/* 8068B72C  3B 7B 00 02 */	addi r27, r27, 2
/* 8068B730  3B 5A 00 04 */	addi r26, r26, 4
/* 8068B734  41 80 FF 4C */	blt lbl_8068B680
lbl_8068B738:
/* 8068B738  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8068B73C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8068B740  38 A0 00 04 */	li r5, 4
/* 8068B744  38 C0 20 00 */	li r6, 0x2000
/* 8068B748  4B BE 4E C0 */	b cLib_addCalcAngleS2__FPssss
/* 8068B74C  39 61 00 70 */	addi r11, r1, 0x70
/* 8068B750  4B CD 6A C4 */	b _restgpr_24
/* 8068B754  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8068B758  7C 08 03 A6 */	mtlr r0
/* 8068B75C  38 21 00 70 */	addi r1, r1, 0x70
/* 8068B760  4E 80 00 20 */	blr 
