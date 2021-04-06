lbl_80B9BDD8:
/* 80B9BDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9BDDC  7C 08 02 A6 */	mflr r0
/* 80B9BDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9BDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9BDE8  7C 7F 1B 78 */	mr r31, r3
/* 80B9BDEC  38 7F 09 48 */	addi r3, r31, 0x948
/* 80B9BDF0  4B 7C 62 29 */	bl __ptmf_test
/* 80B9BDF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B9BDF8  41 82 00 18 */	beq lbl_80B9BE10
/* 80B9BDFC  7F E3 FB 78 */	mr r3, r31
/* 80B9BE00  38 80 00 00 */	li r4, 0
/* 80B9BE04  39 9F 09 48 */	addi r12, r31, 0x948
/* 80B9BE08  4B 7C 62 7D */	bl __ptmf_scall
/* 80B9BE0C  60 00 00 00 */	nop 
lbl_80B9BE10:
/* 80B9BE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9BE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9BE18  7C 08 03 A6 */	mtlr r0
/* 80B9BE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9BE20  4E 80 00 20 */	blr 
