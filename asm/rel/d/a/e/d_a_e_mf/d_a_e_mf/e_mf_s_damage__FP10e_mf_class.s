lbl_8070EC60:
/* 8070EC60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070EC64  7C 08 02 A6 */	mflr r0
/* 8070EC68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070EC6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070EC70  93 C1 00 08 */	stw r30, 8(r1)
/* 8070EC74  7C 7E 1B 78 */	mr r30, r3
/* 8070EC78  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070EC7C  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070EC80  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070EC84  2C 00 00 01 */	cmpwi r0, 1
/* 8070EC88  41 82 00 3C */	beq lbl_8070ECC4
/* 8070EC8C  40 80 00 5C */	bge lbl_8070ECE8
/* 8070EC90  2C 00 00 00 */	cmpwi r0, 0
/* 8070EC94  40 80 00 08 */	bge lbl_8070EC9C
/* 8070EC98  48 00 00 50 */	b lbl_8070ECE8
lbl_8070EC9C:
/* 8070EC9C  38 00 00 01 */	li r0, 1
/* 8070ECA0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070ECA4  38 00 00 14 */	li r0, 0x14
/* 8070ECA8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070ECAC  38 80 00 1F */	li r4, 0x1f
/* 8070ECB0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070ECB4  38 A0 00 02 */	li r5, 2
/* 8070ECB8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070ECBC  4B FF BB 71 */	bl anm_init__FP10e_mf_classifUcf
/* 8070ECC0  48 00 00 28 */	b lbl_8070ECE8
lbl_8070ECC4:
/* 8070ECC4  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070ECC8  2C 00 00 00 */	cmpwi r0, 0
/* 8070ECCC  40 82 00 1C */	bne lbl_8070ECE8
/* 8070ECD0  38 00 00 03 */	li r0, 3
/* 8070ECD4  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070ECD8  38 00 00 00 */	li r0, 0
/* 8070ECDC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070ECE0  38 00 00 28 */	li r0, 0x28
/* 8070ECE4  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_8070ECE8:
/* 8070ECE8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070ECEC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8070ECF0  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8070ECF4  4B B6 0D 8D */	bl cLib_addCalc0__FPfff
/* 8070ECF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8070ECFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8070ED00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070ED04  7C 08 03 A6 */	mtlr r0
/* 8070ED08  38 21 00 10 */	addi r1, r1, 0x10
/* 8070ED0C  4E 80 00 20 */	blr 
