lbl_809CEA6C:
/* 809CEA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEA70  7C 08 02 A6 */	mflr r0
/* 809CEA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEA78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CEA7C  7C 7F 1B 78 */	mr r31, r3
/* 809CEA80  A0 03 0E 46 */	lhz r0, 0xe46(r3)
/* 809CEA84  2C 00 00 02 */	cmpwi r0, 2
/* 809CEA88  41 82 00 38 */	beq lbl_809CEAC0
/* 809CEA8C  40 80 00 AC */	bge lbl_809CEB38
/* 809CEA90  2C 00 00 00 */	cmpwi r0, 0
/* 809CEA94  41 82 00 0C */	beq lbl_809CEAA0
/* 809CEA98  48 00 00 A0 */	b lbl_809CEB38
/* 809CEA9C  48 00 00 9C */	b lbl_809CEB38
lbl_809CEAA0:
/* 809CEAA0  3C 60 80 9D */	lis r3, lit_4455@ha /* 0x809CF59C@ha */
/* 809CEAA4  C0 03 F5 9C */	lfs f0, lit_4455@l(r3)  /* 0x809CF59C@l */
/* 809CEAA8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809CEAAC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809CEAB0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809CEAB4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809CEAB8  38 00 00 02 */	li r0, 2
/* 809CEABC  B0 1F 0E 46 */	sth r0, 0xe46(r31)
lbl_809CEAC0:
/* 809CEAC0  3C 60 80 9D */	lis r3, m__17daNpc_grC_Param_c@ha /* 0x809CF51C@ha */
/* 809CEAC4  38 A3 F5 1C */	addi r5, r3, m__17daNpc_grC_Param_c@l /* 0x809CF51C@l */
/* 809CEAC8  A8 85 00 64 */	lha r4, 0x64(r5)
/* 809CEACC  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 809CEAD0  7C 04 00 00 */	cmpw r4, r0
/* 809CEAD4  41 82 00 1C */	beq lbl_809CEAF0
/* 809CEAD8  7F E3 FB 78 */	mr r3, r31
/* 809CEADC  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809CEAE0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CEAE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CEAE8  7D 89 03 A6 */	mtctr r12
/* 809CEAEC  4E 80 04 21 */	bctrl 
lbl_809CEAF0:
/* 809CEAF0  7F E3 FB 78 */	mr r3, r31
/* 809CEAF4  3C 80 80 9D */	lis r4, m__17daNpc_grC_Param_c@ha /* 0x809CF51C@ha */
/* 809CEAF8  38 A4 F5 1C */	addi r5, r4, m__17daNpc_grC_Param_c@l /* 0x809CF51C@l */
/* 809CEAFC  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809CEB00  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809CEB04  38 A0 00 00 */	li r5, 0
/* 809CEB08  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CEB0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CEB10  7D 89 03 A6 */	mtctr r12
/* 809CEB14  4E 80 04 21 */	bctrl 
/* 809CEB18  7F E3 FB 78 */	mr r3, r31
/* 809CEB1C  3C 80 80 9D */	lis r4, m__17daNpc_grC_Param_c@ha /* 0x809CF51C@ha */
/* 809CEB20  38 84 F5 1C */	addi r4, r4, m__17daNpc_grC_Param_c@l /* 0x809CF51C@l */
/* 809CEB24  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809CEB28  4B FF F2 29 */	bl setLookMode__11daNpc_grC_cFi
/* 809CEB2C  38 00 00 00 */	li r0, 0
/* 809CEB30  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809CEB34  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809CEB38:
/* 809CEB38  38 60 00 01 */	li r3, 1
/* 809CEB3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CEB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEB44  7C 08 03 A6 */	mtlr r0
/* 809CEB48  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEB4C  4E 80 00 20 */	blr 
