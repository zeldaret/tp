lbl_8055CCD8:
/* 8055CCD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055CCDC  7C 08 02 A6 */	mflr r0
/* 8055CCE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055CCE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CCE8  4B E0 54 F5 */	bl _savegpr_29
/* 8055CCEC  7C 7D 1B 78 */	mr r29, r3
/* 8055CCF0  3B C0 00 09 */	li r30, 9
/* 8055CCF4  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 8055CCF8  2C 00 00 03 */	cmpwi r0, 3
/* 8055CCFC  41 82 00 24 */	beq lbl_8055CD20
/* 8055CD00  40 80 00 10 */	bge lbl_8055CD10
/* 8055CD04  2C 00 00 01 */	cmpwi r0, 1
/* 8055CD08  41 82 00 54 */	beq lbl_8055CD5C
/* 8055CD0C  48 00 00 20 */	b lbl_8055CD2C
lbl_8055CD10:
/* 8055CD10  2C 00 00 05 */	cmpwi r0, 5
/* 8055CD14  40 80 00 18 */	bge lbl_8055CD2C
/* 8055CD18  48 00 00 10 */	b lbl_8055CD28
/* 8055CD1C  48 00 00 40 */	b lbl_8055CD5C
lbl_8055CD20:
/* 8055CD20  3B C0 00 07 */	li r30, 7
/* 8055CD24  48 00 00 08 */	b lbl_8055CD2C
lbl_8055CD28:
/* 8055CD28  3B C0 00 08 */	li r30, 8
lbl_8055CD2C:
/* 8055CD2C  2C 1E 00 00 */	cmpwi r30, 0
/* 8055CD30  41 80 00 2C */	blt lbl_8055CD5C
/* 8055CD34  7C 1E 00 00 */	cmpw r30, r0
/* 8055CD38  41 82 00 24 */	beq lbl_8055CD5C
/* 8055CD3C  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 8055CD40  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8055CD44  4B BE 8B 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055CD48  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 8055CD4C  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 8055CD50  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 8055CD54  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 8055CD58  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8055CD5C:
/* 8055CD5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8055CD60  4B E0 54 C9 */	bl _restgpr_29
/* 8055CD64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055CD68  7C 08 03 A6 */	mtlr r0
/* 8055CD6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8055CD70  4E 80 00 20 */	blr 
