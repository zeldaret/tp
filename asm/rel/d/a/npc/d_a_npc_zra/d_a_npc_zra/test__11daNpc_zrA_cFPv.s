lbl_80B7EC54:
/* 80B7EC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EC58  7C 08 02 A6 */	mflr r0
/* 80B7EC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7EC64  7C 7F 1B 78 */	mr r31, r3
/* 80B7EC68  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B7EC6C  2C 00 00 02 */	cmpwi r0, 2
/* 80B7EC70  41 82 00 38 */	beq lbl_80B7ECA8
/* 80B7EC74  40 80 00 AC */	bge lbl_80B7ED20
/* 80B7EC78  2C 00 00 00 */	cmpwi r0, 0
/* 80B7EC7C  41 82 00 0C */	beq lbl_80B7EC88
/* 80B7EC80  48 00 00 A0 */	b lbl_80B7ED20
/* 80B7EC84  48 00 00 9C */	b lbl_80B7ED20
lbl_80B7EC88:
/* 80B7EC88  3C 60 80 B9 */	lis r3, lit_3939@ha
/* 80B7EC8C  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)
/* 80B7EC90  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B7EC94  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B7EC98  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B7EC9C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B7ECA0  38 00 00 02 */	li r0, 2
/* 80B7ECA4  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B7ECA8:
/* 80B7ECA8  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7ECAC  38 A3 C4 58 */	addi r5, r3, m__17daNpc_zrA_Param_c@l
/* 80B7ECB0  A8 85 00 64 */	lha r4, 0x64(r5)
/* 80B7ECB4  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 80B7ECB8  7C 04 00 00 */	cmpw r4, r0
/* 80B7ECBC  41 82 00 1C */	beq lbl_80B7ECD8
/* 80B7ECC0  7F E3 FB 78 */	mr r3, r31
/* 80B7ECC4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B7ECC8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7ECCC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7ECD0  7D 89 03 A6 */	mtctr r12
/* 80B7ECD4  4E 80 04 21 */	bctrl 
lbl_80B7ECD8:
/* 80B7ECD8  7F E3 FB 78 */	mr r3, r31
/* 80B7ECDC  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B7ECE0  38 A4 C4 58 */	addi r5, r4, m__17daNpc_zrA_Param_c@l
/* 80B7ECE4  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80B7ECE8  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B7ECEC  38 A0 00 00 */	li r5, 0
/* 80B7ECF0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7ECF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7ECF8  7D 89 03 A6 */	mtctr r12
/* 80B7ECFC  4E 80 04 21 */	bctrl 
/* 80B7ED00  7F E3 FB 78 */	mr r3, r31
/* 80B7ED04  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B7ED08  38 84 C4 58 */	addi r4, r4, m__17daNpc_zrA_Param_c@l
/* 80B7ED0C  A8 84 00 68 */	lha r4, 0x68(r4)
/* 80B7ED10  4B FF F9 E5 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B7ED14  38 00 00 00 */	li r0, 0
/* 80B7ED18  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B7ED1C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B7ED20:
/* 80B7ED20  38 60 00 01 */	li r3, 1
/* 80B7ED24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7ED28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7ED2C  7C 08 03 A6 */	mtlr r0
/* 80B7ED30  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7ED34  4E 80 00 20 */	blr 
