lbl_80A9A3FC:
/* 80A9A3FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A400  7C 08 02 A6 */	mflr r0
/* 80A9A404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A408  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9A40C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9A410  41 82 00 08 */	beq lbl_80A9A418
/* 80A9A414  48 00 00 10 */	b lbl_80A9A424
lbl_80A9A418:
/* 80A9A418  38 83 0F 88 */	addi r4, r3, 0xf88
/* 80A9A41C  38 A0 10 00 */	li r5, 0x1000
/* 80A9A420  4B FF F5 29 */	bl _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyzs
lbl_80A9A424:
/* 80A9A424  38 60 00 00 */	li r3, 0
/* 80A9A428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A42C  7C 08 03 A6 */	mtlr r0
/* 80A9A430  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A434  4E 80 00 20 */	blr 
