lbl_801F6458:
/* 801F6458  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F645C  7C 08 02 A6 */	mflr r0
/* 801F6460  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F6464  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F6468  7C 7F 1B 78 */	mr r31, r3
/* 801F646C  88 03 00 54 */	lbz r0, 0x54(r3)
/* 801F6470  54 00 10 3A */	slwi r0, r0, 2
/* 801F6474  7C 7F 02 14 */	add r3, r31, r0
/* 801F6478  80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 801F647C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F6480  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F6484  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F6488  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F648C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F6490  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F6494  7D 89 03 A6 */	mtctr r12
/* 801F6498  4E 80 04 21 */	bctrl 
/* 801F649C  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F64A0  54 00 10 3A */	slwi r0, r0, 2
/* 801F64A4  7C 7F 02 14 */	add r3, r31, r0
/* 801F64A8  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 801F64AC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F64B0  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F64B4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F64B8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F64BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F64C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F64C4  7D 89 03 A6 */	mtctr r12
/* 801F64C8  4E 80 04 21 */	bctrl 
/* 801F64CC  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F64D0  54 00 10 3A */	slwi r0, r0, 2
/* 801F64D4  7C 7F 02 14 */	add r3, r31, r0
/* 801F64D8  80 63 00 EC */	lwz r3, 0xec(r3)
/* 801F64DC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F64E0  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F64E4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F64E8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F64EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F64F0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F64F4  7D 89 03 A6 */	mtctr r12
/* 801F64F8  4E 80 04 21 */	bctrl 
/* 801F64FC  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F6500  54 00 10 3A */	slwi r0, r0, 2
/* 801F6504  7C 7F 02 14 */	add r3, r31, r0
/* 801F6508  80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 801F650C  38 80 00 FF */	li r4, 0xff
/* 801F6510  81 83 00 00 */	lwz r12, 0(r3)
/* 801F6514  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F6518  7D 89 03 A6 */	mtctr r12
/* 801F651C  4E 80 04 21 */	bctrl 
/* 801F6520  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F6524  54 00 10 3A */	slwi r0, r0, 2
/* 801F6528  7C 7F 02 14 */	add r3, r31, r0
/* 801F652C  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 801F6530  38 80 00 FF */	li r4, 0xff
/* 801F6534  81 83 00 00 */	lwz r12, 0(r3)
/* 801F6538  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F653C  7D 89 03 A6 */	mtctr r12
/* 801F6540  4E 80 04 21 */	bctrl 
/* 801F6544  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F6548  54 00 10 3A */	slwi r0, r0, 2
/* 801F654C  7C 7F 02 14 */	add r3, r31, r0
/* 801F6550  80 63 00 EC */	lwz r3, 0xec(r3)
/* 801F6554  38 80 00 FF */	li r4, 0xff
/* 801F6558  81 83 00 00 */	lwz r12, 0(r3)
/* 801F655C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801F6560  7D 89 03 A6 */	mtctr r12
/* 801F6564  4E 80 04 21 */	bctrl 
/* 801F6568  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F656C  54 00 10 3A */	slwi r0, r0, 2
/* 801F6570  7C 7F 02 14 */	add r3, r31, r0
/* 801F6574  80 83 00 68 */	lwz r4, 0x68(r3)
/* 801F6578  38 61 00 08 */	addi r3, r1, 8
/* 801F657C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801F6580  38 C0 00 00 */	li r6, 0
/* 801F6584  38 E0 00 00 */	li r7, 0
/* 801F6588  48 05 E9 35 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801F658C  80 61 00 08 */	lwz r3, 8(r1)
/* 801F6590  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F6594  90 61 00 14 */	stw r3, 0x14(r1)
/* 801F6598  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F659C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801F65A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F65A4  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F65A8  54 00 10 3A */	slwi r0, r0, 2
/* 801F65AC  7C 7F 02 14 */	add r3, r31, r0
/* 801F65B0  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F65B4  80 83 00 04 */	lwz r4, 4(r3)
/* 801F65B8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F65BC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801F65C0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801F65C4  38 A0 00 01 */	li r5, 1
/* 801F65C8  4B F9 EB 2D */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801F65CC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F65D0  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F65D4  4B F9 EC CD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F65D8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F65DC  C0 22 AA 5C */	lfs f1, lit_4180(r2)
/* 801F65E0  C0 42 AA 60 */	lfs f2, lit_4181(r2)
/* 801F65E4  C0 62 AA 64 */	lfs f3, lit_4182(r2)
/* 801F65E8  C0 82 AA 68 */	lfs f4, lit_4183(r2)
/* 801F65EC  FC A0 20 90 */	fmr f5, f4
/* 801F65F0  4B F9 EB C1 */	bl setParam__16dSelect_cursor_cFfffff
/* 801F65F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F65F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F65FC  7C 08 03 A6 */	mtlr r0
/* 801F6600  38 21 00 30 */	addi r1, r1, 0x30
/* 801F6604  4E 80 00 20 */	blr 
