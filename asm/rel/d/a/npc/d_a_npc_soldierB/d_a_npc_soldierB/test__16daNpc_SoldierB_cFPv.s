lbl_80AF50AC:
/* 80AF50AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF50B0  7C 08 02 A6 */	mflr r0
/* 80AF50B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF50B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF50BC  7C 7F 1B 78 */	mr r31, r3
/* 80AF50C0  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 80AF50C4  2C 00 00 02 */	cmpwi r0, 2
/* 80AF50C8  41 82 00 38 */	beq lbl_80AF5100
/* 80AF50CC  40 80 00 7C */	bge lbl_80AF5148
/* 80AF50D0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF50D4  41 82 00 0C */	beq lbl_80AF50E0
/* 80AF50D8  48 00 00 70 */	b lbl_80AF5148
/* 80AF50DC  48 00 00 6C */	b lbl_80AF5148
lbl_80AF50E0:
/* 80AF50E0  3C 60 80 AF */	lis r3, lit_4454@ha
/* 80AF50E4  C0 03 5B 54 */	lfs f0, lit_4454@l(r3)
/* 80AF50E8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AF50EC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AF50F0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AF50F4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AF50F8  38 00 00 02 */	li r0, 2
/* 80AF50FC  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_80AF5100:
/* 80AF5100  7F E3 FB 78 */	mr r3, r31
/* 80AF5104  3C 80 80 AF */	lis r4, m__22daNpc_SoldierB_Param_c@ha
/* 80AF5108  38 A4 5A D4 */	addi r5, r4, m__22daNpc_SoldierB_Param_c@l
/* 80AF510C  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80AF5110  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AF5114  38 A0 00 00 */	li r5, 0
/* 80AF5118  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF511C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF5120  7D 89 03 A6 */	mtctr r12
/* 80AF5124  4E 80 04 21 */	bctrl 
/* 80AF5128  7F E3 FB 78 */	mr r3, r31
/* 80AF512C  3C 80 80 AF */	lis r4, m__22daNpc_SoldierB_Param_c@ha
/* 80AF5130  38 84 5A D4 */	addi r4, r4, m__22daNpc_SoldierB_Param_c@l
/* 80AF5134  A8 84 00 68 */	lha r4, 0x68(r4)
/* 80AF5138  4B FF F8 AD */	bl setLookMode__16daNpc_SoldierB_cFi
/* 80AF513C  38 00 00 00 */	li r0, 0
/* 80AF5140  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AF5144  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80AF5148:
/* 80AF5148  38 60 00 01 */	li r3, 1
/* 80AF514C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF5154  7C 08 03 A6 */	mtlr r0
/* 80AF5158  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF515C  4E 80 00 20 */	blr 
