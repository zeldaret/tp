lbl_80A99DE8:
/* 80A99DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99DEC  7C 08 02 A6 */	mflr r0
/* 80A99DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A99DF8  3B E0 00 00 */	li r31, 0
/* 80A99DFC  80 04 00 00 */	lwz r0, 0(r4)
/* 80A99E00  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A99E04  41 82 00 28 */	beq lbl_80A99E2C
/* 80A99E08  40 80 00 24 */	bge lbl_80A99E2C
/* 80A99E0C  2C 00 00 05 */	cmpwi r0, 5
/* 80A99E10  41 82 00 08 */	beq lbl_80A99E18
/* 80A99E14  48 00 00 18 */	b lbl_80A99E2C
lbl_80A99E18:
/* 80A99E18  38 80 0A 00 */	li r4, 0xa00
/* 80A99E1C  4B FF FA E1 */	bl _turn_to_link__18daNpc_Pachi_Maro_cFs
/* 80A99E20  2C 03 00 00 */	cmpwi r3, 0
/* 80A99E24  41 82 00 08 */	beq lbl_80A99E2C
/* 80A99E28  3B E0 00 01 */	li r31, 1
lbl_80A99E2C:
/* 80A99E2C  7F E3 FB 78 */	mr r3, r31
/* 80A99E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A99E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99E38  7C 08 03 A6 */	mtlr r0
/* 80A99E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A99E40  4E 80 00 20 */	blr 
