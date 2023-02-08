lbl_80BB64A8:
/* 80BB64A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB64AC  7C 08 02 A6 */	mflr r0
/* 80BB64B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB64B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BB64B8  7C 7F 1B 78 */	mr r31, r3
/* 80BB64BC  88 03 05 7C */	lbz r0, 0x57c(r3)
/* 80BB64C0  2C 00 00 01 */	cmpwi r0, 1
/* 80BB64C4  41 82 00 78 */	beq lbl_80BB653C
/* 80BB64C8  40 80 00 DC */	bge lbl_80BB65A4
/* 80BB64CC  2C 00 00 00 */	cmpwi r0, 0
/* 80BB64D0  40 80 00 0C */	bge lbl_80BB64DC
/* 80BB64D4  48 00 00 D0 */	b lbl_80BB65A4
/* 80BB64D8  48 00 00 CC */	b lbl_80BB65A4
lbl_80BB64DC:
/* 80BB64DC  88 1F 05 7D */	lbz r0, 0x57d(r31)
/* 80BB64E0  28 00 00 00 */	cmplwi r0, 0
/* 80BB64E4  41 82 00 C0 */	beq lbl_80BB65A4
/* 80BB64E8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80BB64EC  90 01 00 08 */	stw r0, 8(r1)
/* 80BB64F0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BB64F4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BB64F8  38 81 00 08 */	addi r4, r1, 8
/* 80BB64FC  4B 46 32 FD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BB6500  28 03 00 00 */	cmplwi r3, 0
/* 80BB6504  40 82 00 A0 */	bne lbl_80BB65A4
/* 80BB6508  38 00 00 3C */	li r0, 0x3c
/* 80BB650C  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 80BB6510  3C 60 80 BB */	lis r3, lit_3811@ha /* 0x80BB6714@ha */
/* 80BB6514  C0 03 67 14 */	lfs f0, lit_3811@l(r3)  /* 0x80BB6714@l */
/* 80BB6518  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BB651C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80BB6520  3C 60 80 BB */	lis r3, lit_3742@ha /* 0x80BB6710@ha */
/* 80BB6524  C0 03 67 10 */	lfs f0, lit_3742@l(r3)  /* 0x80BB6710@l */
/* 80BB6528  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BB652C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BB6530  38 00 00 01 */	li r0, 1
/* 80BB6534  98 1F 05 7C */	stb r0, 0x57c(r31)
/* 80BB6538  48 00 00 6C */	b lbl_80BB65A4
lbl_80BB653C:
/* 80BB653C  A8 7F 05 7E */	lha r3, 0x57e(r31)
/* 80BB6540  2C 03 00 00 */	cmpwi r3, 0
/* 80BB6544  40 81 00 0C */	ble lbl_80BB6550
/* 80BB6548  38 03 FF FF */	addi r0, r3, -1
/* 80BB654C  B0 1F 05 7E */	sth r0, 0x57e(r31)
lbl_80BB6550:
/* 80BB6550  A8 1F 05 7E */	lha r0, 0x57e(r31)
/* 80BB6554  2C 00 00 00 */	cmpwi r0, 0
/* 80BB6558  40 82 00 4C */	bne lbl_80BB65A4
/* 80BB655C  7F E3 FB 78 */	mr r3, r31
/* 80BB6560  4B FF FB 99 */	bl setBokkuri__10daBkLeaf_cFv
/* 80BB6564  88 7F 05 7D */	lbz r3, 0x57d(r31)
/* 80BB6568  28 03 00 FF */	cmplwi r3, 0xff
/* 80BB656C  40 82 00 10 */	bne lbl_80BB657C
/* 80BB6570  38 00 00 00 */	li r0, 0
/* 80BB6574  98 1F 05 7C */	stb r0, 0x57c(r31)
/* 80BB6578  48 00 00 2C */	b lbl_80BB65A4
lbl_80BB657C:
/* 80BB657C  38 03 FF FF */	addi r0, r3, -1
/* 80BB6580  98 1F 05 7D */	stb r0, 0x57d(r31)
/* 80BB6584  88 1F 05 7D */	lbz r0, 0x57d(r31)
/* 80BB6588  28 00 00 00 */	cmplwi r0, 0
/* 80BB658C  40 82 00 10 */	bne lbl_80BB659C
/* 80BB6590  38 00 00 02 */	li r0, 2
/* 80BB6594  98 1F 05 7C */	stb r0, 0x57c(r31)
/* 80BB6598  48 00 00 0C */	b lbl_80BB65A4
lbl_80BB659C:
/* 80BB659C  38 00 00 00 */	li r0, 0
/* 80BB65A0  98 1F 05 7C */	stb r0, 0x57c(r31)
lbl_80BB65A4:
/* 80BB65A4  7F E3 FB 78 */	mr r3, r31
/* 80BB65A8  4B FF FC 21 */	bl setBaseMtx__10daBkLeaf_cFv
/* 80BB65AC  38 60 00 01 */	li r3, 1
/* 80BB65B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BB65B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB65B8  7C 08 03 A6 */	mtlr r0
/* 80BB65BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB65C0  4E 80 00 20 */	blr 
