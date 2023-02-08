lbl_8072E5A4:
/* 8072E5A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072E5A8  7C 08 02 A6 */	mflr r0
/* 8072E5AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072E5B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8072E5B4  7C 7F 1B 78 */	mr r31, r3
/* 8072E5B8  38 80 00 1D */	li r4, 0x1d
/* 8072E5BC  4B FF FD 61 */	bl checkBck__8daE_OC_cFi
/* 8072E5C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8072E5C4  41 82 00 98 */	beq lbl_8072E65C
/* 8072E5C8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072E5CC  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E5D0  3C 80 80 73 */	lis r4, lit_4991@ha /* 0x80735BEC@ha */
/* 8072E5D4  C0 24 5B EC */	lfs f1, lit_4991@l(r4)  /* 0x80735BEC@l */
/* 8072E5D8  4B BF 9E 55 */	bl checkPass__12J3DFrameCtrlFf
/* 8072E5DC  2C 03 00 00 */	cmpwi r3, 0
/* 8072E5E0  41 82 00 34 */	beq lbl_8072E614
/* 8072E5E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070178@ha */
/* 8072E5E8  38 03 01 78 */	addi r0, r3, 0x0178 /* 0x00070178@l */
/* 8072E5EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8072E5F0  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E5F4  38 81 00 0C */	addi r4, r1, 0xc
/* 8072E5F8  38 A0 00 00 */	li r5, 0
/* 8072E5FC  38 C0 FF FF */	li r6, -1
/* 8072E600  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E604  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E608  7D 89 03 A6 */	mtctr r12
/* 8072E60C  4E 80 04 21 */	bctrl 
/* 8072E610  48 00 00 4C */	b lbl_8072E65C
lbl_8072E614:
/* 8072E614  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8072E618  38 63 00 0C */	addi r3, r3, 0xc
/* 8072E61C  3C 80 80 73 */	lis r4, lit_4992@ha /* 0x80735BF0@ha */
/* 8072E620  C0 24 5B F0 */	lfs f1, lit_4992@l(r4)  /* 0x80735BF0@l */
/* 8072E624  4B BF 9E 09 */	bl checkPass__12J3DFrameCtrlFf
/* 8072E628  2C 03 00 00 */	cmpwi r3, 0
/* 8072E62C  41 82 00 30 */	beq lbl_8072E65C
/* 8072E630  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070179@ha */
/* 8072E634  38 03 01 79 */	addi r0, r3, 0x0179 /* 0x00070179@l */
/* 8072E638  90 01 00 08 */	stw r0, 8(r1)
/* 8072E63C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8072E640  38 81 00 08 */	addi r4, r1, 8
/* 8072E644  38 A0 00 00 */	li r5, 0
/* 8072E648  38 C0 FF FF */	li r6, -1
/* 8072E64C  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 8072E650  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072E654  7D 89 03 A6 */	mtctr r12
/* 8072E658  4E 80 04 21 */	bctrl 
lbl_8072E65C:
/* 8072E65C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8072E660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072E664  7C 08 03 A6 */	mtlr r0
/* 8072E668  38 21 00 20 */	addi r1, r1, 0x20
/* 8072E66C  4E 80 00 20 */	blr 
