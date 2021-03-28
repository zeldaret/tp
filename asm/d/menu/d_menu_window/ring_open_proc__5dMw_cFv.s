lbl_801FAFDC:
/* 801FAFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FAFE0  7C 08 02 A6 */	mflr r0
/* 801FAFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FAFE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FAFEC  7C 7F 1B 78 */	mr r31, r3
/* 801FAFF0  80 63 01 10 */	lwz r3, 0x110(r3)
/* 801FAFF4  4B FF 00 B1 */	bl isOpen__12dMenu_Ring_cFv
/* 801FAFF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FAFFC  41 82 00 0C */	beq lbl_801FB008
/* 801FB000  38 00 00 02 */	li r0, 2
/* 801FB004  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB008:
/* 801FB008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB010  7C 08 03 A6 */	mtlr r0
/* 801FB014  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB018  4E 80 00 20 */	blr 
