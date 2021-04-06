lbl_8065A594:
/* 8065A594  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8065A598  7C 08 02 A6 */	mflr r0
/* 8065A59C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8065A5A0  39 61 00 70 */	addi r11, r1, 0x70
/* 8065A5A4  4B D0 7C 39 */	bl _savegpr_29
/* 8065A5A8  7C 7D 1B 78 */	mr r29, r3
/* 8065A5AC  3C 80 80 66 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80662F58@ha */
/* 8065A5B0  3B C4 2F 58 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80662F58@l */
/* 8065A5B4  3C 80 80 66 */	lis r4, lit_3987@ha /* 0x80662DB0@ha */
/* 8065A5B8  3B E4 2D B0 */	addi r31, r4, lit_3987@l /* 0x80662DB0@l */
/* 8065A5BC  A0 03 0C 5C */	lhz r0, 0xc5c(r3)
/* 8065A5C0  2C 00 00 02 */	cmpwi r0, 2
/* 8065A5C4  41 82 01 10 */	beq lbl_8065A6D4
/* 8065A5C8  40 80 02 C4 */	bge lbl_8065A88C
/* 8065A5CC  2C 00 00 00 */	cmpwi r0, 0
/* 8065A5D0  41 82 00 10 */	beq lbl_8065A5E0
/* 8065A5D4  40 80 00 B0 */	bge lbl_8065A684
/* 8065A5D8  48 00 02 B4 */	b lbl_8065A88C
/* 8065A5DC  48 00 02 B0 */	b lbl_8065A88C
lbl_8065A5E0:
/* 8065A5E0  88 1D 0C AA */	lbz r0, 0xcaa(r29)
/* 8065A5E4  28 00 00 00 */	cmplwi r0, 0
/* 8065A5E8  40 82 00 24 */	bne lbl_8065A60C
/* 8065A5EC  38 80 00 0F */	li r4, 0xf
/* 8065A5F0  38 A0 00 00 */	li r5, 0
/* 8065A5F4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065A5F8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A5FC  4B FF E1 35 */	bl setBck__7daCow_cFiUcff
/* 8065A600  38 00 00 02 */	li r0, 2
/* 8065A604  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065A608  48 00 02 84 */	b lbl_8065A88C
lbl_8065A60C:
/* 8065A60C  38 80 00 06 */	li r4, 6
/* 8065A610  38 A0 00 00 */	li r5, 0
/* 8065A614  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8065A618  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A61C  4B FF E1 15 */	bl setBck__7daCow_cFiUcff
/* 8065A620  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 8065A624  A8 04 00 14 */	lha r0, 0x14(r4)
/* 8065A628  C8 3F 00 48 */	lfd f1, 0x48(r31)
/* 8065A62C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8065A630  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8065A634  3C 60 43 30 */	lis r3, 0x4330
/* 8065A638  90 61 00 48 */	stw r3, 0x48(r1)
/* 8065A63C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8065A640  EC 00 08 28 */	fsubs f0, f0, f1
/* 8065A644  FC 00 00 1E */	fctiwz f0, f0
/* 8065A648  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8065A64C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8065A650  7C 00 07 34 */	extsh r0, r0
/* 8065A654  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8065A658  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8065A65C  90 61 00 58 */	stw r3, 0x58(r1)
/* 8065A660  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8065A664  EC 00 08 28 */	fsubs f0, f0, f1
/* 8065A668  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8065A66C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8065A670  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A674  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8065A678  38 00 00 01 */	li r0, 1
/* 8065A67C  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
/* 8065A680  48 00 02 0C */	b lbl_8065A88C
lbl_8065A684:
/* 8065A684  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A688  38 80 00 01 */	li r4, 1
/* 8065A68C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065A690  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065A694  40 82 00 18 */	bne lbl_8065A6AC
/* 8065A698  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A69C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065A6A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065A6A4  41 82 00 08 */	beq lbl_8065A6AC
/* 8065A6A8  38 80 00 00 */	li r4, 0
lbl_8065A6AC:
/* 8065A6AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065A6B0  41 82 00 24 */	beq lbl_8065A6D4
/* 8065A6B4  7F A3 EB 78 */	mr r3, r29
/* 8065A6B8  38 80 00 0F */	li r4, 0xf
/* 8065A6BC  38 A0 00 00 */	li r5, 0
/* 8065A6C0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A6C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8065A6C8  4B FF E0 69 */	bl setBck__7daCow_cFiUcff
/* 8065A6CC  38 00 00 02 */	li r0, 2
/* 8065A6D0  B0 1D 0C 5C */	sth r0, 0xc5c(r29)
lbl_8065A6D4:
/* 8065A6D4  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A6D8  38 63 00 0C */	addi r3, r3, 0xc
/* 8065A6DC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8065A6E0  4B CC DD 4D */	bl checkPass__12J3DFrameCtrlFf
/* 8065A6E4  2C 03 00 00 */	cmpwi r3, 0
/* 8065A6E8  41 82 00 2C */	beq lbl_8065A714
/* 8065A6EC  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001F@ha */
/* 8065A6F0  38 03 00 1F */	addi r0, r3, 0x001F /* 0x0005001F@l */
/* 8065A6F4  90 01 00 08 */	stw r0, 8(r1)
/* 8065A6F8  38 7D 05 7C */	addi r3, r29, 0x57c
/* 8065A6FC  38 81 00 08 */	addi r4, r1, 8
/* 8065A700  38 A0 FF FF */	li r5, -1
/* 8065A704  81 9D 05 7C */	lwz r12, 0x57c(r29)
/* 8065A708  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065A70C  7D 89 03 A6 */	mtctr r12
/* 8065A710  4E 80 04 21 */	bctrl 
lbl_8065A714:
/* 8065A714  88 1D 0C A5 */	lbz r0, 0xca5(r29)
/* 8065A718  28 00 00 00 */	cmplwi r0, 0
/* 8065A71C  40 82 00 68 */	bne lbl_8065A784
/* 8065A720  7F A3 EB 78 */	mr r3, r29
/* 8065A724  4B FF F2 9D */	bl checkNearCowRun__7daCow_cFv
/* 8065A728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A72C  40 82 00 14 */	bne lbl_8065A740
/* 8065A730  7F A3 EB 78 */	mr r3, r29
/* 8065A734  48 00 05 F9 */	bl checkPlayerWait__7daCow_cFv
/* 8065A738  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A73C  41 82 00 30 */	beq lbl_8065A76C
lbl_8065A740:
/* 8065A740  80 7E 01 FC */	lwz r3, 0x1fc(r30)
/* 8065A744  80 1E 02 00 */	lwz r0, 0x200(r30)
/* 8065A748  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8065A74C  90 01 00 40 */	stw r0, 0x40(r1)
/* 8065A750  80 1E 02 04 */	lwz r0, 0x204(r30)
/* 8065A754  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065A758  7F A3 EB 78 */	mr r3, r29
/* 8065A75C  38 81 00 3C */	addi r4, r1, 0x3c
/* 8065A760  38 A0 00 00 */	li r5, 0
/* 8065A764  4B FF E9 B1 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A768  48 00 01 24 */	b lbl_8065A88C
lbl_8065A76C:
/* 8065A76C  7F A3 EB 78 */	mr r3, r29
/* 8065A770  4B FF E3 A1 */	bl setCarryStatus__7daCow_cFv
/* 8065A774  7F A3 EB 78 */	mr r3, r29
/* 8065A778  4B FF E6 41 */	bl checkThrow__7daCow_cFv
/* 8065A77C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A780  40 82 01 0C */	bne lbl_8065A88C
lbl_8065A784:
/* 8065A784  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8065A788  38 80 00 01 */	li r4, 1
/* 8065A78C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065A790  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065A794  40 82 00 18 */	bne lbl_8065A7AC
/* 8065A798  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065A79C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065A7A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065A7A4  41 82 00 08 */	beq lbl_8065A7AC
/* 8065A7A8  38 80 00 00 */	li r4, 0
lbl_8065A7AC:
/* 8065A7AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065A7B0  41 82 00 DC */	beq lbl_8065A88C
/* 8065A7B4  7F A3 EB 78 */	mr r3, r29
/* 8065A7B8  48 00 05 11 */	bl checkNearWolf__7daCow_cFv
/* 8065A7BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065A7C0  41 82 00 30 */	beq lbl_8065A7F0
/* 8065A7C4  80 7E 02 08 */	lwz r3, 0x208(r30)
/* 8065A7C8  80 1E 02 0C */	lwz r0, 0x20c(r30)
/* 8065A7CC  90 61 00 30 */	stw r3, 0x30(r1)
/* 8065A7D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065A7D4  80 1E 02 10 */	lwz r0, 0x210(r30)
/* 8065A7D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8065A7DC  7F A3 EB 78 */	mr r3, r29
/* 8065A7E0  38 81 00 30 */	addi r4, r1, 0x30
/* 8065A7E4  38 A0 00 01 */	li r5, 1
/* 8065A7E8  4B FF E9 2D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A7EC  48 00 00 A0 */	b lbl_8065A88C
lbl_8065A7F0:
/* 8065A7F0  4B C0 D0 7D */	bl cM_rnd__Fv
/* 8065A7F4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8065A7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065A7FC  40 80 00 30 */	bge lbl_8065A82C
/* 8065A800  80 7E 02 14 */	lwz r3, 0x214(r30)
/* 8065A804  80 1E 02 18 */	lwz r0, 0x218(r30)
/* 8065A808  90 61 00 24 */	stw r3, 0x24(r1)
/* 8065A80C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8065A810  80 1E 02 1C */	lwz r0, 0x21c(r30)
/* 8065A814  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8065A818  7F A3 EB 78 */	mr r3, r29
/* 8065A81C  38 81 00 24 */	addi r4, r1, 0x24
/* 8065A820  38 A0 00 01 */	li r5, 1
/* 8065A824  4B FF E8 F1 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A828  48 00 00 64 */	b lbl_8065A88C
lbl_8065A82C:
/* 8065A82C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8065A830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065A834  40 80 00 30 */	bge lbl_8065A864
/* 8065A838  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 8065A83C  80 1E 02 24 */	lwz r0, 0x224(r30)
/* 8065A840  90 61 00 18 */	stw r3, 0x18(r1)
/* 8065A844  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8065A848  80 1E 02 28 */	lwz r0, 0x228(r30)
/* 8065A84C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8065A850  7F A3 EB 78 */	mr r3, r29
/* 8065A854  38 81 00 18 */	addi r4, r1, 0x18
/* 8065A858  38 A0 00 01 */	li r5, 1
/* 8065A85C  4B FF E8 B9 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065A860  48 00 00 2C */	b lbl_8065A88C
lbl_8065A864:
/* 8065A864  80 7E 02 2C */	lwz r3, 0x22c(r30)
/* 8065A868  80 1E 02 30 */	lwz r0, 0x230(r30)
/* 8065A86C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8065A870  90 01 00 10 */	stw r0, 0x10(r1)
/* 8065A874  80 1E 02 34 */	lwz r0, 0x234(r30)
/* 8065A878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065A87C  7F A3 EB 78 */	mr r3, r29
/* 8065A880  38 81 00 0C */	addi r4, r1, 0xc
/* 8065A884  38 A0 00 00 */	li r5, 0
/* 8065A888  4B FF E8 8D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
lbl_8065A88C:
/* 8065A88C  39 61 00 70 */	addi r11, r1, 0x70
/* 8065A890  4B D0 79 99 */	bl _restgpr_29
/* 8065A894  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8065A898  7C 08 03 A6 */	mtlr r0
/* 8065A89C  38 21 00 70 */	addi r1, r1, 0x70
/* 8065A8A0  4E 80 00 20 */	blr 
