lbl_809F797C:
/* 809F797C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7980  7C 08 02 A6 */	mflr r0
/* 809F7984  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F798C  7C 7F 1B 78 */	mr r31, r3
/* 809F7990  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809F7994  2C 00 00 02 */	cmpwi r0, 2
/* 809F7998  41 82 00 38 */	beq lbl_809F79D0
/* 809F799C  40 80 00 7C */	bge lbl_809F7A18
/* 809F79A0  2C 00 00 00 */	cmpwi r0, 0
/* 809F79A4  41 82 00 0C */	beq lbl_809F79B0
/* 809F79A8  48 00 00 70 */	b lbl_809F7A18
/* 809F79AC  48 00 00 6C */	b lbl_809F7A18
lbl_809F79B0:
/* 809F79B0  3C 60 80 A0 */	lis r3, lit_4457@ha /* 0x809F8594@ha */
/* 809F79B4  C0 03 85 94 */	lfs f0, lit_4457@l(r3)  /* 0x809F8594@l */
/* 809F79B8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809F79BC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809F79C0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809F79C4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809F79C8  38 00 00 02 */	li r0, 2
/* 809F79CC  B0 1F 0E 0E */	sth r0, 0xe0e(r31)
lbl_809F79D0:
/* 809F79D0  7F E3 FB 78 */	mr r3, r31
/* 809F79D4  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F79D8  38 A4 84 F4 */	addi r5, r4, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F79DC  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809F79E0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809F79E4  38 A0 00 00 */	li r5, 0
/* 809F79E8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809F79EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F79F0  7D 89 03 A6 */	mtctr r12
/* 809F79F4  4E 80 04 21 */	bctrl 
/* 809F79F8  7F E3 FB 78 */	mr r3, r31
/* 809F79FC  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F7A00  38 84 84 F4 */	addi r4, r4, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F7A04  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809F7A08  4B FF E1 59 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F7A0C  38 00 00 00 */	li r0, 0
/* 809F7A10  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809F7A14  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809F7A18:
/* 809F7A18  38 60 00 01 */	li r3, 1
/* 809F7A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7A24  7C 08 03 A6 */	mtlr r0
/* 809F7A28  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7A2C  4E 80 00 20 */	blr 
