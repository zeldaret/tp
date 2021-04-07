lbl_8050EBF8:
/* 8050EBF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050EBFC  7C 08 02 A6 */	mflr r0
/* 8050EC00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050EC04  39 61 00 20 */	addi r11, r1, 0x20
/* 8050EC08  4B E5 35 D5 */	bl _savegpr_29
/* 8050EC0C  7C 7D 1B 78 */	mr r29, r3
/* 8050EC10  7C 9E 23 78 */	mr r30, r4
/* 8050EC14  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 8050EC18  3B E3 85 84 */	addi r31, r3, lit_4208@l /* 0x80518584@l */
/* 8050EC1C  A8 1D 09 72 */	lha r0, 0x972(r29)
/* 8050EC20  2C 00 00 14 */	cmpwi r0, 0x14
/* 8050EC24  41 82 00 08 */	beq lbl_8050EC2C
/* 8050EC28  B0 1D 09 74 */	sth r0, 0x974(r29)
lbl_8050EC2C:
/* 8050EC2C  38 00 00 14 */	li r0, 0x14
/* 8050EC30  B0 1D 09 72 */	sth r0, 0x972(r29)
/* 8050EC34  38 00 00 00 */	li r0, 0
/* 8050EC38  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8050EC3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070013@ha */
/* 8050EC40  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00070013@l */
/* 8050EC44  90 01 00 08 */	stw r0, 8(r1)
/* 8050EC48  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 8050EC4C  38 81 00 08 */	addi r4, r1, 8
/* 8050EC50  38 A0 FF FF */	li r5, -1
/* 8050EC54  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 8050EC58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050EC5C  7D 89 03 A6 */	mtctr r12
/* 8050EC60  4E 80 04 21 */	bctrl 
/* 8050EC64  2C 1E 00 00 */	cmpwi r30, 0
/* 8050EC68  40 82 00 80 */	bne lbl_8050ECE8
/* 8050EC6C  A8 7D 09 7C */	lha r3, 0x97c(r29)
/* 8050EC70  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8050EC74  7C 03 00 50 */	subf r0, r3, r0
/* 8050EC78  7C 00 07 34 */	extsh r0, r0
/* 8050EC7C  2C 00 C0 00 */	cmpwi r0, -16384
/* 8050EC80  41 80 00 0C */	blt lbl_8050EC8C
/* 8050EC84  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8050EC88  40 81 00 20 */	ble lbl_8050ECA8
lbl_8050EC8C:
/* 8050EC8C  7F A3 EB 78 */	mr r3, r29
/* 8050EC90  38 80 00 0E */	li r4, 0xe
/* 8050EC94  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050EC98  38 A0 00 00 */	li r5, 0
/* 8050EC9C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050ECA0  4B FF 5F 35 */	bl anm_init__FP10e_rd_classifUcf
/* 8050ECA4  48 00 00 5C */	b lbl_8050ED00
lbl_8050ECA8:
/* 8050ECA8  7C 00 07 35 */	extsh. r0, r0
/* 8050ECAC  40 80 00 20 */	bge lbl_8050ECCC
/* 8050ECB0  7F A3 EB 78 */	mr r3, r29
/* 8050ECB4  38 80 00 0B */	li r4, 0xb
/* 8050ECB8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050ECBC  38 A0 00 00 */	li r5, 0
/* 8050ECC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050ECC4  4B FF 5F 11 */	bl anm_init__FP10e_rd_classifUcf
/* 8050ECC8  48 00 00 38 */	b lbl_8050ED00
lbl_8050ECCC:
/* 8050ECCC  7F A3 EB 78 */	mr r3, r29
/* 8050ECD0  38 80 00 0C */	li r4, 0xc
/* 8050ECD4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050ECD8  38 A0 00 00 */	li r5, 0
/* 8050ECDC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050ECE0  4B FF 5E F5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050ECE4  48 00 00 1C */	b lbl_8050ED00
lbl_8050ECE8:
/* 8050ECE8  7F A3 EB 78 */	mr r3, r29
/* 8050ECEC  38 80 00 0E */	li r4, 0xe
/* 8050ECF0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050ECF4  38 A0 00 00 */	li r5, 0
/* 8050ECF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050ECFC  4B FF 5E D9 */	bl anm_init__FP10e_rd_classifUcf
lbl_8050ED00:
/* 8050ED00  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8050ED04  D0 1D 09 F0 */	stfs f0, 0x9f0(r29)
/* 8050ED08  A8 1D 12 46 */	lha r0, 0x1246(r29)
/* 8050ED0C  B0 1D 09 F4 */	sth r0, 0x9f4(r29)
/* 8050ED10  39 61 00 20 */	addi r11, r1, 0x20
/* 8050ED14  4B E5 35 15 */	bl _restgpr_29
/* 8050ED18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050ED1C  7C 08 03 A6 */	mtlr r0
/* 8050ED20  38 21 00 20 */	addi r1, r1, 0x20
/* 8050ED24  4E 80 00 20 */	blr 
