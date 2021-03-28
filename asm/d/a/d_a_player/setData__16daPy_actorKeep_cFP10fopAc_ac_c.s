lbl_8015ECB8:
/* 8015ECB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015ECBC  7C 08 02 A6 */	mflr r0
/* 8015ECC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015ECC4  28 04 00 00 */	cmplwi r4, 0
/* 8015ECC8  41 82 00 20 */	beq lbl_8015ECE8
/* 8015ECCC  90 83 00 04 */	stw r4, 4(r3)
/* 8015ECD0  41 82 00 0C */	beq lbl_8015ECDC
/* 8015ECD4  80 04 00 04 */	lwz r0, 4(r4)
/* 8015ECD8  48 00 00 08 */	b lbl_8015ECE0
lbl_8015ECDC:
/* 8015ECDC  38 00 FF FF */	li r0, -1
lbl_8015ECE0:
/* 8015ECE0  90 03 00 00 */	stw r0, 0(r3)
/* 8015ECE4  48 00 00 08 */	b lbl_8015ECEC
lbl_8015ECE8:
/* 8015ECE8  48 00 00 15 */	bl clearData__16daPy_actorKeep_cFv
lbl_8015ECEC:
/* 8015ECEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015ECF0  7C 08 03 A6 */	mtlr r0
/* 8015ECF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015ECF8  4E 80 00 20 */	blr 
