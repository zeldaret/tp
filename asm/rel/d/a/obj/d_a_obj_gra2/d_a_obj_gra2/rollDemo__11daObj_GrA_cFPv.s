lbl_80C083F0:
/* 80C083F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C083F4  7C 08 02 A6 */	mflr r0
/* 80C083F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C083FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80C08400  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80C08404  7C 7E 1B 78 */	mr r30, r3
/* 80C08408  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0840C  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C08410  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C08414  2C 00 00 01 */	cmpwi r0, 1
/* 80C08418  41 82 00 40 */	beq lbl_80C08458
/* 80C0841C  40 80 00 10 */	bge lbl_80C0842C
/* 80C08420  2C 00 00 00 */	cmpwi r0, 0
/* 80C08424  40 80 00 14 */	bge lbl_80C08438
/* 80C08428  48 00 03 B8 */	b lbl_80C087E0
lbl_80C0842C:
/* 80C0842C  2C 00 00 03 */	cmpwi r0, 3
/* 80C08430  40 80 03 B0 */	bge lbl_80C087E0
/* 80C08434  48 00 03 9C */	b lbl_80C087D0
lbl_80C08438:
/* 80C08438  88 1E 1F E8 */	lbz r0, 0x1fe8(r30)
/* 80C0843C  7C 00 07 75 */	extsb. r0, r0
/* 80C08440  40 82 00 0C */	bne lbl_80C0844C
/* 80C08444  38 00 00 01 */	li r0, 1
/* 80C08448  B0 1E 20 54 */	sth r0, 0x2054(r30)
lbl_80C0844C:
/* 80C0844C  38 00 00 01 */	li r0, 1
/* 80C08450  90 1E 20 9C */	stw r0, 0x209c(r30)
/* 80C08454  48 00 03 8C */	b lbl_80C087E0
lbl_80C08458:
/* 80C08458  88 1E 1F E8 */	lbz r0, 0x1fe8(r30)
/* 80C0845C  7C 00 07 75 */	extsb. r0, r0
/* 80C08460  40 82 02 3C */	bne lbl_80C0869C
/* 80C08464  80 1E 20 00 */	lwz r0, 0x2000(r30)
/* 80C08468  2C 00 00 01 */	cmpwi r0, 1
/* 80C0846C  41 82 00 EC */	beq lbl_80C08558
/* 80C08470  40 80 00 14 */	bge lbl_80C08484
/* 80C08474  2C 00 FF FF */	cmpwi r0, -1
/* 80C08478  41 82 00 18 */	beq lbl_80C08490
/* 80C0847C  40 80 00 84 */	bge lbl_80C08500
/* 80C08480  48 00 03 60 */	b lbl_80C087E0
lbl_80C08484:
/* 80C08484  2C 00 00 03 */	cmpwi r0, 3
/* 80C08488  40 80 03 58 */	bge lbl_80C087E0
/* 80C0848C  48 00 01 A0 */	b lbl_80C0862C
lbl_80C08490:
/* 80C08490  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C08494  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C08498  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0849C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C084A0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C084A4  4B 66 87 61 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C084A8  7C 64 1B 78 */	mr r4, r3
/* 80C084AC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80C084B0  38 A0 00 04 */	li r5, 4
/* 80C084B4  38 DF 00 00 */	addi r6, r31, 0
/* 80C084B8  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C084BC  4B 66 81 4D */	bl cLib_addCalcAngleS2__FPssss
/* 80C084C0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C084C4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80C084C8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C084CC  B0 1E 09 1C */	sth r0, 0x91c(r30)
/* 80C084D0  A8 1E 20 54 */	lha r0, 0x2054(r30)
/* 80C084D4  2C 00 00 05 */	cmpwi r0, 5
/* 80C084D8  41 80 03 08 */	blt lbl_80C087E0
/* 80C084DC  38 00 00 04 */	li r0, 4
/* 80C084E0  90 1E 08 48 */	stw r0, 0x848(r30)
/* 80C084E4  7F C3 F3 78 */	mr r3, r30
/* 80C084E8  38 80 FF FF */	li r4, -1
/* 80C084EC  38 A0 00 01 */	li r5, 1
/* 80C084F0  4B FF C4 09 */	bl evtcutTalk__11daObj_GrA_cFii
/* 80C084F4  38 00 00 00 */	li r0, 0
/* 80C084F8  90 1E 20 00 */	stw r0, 0x2000(r30)
/* 80C084FC  48 00 02 E4 */	b lbl_80C087E0
lbl_80C08500:
/* 80C08500  38 80 FF FF */	li r4, -1
/* 80C08504  38 A0 00 00 */	li r5, 0
/* 80C08508  4B FF C3 F1 */	bl evtcutTalk__11daObj_GrA_cFii
/* 80C0850C  2C 03 00 00 */	cmpwi r3, 0
/* 80C08510  41 82 00 3C */	beq lbl_80C0854C
/* 80C08514  7F C3 F3 78 */	mr r3, r30
/* 80C08518  38 80 00 14 */	li r4, 0x14
/* 80C0851C  38 BF 00 00 */	addi r5, r31, 0
/* 80C08520  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C08524  4B FF 92 69 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C08528  7F C3 F3 78 */	mr r3, r30
/* 80C0852C  38 80 00 0D */	li r4, 0xd
/* 80C08530  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C08534  4B FF 92 79 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C08538  7F C3 F3 78 */	mr r3, r30
/* 80C0853C  38 80 00 00 */	li r4, 0
/* 80C08540  4B FF A5 95 */	bl setLookMode__11daObj_GrA_cFi
/* 80C08544  38 00 00 01 */	li r0, 1
/* 80C08548  90 1E 20 00 */	stw r0, 0x2000(r30)
lbl_80C0854C:
/* 80C0854C  38 00 00 00 */	li r0, 0
/* 80C08550  B0 1E 20 56 */	sth r0, 0x2056(r30)
/* 80C08554  48 00 02 8C */	b lbl_80C087E0
lbl_80C08558:
/* 80C08558  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0855C  38 63 00 0C */	addi r3, r3, 0xc
/* 80C08560  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80C08564  4B 71 FE C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80C08568  2C 03 00 00 */	cmpwi r3, 0
/* 80C0856C  41 82 02 74 */	beq lbl_80C087E0
/* 80C08570  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C08574  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C08578  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C0857C  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C08580  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C08584  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C08588  4B 40 47 DD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C0858C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C08590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C08594  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C08598  4B 40 3E 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C0859C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C085A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C085A4  38 81 00 30 */	addi r4, r1, 0x30
/* 80C085A8  38 BE 0B 74 */	addi r5, r30, 0xb74
/* 80C085AC  4B 73 E7 C1 */	bl PSMTXMultVec
/* 80C085B0  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C085B4  B0 1E 0B 80 */	sth r0, 0xb80(r30)
/* 80C085B8  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C085BC  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80C085C0  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C085C4  B0 1E 0B 84 */	sth r0, 0xb84(r30)
/* 80C085C8  38 00 00 01 */	li r0, 1
/* 80C085CC  98 1E 0B 70 */	stb r0, 0xb70(r30)
/* 80C085D0  7F C3 F3 78 */	mr r3, r30
/* 80C085D4  38 80 00 00 */	li r4, 0
/* 80C085D8  4B FF A4 FD */	bl setLookMode__11daObj_GrA_cFi
/* 80C085DC  7F C3 F3 78 */	mr r3, r30
/* 80C085E0  38 80 00 0A */	li r4, 0xa
/* 80C085E4  38 BF 00 00 */	addi r5, r31, 0
/* 80C085E8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C085EC  4B FF 91 A1 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C085F0  7F C3 F3 78 */	mr r3, r30
/* 80C085F4  38 80 00 0D */	li r4, 0xd
/* 80C085F8  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C085FC  4B FF 91 B1 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C08600  7F C3 F3 78 */	mr r3, r30
/* 80C08604  4B FF 91 ED */	bl calcMotion__11daObj_GrA_cFv
/* 80C08608  38 00 00 1D */	li r0, 0x1d
/* 80C0860C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C08610  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80C08614  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C08618  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0861C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C08620  38 00 00 02 */	li r0, 2
/* 80C08624  90 1E 20 00 */	stw r0, 0x2000(r30)
/* 80C08628  48 00 01 B8 */	b lbl_80C087E0
lbl_80C0862C:
/* 80C0862C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C08630  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C08634  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C08638  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 80C0863C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C08640  40 80 00 20 */	bge lbl_80C08660
/* 80C08644  38 61 00 08 */	addi r3, r1, 8
/* 80C08648  C0 5F 02 4C */	lfs f2, 0x24c(r31)
/* 80C0864C  C0 7F 02 50 */	lfs f3, 0x250(r31)
/* 80C08650  4B 66 73 ED */	bl cLib_addCalc2__FPffff
/* 80C08654  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C08658  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0865C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80C08660:
/* 80C08660  A8 1E 20 54 */	lha r0, 0x2054(r30)
/* 80C08664  2C 00 00 00 */	cmpwi r0, 0
/* 80C08668  40 82 01 78 */	bne lbl_80C087E0
/* 80C0866C  3C 60 80 C1 */	lis r3, lit_7645@ha /* 0x80C10274@ha */
/* 80C08670  38 83 02 74 */	addi r4, r3, lit_7645@l /* 0x80C10274@l */
/* 80C08674  80 64 00 00 */	lwz r3, 0(r4)
/* 80C08678  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0867C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C08680  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C08684  80 04 00 08 */	lwz r0, 8(r4)
/* 80C08688  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C0868C  7F C3 F3 78 */	mr r3, r30
/* 80C08690  38 81 00 18 */	addi r4, r1, 0x18
/* 80C08694  4B FF 92 61 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C08698  48 00 01 48 */	b lbl_80C087E0
lbl_80C0869C:
/* 80C0869C  A0 1E 0A 90 */	lhz r0, 0xa90(r30)
/* 80C086A0  28 00 00 04 */	cmplwi r0, 4
/* 80C086A4  41 82 00 34 */	beq lbl_80C086D8
/* 80C086A8  38 80 00 04 */	li r4, 4
/* 80C086AC  38 BF 00 00 */	addi r5, r31, 0
/* 80C086B0  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C086B4  4B FF 90 D9 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C086B8  7F C3 F3 78 */	mr r3, r30
/* 80C086BC  38 80 00 0D */	li r4, 0xd
/* 80C086C0  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C086C4  4B FF 90 E9 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C086C8  7F C3 F3 78 */	mr r3, r30
/* 80C086CC  38 80 00 01 */	li r4, 1
/* 80C086D0  4B FF A4 05 */	bl setLookMode__11daObj_GrA_cFi
/* 80C086D4  48 00 01 0C */	b lbl_80C087E0
lbl_80C086D8:
/* 80C086D8  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C086DC  38 63 00 0C */	addi r3, r3, 0xc
/* 80C086E0  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80C086E4  4B 71 FD 49 */	bl checkPass__12J3DFrameCtrlFf
/* 80C086E8  2C 03 00 00 */	cmpwi r3, 0
/* 80C086EC  41 82 00 F4 */	beq lbl_80C087E0
/* 80C086F0  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C086F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C086F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C086FC  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C08700  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C08704  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C08708  4B 40 46 5D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C0870C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C08710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C08714  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C08718  4B 40 3D 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C0871C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C08720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C08724  38 81 00 24 */	addi r4, r1, 0x24
/* 80C08728  38 BE 0B 74 */	addi r5, r30, 0xb74
/* 80C0872C  4B 73 E6 41 */	bl PSMTXMultVec
/* 80C08730  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C08734  B0 1E 0B 80 */	sth r0, 0xb80(r30)
/* 80C08738  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C0873C  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80C08740  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C08744  B0 1E 0B 84 */	sth r0, 0xb84(r30)
/* 80C08748  38 00 00 01 */	li r0, 1
/* 80C0874C  98 1E 0B 70 */	stb r0, 0xb70(r30)
/* 80C08750  7F C3 F3 78 */	mr r3, r30
/* 80C08754  38 80 00 00 */	li r4, 0
/* 80C08758  4B FF A3 7D */	bl setLookMode__11daObj_GrA_cFi
/* 80C0875C  7F C3 F3 78 */	mr r3, r30
/* 80C08760  38 80 00 0A */	li r4, 0xa
/* 80C08764  38 BF 00 00 */	addi r5, r31, 0
/* 80C08768  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0876C  4B FF 90 21 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C08770  7F C3 F3 78 */	mr r3, r30
/* 80C08774  38 80 00 0D */	li r4, 0xd
/* 80C08778  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C0877C  4B FF 90 31 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C08780  7F C3 F3 78 */	mr r3, r30
/* 80C08784  4B FF 90 6D */	bl calcMotion__11daObj_GrA_cFv
/* 80C08788  38 00 00 1D */	li r0, 0x1d
/* 80C0878C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C08790  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80C08794  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C08798  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0879C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C087A0  3C 60 80 C1 */	lis r3, lit_7653@ha /* 0x80C10280@ha */
/* 80C087A4  38 83 02 80 */	addi r4, r3, lit_7653@l /* 0x80C10280@l */
/* 80C087A8  80 64 00 00 */	lwz r3, 0(r4)
/* 80C087AC  80 04 00 04 */	lwz r0, 4(r4)
/* 80C087B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80C087B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C087B8  80 04 00 08 */	lwz r0, 8(r4)
/* 80C087BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C087C0  7F C3 F3 78 */	mr r3, r30
/* 80C087C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C087C8  4B FF 91 2D */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C087CC  48 00 00 14 */	b lbl_80C087E0
lbl_80C087D0:
/* 80C087D0  38 00 FF FF */	li r0, -1
/* 80C087D4  90 1E 20 00 */	stw r0, 0x2000(r30)
/* 80C087D8  38 00 00 00 */	li r0, 0
/* 80C087DC  90 1E 20 9C */	stw r0, 0x209c(r30)
lbl_80C087E0:
/* 80C087E0  7F C3 F3 78 */	mr r3, r30
/* 80C087E4  48 00 19 3D */	bl demo_camera__11daObj_GrA_cFv
/* 80C087E8  38 60 00 01 */	li r3, 1
/* 80C087EC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80C087F0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80C087F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C087F8  7C 08 03 A6 */	mtlr r0
/* 80C087FC  38 21 00 50 */	addi r1, r1, 0x50
/* 80C08800  4E 80 00 20 */	blr 
