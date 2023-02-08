lbl_8031DB78:
/* 8031DB78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031DB7C  7C 08 02 A6 */	mflr r0
/* 8031DB80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031DB84  39 61 00 30 */	addi r11, r1, 0x30
/* 8031DB88  48 04 46 55 */	bl _savegpr_29
/* 8031DB8C  7C 7D 1B 78 */	mr r29, r3
/* 8031DB90  3B C0 00 00 */	li r30, 0
/* 8031DB94  3B E0 00 00 */	li r31, 0
lbl_8031DB98:
/* 8031DB98  38 1F 00 DA */	addi r0, r31, 0xda
/* 8031DB9C  7C 9D 02 14 */	add r4, r29, r0
/* 8031DBA0  80 64 00 00 */	lwz r3, 0(r4)
/* 8031DBA4  80 04 00 04 */	lwz r0, 4(r4)
/* 8031DBA8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031DBAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031DBB0  38 7E 00 01 */	addi r3, r30, 1
/* 8031DBB4  38 81 00 0C */	addi r4, r1, 0xc
/* 8031DBB8  4B FF 18 45 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031DBBC  3B DE 00 01 */	addi r30, r30, 1
/* 8031DBC0  28 1E 00 03 */	cmplwi r30, 3
/* 8031DBC4  3B FF 00 08 */	addi r31, r31, 8
/* 8031DBC8  41 80 FF D0 */	blt lbl_8031DB98
/* 8031DBCC  3B C0 00 00 */	li r30, 0
/* 8031DBD0  3B E0 00 00 */	li r31, 0
lbl_8031DBD4:
/* 8031DBD4  38 1F 00 FA */	addi r0, r31, 0xfa
/* 8031DBD8  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8031DBDC  90 01 00 08 */	stw r0, 8(r1)
/* 8031DBE0  7F C3 F3 78 */	mr r3, r30
/* 8031DBE4  38 81 00 08 */	addi r4, r1, 8
/* 8031DBE8  4B FF 16 AD */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031DBEC  3B DE 00 01 */	addi r30, r30, 1
/* 8031DBF0  28 1E 00 04 */	cmplwi r30, 4
/* 8031DBF4  3B FF 00 04 */	addi r31, r31, 4
/* 8031DBF8  41 80 FF DC */	blt lbl_8031DBD4
/* 8031DBFC  39 61 00 30 */	addi r11, r1, 0x30
/* 8031DC00  48 04 46 29 */	bl _restgpr_29
/* 8031DC04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031DC08  7C 08 03 A6 */	mtlr r0
/* 8031DC0C  38 21 00 30 */	addi r1, r1, 0x30
/* 8031DC10  4E 80 00 20 */	blr 
