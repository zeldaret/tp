lbl_8072E788:
/* 8072E788  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8072E78C  7C 08 02 A6 */	mflr r0
/* 8072E790  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072E794  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8072E798  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8072E79C  7C 7F 1B 78 */	mr r31, r3
/* 8072E7A0  3C 80 80 73 */	lis r4, lit_3911@ha
/* 8072E7A4  3B C4 5B 28 */	addi r30, r4, lit_3911@l
/* 8072E7A8  38 80 00 0B */	li r4, 0xb
/* 8072E7AC  4B FF FB 71 */	bl checkBck__8daE_OC_cFi
/* 8072E7B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072E7B4  41 82 01 44 */	beq lbl_8072E8F8
/* 8072E7B8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072E7BC  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E7C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8072E7C4  4B BF 9C 68 */	b checkPass__12J3DFrameCtrlFf
/* 8072E7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8072E7CC  41 82 00 30 */	beq lbl_8072E7FC
/* 8072E7D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007017F@ha */
/* 8072E7D4  38 03 01 7F */	addi r0, r3, 0x017F /* 0x0007017F@l */
/* 8072E7D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8072E7DC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E7E0  38 81 00 18 */	addi r4, r1, 0x18
/* 8072E7E4  38 A0 FF FF */	li r5, -1
/* 8072E7E8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E7EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8072E7F0  7D 89 03 A6 */	mtctr r12
/* 8072E7F4  4E 80 04 21 */	bctrl 
/* 8072E7F8  48 00 00 90 */	b lbl_8072E888
lbl_8072E7FC:
/* 8072E7FC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072E800  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E804  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8072E808  4B BF 9C 24 */	b checkPass__12J3DFrameCtrlFf
/* 8072E80C  2C 03 00 00 */	cmpwi r3, 0
/* 8072E810  41 82 00 34 */	beq lbl_8072E844
/* 8072E814  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070178@ha */
/* 8072E818  38 03 01 78 */	addi r0, r3, 0x0178 /* 0x00070178@l */
/* 8072E81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072E820  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E824  38 81 00 14 */	addi r4, r1, 0x14
/* 8072E828  38 A0 00 00 */	li r5, 0
/* 8072E82C  38 C0 FF FF */	li r6, -1
/* 8072E830  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E834  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E838  7D 89 03 A6 */	mtctr r12
/* 8072E83C  4E 80 04 21 */	bctrl 
/* 8072E840  48 00 00 48 */	b lbl_8072E888
lbl_8072E844:
/* 8072E844  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072E848  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E84C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8072E850  4B BF 9B DC */	b checkPass__12J3DFrameCtrlFf
/* 8072E854  2C 03 00 00 */	cmpwi r3, 0
/* 8072E858  41 82 00 30 */	beq lbl_8072E888
/* 8072E85C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070179@ha */
/* 8072E860  38 03 01 79 */	addi r0, r3, 0x0179 /* 0x00070179@l */
/* 8072E864  90 01 00 10 */	stw r0, 0x10(r1)
/* 8072E868  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E86C  38 81 00 10 */	addi r4, r1, 0x10
/* 8072E870  38 A0 00 00 */	li r5, 0
/* 8072E874  38 C0 FF FF */	li r6, -1
/* 8072E878  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E87C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E880  7D 89 03 A6 */	mtctr r12
/* 8072E884  4E 80 04 21 */	bctrl 
lbl_8072E888:
/* 8072E888  80 9F 06 A4 */	lwz r4, 0x6a4(r31)
/* 8072E88C  3C 60 80 73 */	lis r3, stringBase0@ha
/* 8072E890  38 03 5D 0C */	addi r0, r3, stringBase0@l
/* 8072E894  7C 04 00 40 */	cmplw r4, r0
/* 8072E898  40 82 00 34 */	bne lbl_8072E8CC
/* 8072E89C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070193@ha */
/* 8072E8A0  38 03 01 93 */	addi r0, r3, 0x0193 /* 0x00070193@l */
/* 8072E8A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072E8A8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E8AC  38 81 00 0C */	addi r4, r1, 0xc
/* 8072E8B0  38 A0 00 00 */	li r5, 0
/* 8072E8B4  38 C0 FF FF */	li r6, -1
/* 8072E8B8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E8BC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8072E8C0  7D 89 03 A6 */	mtctr r12
/* 8072E8C4  4E 80 04 21 */	bctrl 
/* 8072E8C8  48 00 00 30 */	b lbl_8072E8F8
lbl_8072E8CC:
/* 8072E8CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070537@ha */
/* 8072E8D0  38 03 05 37 */	addi r0, r3, 0x0537 /* 0x00070537@l */
/* 8072E8D4  90 01 00 08 */	stw r0, 8(r1)
/* 8072E8D8  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E8DC  38 81 00 08 */	addi r4, r1, 8
/* 8072E8E0  38 A0 00 00 */	li r5, 0
/* 8072E8E4  38 C0 FF FF */	li r6, -1
/* 8072E8E8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E8EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8072E8F0  7D 89 03 A6 */	mtctr r12
/* 8072E8F4  4E 80 04 21 */	bctrl 
lbl_8072E8F8:
/* 8072E8F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8072E8FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8072E900  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8072E904  7C 08 03 A6 */	mtlr r0
/* 8072E908  38 21 00 30 */	addi r1, r1, 0x30
/* 8072E90C  4E 80 00 20 */	blr 
