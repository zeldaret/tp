lbl_8009EF7C:
/* 8009EF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009EF80  7C 08 02 A6 */	mflr r0
/* 8009EF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009EF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009EF8C  93 C1 00 08 */	stw r30, 8(r1)
/* 8009EF90  7C 7E 1B 78 */	mr r30, r3
/* 8009EF94  7C 9F 23 78 */	mr r31, r4
/* 8009EF98  4B FF ED F9 */	bl jointControll__9daAlink_cFi
/* 8009EF9C  2C 1F 00 24 */	cmpwi r31, 0x24
/* 8009EFA0  40 82 00 10 */	bne lbl_8009EFB0
/* 8009EFA4  7F C3 F3 78 */	mr r3, r30
/* 8009EFA8  48 08 BD 75 */	bl setWolfFootMatrix__9daAlink_cFv
/* 8009EFAC  48 00 00 28 */	b lbl_8009EFD4
lbl_8009EFB0:
/* 8009EFB0  2C 1F 00 07 */	cmpwi r31, 7
/* 8009EFB4  41 82 00 14 */	beq lbl_8009EFC8
/* 8009EFB8  2C 1F 00 02 */	cmpwi r31, 2
/* 8009EFBC  41 82 00 0C */	beq lbl_8009EFC8
/* 8009EFC0  2C 1F 00 03 */	cmpwi r31, 3
/* 8009EFC4  40 82 00 10 */	bne lbl_8009EFD4
lbl_8009EFC8:
/* 8009EFC8  7F C3 F3 78 */	mr r3, r30
/* 8009EFCC  7F E4 FB 78 */	mr r4, r31
/* 8009EFD0  48 08 BC FD */	bl changeWolfBlendRate__9daAlink_cFi
lbl_8009EFD4:
/* 8009EFD4  38 60 00 01 */	li r3, 1
/* 8009EFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009EFDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009EFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009EFE4  7C 08 03 A6 */	mtlr r0
/* 8009EFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009EFEC  4E 80 00 20 */	blr 
