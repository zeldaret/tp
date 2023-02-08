lbl_80A9A4D4:
/* 80A9A4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A4D8  7C 08 02 A6 */	mflr r0
/* 80A9A4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9A4E4  3B E0 00 00 */	li r31, 0
/* 80A9A4E8  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9A4EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9A4F0  41 82 00 2C */	beq lbl_80A9A51C
/* 80A9A4F4  40 80 00 2C */	bge lbl_80A9A520
/* 80A9A4F8  2C 00 00 05 */	cmpwi r0, 5
/* 80A9A4FC  41 82 00 08 */	beq lbl_80A9A504
/* 80A9A500  48 00 00 20 */	b lbl_80A9A520
lbl_80A9A504:
/* 80A9A504  38 80 0D 00 */	li r4, 0xd00
/* 80A9A508  4B FF F3 F5 */	bl _turn_to_link__18daNpc_Pachi_Maro_cFs
/* 80A9A50C  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A510  41 82 00 10 */	beq lbl_80A9A520
/* 80A9A514  3B E0 00 01 */	li r31, 1
/* 80A9A518  48 00 00 08 */	b lbl_80A9A520
lbl_80A9A51C:
/* 80A9A51C  3B E0 00 01 */	li r31, 1
lbl_80A9A520:
/* 80A9A520  7F E3 FB 78 */	mr r3, r31
/* 80A9A524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9A528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A52C  7C 08 03 A6 */	mtlr r0
/* 80A9A530  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A534  4E 80 00 20 */	blr 
