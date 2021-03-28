lbl_8031DB14:
/* 8031DB14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031DB18  7C 08 02 A6 */	mflr r0
/* 8031DB1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031DB20  39 61 00 20 */	addi r11, r1, 0x20
/* 8031DB24  48 04 46 B9 */	bl _savegpr_29
/* 8031DB28  7C 7D 1B 78 */	mr r29, r3
/* 8031DB2C  3B C0 00 00 */	li r30, 0
/* 8031DB30  3B E0 00 00 */	li r31, 0
lbl_8031DB34:
/* 8031DB34  38 9F 00 08 */	addi r4, r31, 8
/* 8031DB38  7C 9D 22 14 */	add r4, r29, r4
/* 8031DB3C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031DB40  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031DB44  41 82 00 0C */	beq lbl_8031DB50
/* 8031DB48  7F C3 F3 78 */	mr r3, r30
/* 8031DB4C  48 00 64 49 */	bl loadTexNo__FUlRCUs
lbl_8031DB50:
/* 8031DB50  3B DE 00 01 */	addi r30, r30, 1
/* 8031DB54  28 1E 00 08 */	cmplwi r30, 8
/* 8031DB58  3B FF 00 02 */	addi r31, r31, 2
/* 8031DB5C  41 80 FF D8 */	blt lbl_8031DB34
/* 8031DB60  39 61 00 20 */	addi r11, r1, 0x20
/* 8031DB64  48 04 46 C5 */	bl _restgpr_29
/* 8031DB68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031DB6C  7C 08 03 A6 */	mtlr r0
/* 8031DB70  38 21 00 20 */	addi r1, r1, 0x20
/* 8031DB74  4E 80 00 20 */	blr 
