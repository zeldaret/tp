lbl_8004A7AC:
/* 8004A7AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004A7B0  7C 08 02 A6 */	mflr r0
/* 8004A7B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004A7B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004A7BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8004A7C0  7C 7E 1B 78 */	mr r30, r3
/* 8004A7C4  80 63 00 04 */	lwz r3, 4(r3)
/* 8004A7C8  28 03 00 00 */	cmplwi r3, 0
/* 8004A7CC  41 82 00 8C */	beq lbl_8004A858
/* 8004A7D0  88 1E 03 92 */	lbz r0, 0x392(r30)
/* 8004A7D4  28 00 00 00 */	cmplwi r0, 0
/* 8004A7D8  40 82 00 44 */	bne lbl_8004A81C
/* 8004A7DC  7C 7F 1B 78 */	mr r31, r3
/* 8004A7E0  80 9E 00 00 */	lwz r4, 0(r30)
/* 8004A7E4  48 2E 08 B9 */	bl searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
/* 8004A7E8  88 1E 03 91 */	lbz r0, 0x391(r30)
/* 8004A7EC  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004A7F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004A7F4  3C 00 43 30 */	lis r0, 0x4330
/* 8004A7F8  90 01 00 08 */	stw r0, 8(r1)
/* 8004A7FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8004A800  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004A804  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8004A808  80 7E 00 00 */	lwz r3, 0(r30)
/* 8004A80C  38 63 00 58 */	addi r3, r3, 0x58
/* 8004A810  7F E4 FB 78 */	mr r4, r31
/* 8004A814  48 2E 53 B5 */	bl entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 8004A818  48 00 00 40 */	b lbl_8004A858
lbl_8004A81C:
/* 8004A81C  7C 7F 1B 78 */	mr r31, r3
/* 8004A820  80 9E 00 00 */	lwz r4, 0(r30)
/* 8004A824  48 2E 10 59 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 8004A828  88 1E 03 91 */	lbz r0, 0x391(r30)
/* 8004A82C  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004A830  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004A834  3C 00 43 30 */	lis r0, 0x4330
/* 8004A838  90 01 00 08 */	stw r0, 8(r1)
/* 8004A83C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8004A840  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004A844  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8004A848  80 7E 00 00 */	lwz r3, 0(r30)
/* 8004A84C  38 63 00 58 */	addi r3, r3, 0x58
/* 8004A850  7F E4 FB 78 */	mr r4, r31
/* 8004A854  48 2E 56 1D */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_8004A858:
/* 8004A858  83 FE 00 00 */	lwz r31, 0(r30)
/* 8004A85C  7F E3 FB 78 */	mr r3, r31
/* 8004A860  48 2D B8 99 */	bl syncJ3DSysFlags__12J3DModelDataCFv
/* 8004A864  7F E3 FB 78 */	mr r3, r31
/* 8004A868  48 2D B8 65 */	bl syncJ3DSysPointers__12J3DModelDataCFv
/* 8004A86C  38 00 00 00 */	li r0, 0
/* 8004A870  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 8004A874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004A878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8004A87C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004A880  7C 08 03 A6 */	mtlr r0
/* 8004A884  38 21 00 20 */	addi r1, r1, 0x20
/* 8004A888  4E 80 00 20 */	blr 
