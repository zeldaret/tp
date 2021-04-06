lbl_80037DE4:
/* 80037DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037DE8  7C 08 02 A6 */	mflr r0
/* 80037DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80037DF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80037DF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80037DFC  7C 9F 23 78 */	mr r31, r4
/* 80037E00  41 82 00 28 */	beq lbl_80037E28
/* 80037E04  3C 80 80 3A */	lis r4, data_803A7BF4@ha /* 0x803A7BF4@ha */
/* 80037E08  38 04 7B F4 */	addi r0, r4, data_803A7BF4@l /* 0x803A7BF4@l */
/* 80037E0C  90 1E 00 00 */	stw r0, 0(r30)
/* 80037E10  38 80 00 00 */	li r4, 0
/* 80037E14  48 24 F7 CD */	bl __dt__Q27JStudio16TAdaptor_messageFv
/* 80037E18  7F E0 07 35 */	extsh. r0, r31
/* 80037E1C  40 81 00 0C */	ble lbl_80037E28
/* 80037E20  7F C3 F3 78 */	mr r3, r30
/* 80037E24  48 29 6F 19 */	bl __dl__FPv
lbl_80037E28:
/* 80037E28  7F C3 F3 78 */	mr r3, r30
/* 80037E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80037E30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80037E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037E38  7C 08 03 A6 */	mtlr r0
/* 80037E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80037E40  4E 80 00 20 */	blr 
