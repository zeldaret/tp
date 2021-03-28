lbl_80A9557C:
/* 80A9557C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95580  7C 08 02 A6 */	mflr r0
/* 80A95584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A95588  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9558C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A95590  41 82 00 08 */	beq lbl_80A95598
/* 80A95594  48 00 00 10 */	b lbl_80A955A4
lbl_80A95598:
/* 80A95598  38 83 0F 84 */	addi r4, r3, 0xf84
/* 80A9559C  38 A0 10 00 */	li r5, 0x1000
/* 80A955A0  4B FF F5 29 */	bl _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyzs
lbl_80A955A4:
/* 80A955A4  38 60 00 00 */	li r3, 0
/* 80A955A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A955AC  7C 08 03 A6 */	mtlr r0
/* 80A955B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A955B4  4E 80 00 20 */	blr 
