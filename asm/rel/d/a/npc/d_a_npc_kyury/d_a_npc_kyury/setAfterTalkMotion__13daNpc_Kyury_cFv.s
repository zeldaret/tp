lbl_80A60FB0:
/* 80A60FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A60FB4  7C 08 02 A6 */	mflr r0
/* 80A60FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A60FBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60FC0  4B 90 12 1D */	bl _savegpr_29
/* 80A60FC4  7C 7D 1B 78 */	mr r29, r3
/* 80A60FC8  3B C0 00 0C */	li r30, 0xc
/* 80A60FCC  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80A60FD0  2C 00 00 05 */	cmpwi r0, 5
/* 80A60FD4  41 82 00 30 */	beq lbl_80A61004
/* 80A60FD8  40 80 00 10 */	bge lbl_80A60FE8
/* 80A60FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80A60FE0  41 82 00 1C */	beq lbl_80A60FFC
/* 80A60FE4  48 00 00 34 */	b lbl_80A61018
lbl_80A60FE8:
/* 80A60FE8  2C 00 00 09 */	cmpwi r0, 9
/* 80A60FEC  40 80 00 2C */	bge lbl_80A61018
/* 80A60FF0  2C 00 00 07 */	cmpwi r0, 7
/* 80A60FF4  40 80 00 20 */	bge lbl_80A61014
/* 80A60FF8  48 00 00 14 */	b lbl_80A6100C
lbl_80A60FFC:
/* 80A60FFC  3B C0 00 09 */	li r30, 9
/* 80A61000  48 00 00 18 */	b lbl_80A61018
lbl_80A61004:
/* 80A61004  3B C0 00 0D */	li r30, 0xd
/* 80A61008  48 00 00 10 */	b lbl_80A61018
lbl_80A6100C:
/* 80A6100C  3B C0 00 0C */	li r30, 0xc
/* 80A61010  48 00 00 08 */	b lbl_80A61018
lbl_80A61014:
/* 80A61014  3B C0 00 0E */	li r30, 0xe
lbl_80A61018:
/* 80A61018  2C 1E 00 00 */	cmpwi r30, 0
/* 80A6101C  41 80 00 2C */	blt lbl_80A61048
/* 80A61020  7C 1E 00 00 */	cmpw r30, r0
/* 80A61024  41 82 00 24 */	beq lbl_80A61048
/* 80A61028  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A6102C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A61030  4B 6E 48 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A61034  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A61038  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A6103C  3C 60 80 A6 */	lis r3, lit_4581@ha /* 0x80A63968@ha */
/* 80A61040  C0 03 39 68 */	lfs f0, lit_4581@l(r3)  /* 0x80A63968@l */
/* 80A61044  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A61048:
/* 80A61048  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6104C  4B 90 11 DD */	bl _restgpr_29
/* 80A61050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A61054  7C 08 03 A6 */	mtlr r0
/* 80A61058  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6105C  4E 80 00 20 */	blr 
