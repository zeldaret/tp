lbl_80CE12D8:
/* 80CE12D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE12DC  7C 08 02 A6 */	mflr r0
/* 80CE12E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE12E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE12E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE12EC  7C 7F 1B 78 */	mr r31, r3
/* 80CE12F0  3C 60 80 CE */	lis r3, lit_3779@ha /* 0x80CE39E8@ha */
/* 80CE12F4  3B C3 39 E8 */	addi r30, r3, lit_3779@l /* 0x80CE39E8@l */
/* 80CE12F8  A8 7F 10 56 */	lha r3, 0x1056(r31)
/* 80CE12FC  2C 03 00 00 */	cmpwi r3, 0
/* 80CE1300  41 82 00 0C */	beq lbl_80CE130C
/* 80CE1304  38 03 FF FF */	addi r0, r3, -1
/* 80CE1308  B0 1F 10 56 */	sth r0, 0x1056(r31)
lbl_80CE130C:
/* 80CE130C  A8 1F 0D AE */	lha r0, 0xdae(r31)
/* 80CE1310  2C 00 00 02 */	cmpwi r0, 2
/* 80CE1314  41 82 00 3C */	beq lbl_80CE1350
/* 80CE1318  40 80 00 14 */	bge lbl_80CE132C
/* 80CE131C  2C 00 00 00 */	cmpwi r0, 0
/* 80CE1320  41 82 00 18 */	beq lbl_80CE1338
/* 80CE1324  40 80 00 20 */	bge lbl_80CE1344
/* 80CE1328  48 00 00 3C */	b lbl_80CE1364
lbl_80CE132C:
/* 80CE132C  2C 00 00 04 */	cmpwi r0, 4
/* 80CE1330  40 80 00 34 */	bge lbl_80CE1364
/* 80CE1334  48 00 00 28 */	b lbl_80CE135C
lbl_80CE1338:
/* 80CE1338  7F E3 FB 78 */	mr r3, r31
/* 80CE133C  4B FF F1 E9 */	bl so_hasira__FP12obj_so_class
/* 80CE1340  48 00 00 24 */	b lbl_80CE1364
lbl_80CE1344:
/* 80CE1344  7F E3 FB 78 */	mr r3, r31
/* 80CE1348  4B FF F9 49 */	bl so_drop__FP12obj_so_class
/* 80CE134C  48 00 00 18 */	b lbl_80CE1364
lbl_80CE1350:
/* 80CE1350  7F E3 FB 78 */	mr r3, r31
/* 80CE1354  4B FF FC 41 */	bl so_break__FP12obj_so_class
/* 80CE1358  48 00 00 0C */	b lbl_80CE1364
lbl_80CE135C:
/* 80CE135C  7F E3 FB 78 */	mr r3, r31
/* 80CE1360  4B FF FD 25 */	bl so_hang__FP12obj_so_class
lbl_80CE1364:
/* 80CE1364  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80CE1368  2C 00 00 00 */	cmpwi r0, 0
/* 80CE136C  41 82 01 58 */	beq lbl_80CE14C4
/* 80CE1370  88 1F 1B 60 */	lbz r0, 0x1b60(r31)
/* 80CE1374  7C 00 07 75 */	extsb. r0, r0
/* 80CE1378  41 82 00 BC */	beq lbl_80CE1434
/* 80CE137C  38 7F 1B 64 */	addi r3, r31, 0x1b64
/* 80CE1380  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80CE1384  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80CE1388  80 84 00 00 */	lwz r4, 0(r4)
/* 80CE138C  4B 66 51 25 */	bl PSMTXCopy
/* 80CE1390  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CE1394  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 80CE1398  FC 60 08 90 */	fmr f3, f1
/* 80CE139C  38 60 00 01 */	li r3, 1
/* 80CE13A0  4B 58 FA BD */	bl MtxTrans__FfffUc
/* 80CE13A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CE13A8  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80CE13AC  FC 60 08 90 */	fmr f3, f1
/* 80CE13B0  38 60 00 01 */	li r3, 1
/* 80CE13B4  4B 58 FA A9 */	bl MtxTrans__FfffUc
/* 80CE13B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE13BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE13C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE13C4  A8 9F 0D C2 */	lha r4, 0xdc2(r31)
/* 80CE13C8  4B 32 AF D5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE13CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE13D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE13D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE13D8  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 80CE13DC  4B 32 B8 25 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80CE13E0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CE13E4  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80CE13E8  FC 60 08 90 */	fmr f3, f1
/* 80CE13EC  38 60 00 01 */	li r3, 1
/* 80CE13F0  4B 58 FA 6D */	bl MtxTrans__FfffUc
/* 80CE13F4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE13F8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE13FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE1400  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CE1404  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE1408  4B 66 50 A9 */	bl PSMTXCopy
/* 80CE140C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CE1410  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CE1414  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CE1418  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE141C  38 61 00 08 */	addi r3, r1, 8
/* 80CE1420  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CE1424  4B 58 FA C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CE1428  38 00 00 00 */	li r0, 0
/* 80CE142C  98 1F 1B 60 */	stb r0, 0x1b60(r31)
/* 80CE1430  48 00 00 94 */	b lbl_80CE14C4
lbl_80CE1434:
/* 80CE1434  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1438  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE143C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CE1440  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CE1444  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CE1448  4B 66 54 A1 */	bl PSMTXTrans
/* 80CE144C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1450  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1454  A8 9F 0D BE */	lha r4, 0xdbe(r31)
/* 80CE1458  4B 32 AF DD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE145C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1460  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1464  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CE1468  4B 32 AF CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE146C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1474  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CE1478  A8 1F 0D C2 */	lha r0, 0xdc2(r31)
/* 80CE147C  7C 04 02 14 */	add r0, r4, r0
/* 80CE1480  7C 04 07 34 */	extsh r4, r0
/* 80CE1484  4B 32 AF 19 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE1488  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE148C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1490  A8 1F 0D BE */	lha r0, 0xdbe(r31)
/* 80CE1494  7C 00 00 D0 */	neg r0, r0
/* 80CE1498  7C 04 07 34 */	extsh r4, r0
/* 80CE149C  4B 32 AF 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE14A0  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80CE14A4  FC 40 08 90 */	fmr f2, f1
/* 80CE14A8  FC 60 08 90 */	fmr f3, f1
/* 80CE14AC  4B 32 B9 8D */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE14B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE14B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE14B8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CE14BC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE14C0  4B 66 4F F1 */	bl PSMTXCopy
lbl_80CE14C4:
/* 80CE14C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE14C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE14CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE14D0  7C 08 03 A6 */	mtlr r0
/* 80CE14D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE14D8  4E 80 00 20 */	blr 
