lbl_80D5C01C:
/* 80D5C01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5C020  7C 08 02 A6 */	mflr r0
/* 80D5C024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5C028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5C02C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5C030  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D5C034  7C 9F 23 78 */	mr r31, r4
/* 80D5C038  41 82 00 2C */	beq lbl_80D5C064
/* 80D5C03C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80D5C040  38 80 FF FF */	li r4, -1
/* 80D5C044  4B 4E DF 04 */	b __dt__10dMsgFlow_cFv
/* 80D5C048  7F C3 F3 78 */	mr r3, r30
/* 80D5C04C  38 80 00 00 */	li r4, 0
/* 80D5C050  4B 2B CC 3C */	b __dt__10fopAc_ac_cFv
/* 80D5C054  7F E0 07 35 */	extsh. r0, r31
/* 80D5C058  40 81 00 0C */	ble lbl_80D5C064
/* 80D5C05C  7F C3 F3 78 */	mr r3, r30
/* 80D5C060  4B 57 2C DC */	b __dl__FPv
lbl_80D5C064:
/* 80D5C064  7F C3 F3 78 */	mr r3, r30
/* 80D5C068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5C06C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5C070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5C074  7C 08 03 A6 */	mtlr r0
/* 80D5C078  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5C07C  4E 80 00 20 */	blr 
