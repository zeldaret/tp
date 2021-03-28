lbl_80D5EF9C:
/* 80D5EF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EFA0  7C 08 02 A6 */	mflr r0
/* 80D5EFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5EFAC  7C 7F 1B 78 */	mr r31, r3
/* 80D5EFB0  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80D5EFB4  2C 04 00 00 */	cmpwi r4, 0
/* 80D5EFB8  41 82 00 2C */	beq lbl_80D5EFE4
/* 80D5EFBC  38 04 FF FF */	addi r0, r4, -1
/* 80D5EFC0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80D5EFC4  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D5EFC8  2C 00 00 00 */	cmpwi r0, 0
/* 80D5EFCC  40 82 00 2C */	bne lbl_80D5EFF8
/* 80D5EFD0  38 60 00 01 */	li r3, 1
/* 80D5EFD4  38 80 00 05 */	li r4, 5
/* 80D5EFD8  38 A0 00 C9 */	li r5, 0xc9
/* 80D5EFDC  4B 40 04 5C */	b forceRestartRoom__9daPy_py_cFiUli
/* 80D5EFE0  48 00 00 18 */	b lbl_80D5EFF8
lbl_80D5EFE4:
/* 80D5EFE4  48 00 00 6D */	bl chkPlyrInTag__12daTagRetRm_cFv
/* 80D5EFE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5EFEC  41 82 00 0C */	beq lbl_80D5EFF8
/* 80D5EFF0  38 00 00 1E */	li r0, 0x1e
/* 80D5EFF4  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80D5EFF8:
/* 80D5EFF8  38 60 00 01 */	li r3, 1
/* 80D5EFFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F004  7C 08 03 A6 */	mtlr r0
/* 80D5F008  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F00C  4E 80 00 20 */	blr 
