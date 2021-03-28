lbl_8001EFB0:
/* 8001EFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EFB4  7C 08 02 A6 */	mflr r0
/* 8001EFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EFBC  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8001EFC0  28 00 00 00 */	cmplwi r0, 0
/* 8001EFC4  41 82 00 18 */	beq lbl_8001EFDC
/* 8001EFC8  4B FF F6 D1 */	bl fopOvlpM_Cancel__Fv
/* 8001EFCC  2C 03 00 00 */	cmpwi r3, 0
/* 8001EFD0  40 82 00 0C */	bne lbl_8001EFDC
/* 8001EFD4  38 60 00 00 */	li r3, 0
/* 8001EFD8  48 00 00 08 */	b lbl_8001EFE0
lbl_8001EFDC:
/* 8001EFDC  38 60 00 01 */	li r3, 1
lbl_8001EFE0:
/* 8001EFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EFE4  7C 08 03 A6 */	mtlr r0
/* 8001EFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EFEC  4E 80 00 20 */	blr 
