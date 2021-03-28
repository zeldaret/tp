lbl_80358E88:
/* 80358E88  7C 08 02 A6 */	mflr r0
/* 80358E8C  90 01 00 04 */	stw r0, 4(r1)
/* 80358E90  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80358E94  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80358E98  3B E5 00 00 */	addi r31, r5, 0
/* 80358E9C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80358EA0  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80358EA4  7C 9D 23 79 */	or. r29, r4, r4
/* 80358EA8  41 80 00 0C */	blt lbl_80358EB4
/* 80358EAC  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 80358EB0  41 80 00 0C */	blt lbl_80358EBC
lbl_80358EB4:
/* 80358EB4  38 60 FF 80 */	li r3, -128
/* 80358EB8  48 00 00 C8 */	b lbl_80358F80
lbl_80358EBC:
/* 80358EBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80358EC0  4B FF AC F5 */	bl __CARDGetControlBlock
/* 80358EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80358EC8  40 80 00 08 */	bge lbl_80358ED0
/* 80358ECC  48 00 00 B4 */	b lbl_80358F80
lbl_80358ED0:
/* 80358ED0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358ED4  4B FF C8 A9 */	bl __CARDGetDirBlock
/* 80358ED8  57 A0 30 32 */	slwi r0, r29, 6
/* 80358EDC  7F A3 02 14 */	add r29, r3, r0
/* 80358EE0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358EE4  7F A4 EB 78 */	mr r4, r29
/* 80358EE8  4B FF EF BD */	bl __CARDIsReadable
/* 80358EEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80358EF0  41 80 00 84 */	blt lbl_80358F74
/* 80358EF4  38 9D 00 00 */	addi r4, r29, 0
/* 80358EF8  38 7F 00 28 */	addi r3, r31, 0x28
/* 80358EFC  38 A0 00 04 */	li r5, 4
/* 80358F00  4B CA A6 41 */	bl memcpy
/* 80358F04  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80358F08  38 9D 00 04 */	addi r4, r29, 4
/* 80358F0C  38 A0 00 02 */	li r5, 2
/* 80358F10  4B CA A6 31 */	bl memcpy
/* 80358F14  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80358F18  7F E3 FB 78 */	mr r3, r31
/* 80358F1C  A0 DD 00 38 */	lhz r6, 0x38(r29)
/* 80358F20  38 9D 00 08 */	addi r4, r29, 8
/* 80358F24  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80358F28  38 A0 00 20 */	li r5, 0x20
/* 80358F2C  7C 06 01 D6 */	mullw r0, r6, r0
/* 80358F30  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80358F34  4B CA A6 0D */	bl memcpy
/* 80358F38  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 80358F3C  38 7D 00 00 */	addi r3, r29, 0
/* 80358F40  38 9F 00 00 */	addi r4, r31, 0
/* 80358F44  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80358F48  88 1D 00 07 */	lbz r0, 7(r29)
/* 80358F4C  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 80358F50  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80358F54  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80358F58  A0 1D 00 30 */	lhz r0, 0x30(r29)
/* 80358F5C  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 80358F60  A0 1D 00 32 */	lhz r0, 0x32(r29)
/* 80358F64  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80358F68  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 80358F6C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80358F70  4B FF FD 21 */	bl UpdateIconOffsets
lbl_80358F74:
/* 80358F74  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80358F78  7F C4 F3 78 */	mr r4, r30
/* 80358F7C  4B FF AC F1 */	bl __CARDPutControlBlock
lbl_80358F80:
/* 80358F80  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80358F84  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80358F88  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80358F8C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80358F90  38 21 00 28 */	addi r1, r1, 0x28
/* 80358F94  7C 08 03 A6 */	mtlr r0
/* 80358F98  4E 80 00 20 */	blr 
