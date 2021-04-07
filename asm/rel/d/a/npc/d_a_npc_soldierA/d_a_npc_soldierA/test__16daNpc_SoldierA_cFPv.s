lbl_80AF1CA4:
/* 80AF1CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1CA8  7C 08 02 A6 */	mflr r0
/* 80AF1CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1CB4  7C 7F 1B 78 */	mr r31, r3
/* 80AF1CB8  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 80AF1CBC  2C 00 00 02 */	cmpwi r0, 2
/* 80AF1CC0  41 82 00 38 */	beq lbl_80AF1CF8
/* 80AF1CC4  40 80 00 7C */	bge lbl_80AF1D40
/* 80AF1CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80AF1CCC  41 82 00 0C */	beq lbl_80AF1CD8
/* 80AF1CD0  48 00 00 70 */	b lbl_80AF1D40
/* 80AF1CD4  48 00 00 6C */	b lbl_80AF1D40
lbl_80AF1CD8:
/* 80AF1CD8  3C 60 80 AF */	lis r3, lit_4449@ha /* 0x80AF2768@ha */
/* 80AF1CDC  C0 03 27 68 */	lfs f0, lit_4449@l(r3)  /* 0x80AF2768@l */
/* 80AF1CE0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AF1CE4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AF1CE8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AF1CEC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AF1CF0  38 00 00 02 */	li r0, 2
/* 80AF1CF4  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_80AF1CF8:
/* 80AF1CF8  7F E3 FB 78 */	mr r3, r31
/* 80AF1CFC  3C 80 80 AF */	lis r4, m__22daNpc_SoldierA_Param_c@ha /* 0x80AF26E8@ha */
/* 80AF1D00  38 A4 26 E8 */	addi r5, r4, m__22daNpc_SoldierA_Param_c@l /* 0x80AF26E8@l */
/* 80AF1D04  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80AF1D08  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AF1D0C  38 A0 00 00 */	li r5, 0
/* 80AF1D10  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF1D14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF1D18  7D 89 03 A6 */	mtctr r12
/* 80AF1D1C  4E 80 04 21 */	bctrl 
/* 80AF1D20  7F E3 FB 78 */	mr r3, r31
/* 80AF1D24  3C 80 80 AF */	lis r4, m__22daNpc_SoldierA_Param_c@ha /* 0x80AF26E8@ha */
/* 80AF1D28  38 84 26 E8 */	addi r4, r4, m__22daNpc_SoldierA_Param_c@l /* 0x80AF26E8@l */
/* 80AF1D2C  A8 84 00 68 */	lha r4, 0x68(r4)
/* 80AF1D30  4B FF F7 59 */	bl setLookMode__16daNpc_SoldierA_cFi
/* 80AF1D34  38 00 00 00 */	li r0, 0
/* 80AF1D38  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AF1D3C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80AF1D40:
/* 80AF1D40  38 60 00 01 */	li r3, 1
/* 80AF1D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF1D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1D4C  7C 08 03 A6 */	mtlr r0
/* 80AF1D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1D54  4E 80 00 20 */	blr 
