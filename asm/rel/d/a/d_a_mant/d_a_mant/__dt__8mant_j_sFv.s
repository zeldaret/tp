lbl_80862AC0:
/* 80862AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80862AC4  7C 08 02 A6 */	mflr r0
/* 80862AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80862ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80862AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80862AD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80862AD8  7C 9F 23 78 */	mr r31, r4
/* 80862ADC  41 82 00 44 */	beq lbl_80862B20
/* 80862AE0  38 7E 00 9C */	addi r3, r30, 0x9c
/* 80862AE4  3C 80 80 86 */	lis r4, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 80862AE8  38 84 1F 60 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862AEC  38 A0 00 0C */	li r5, 0xc
/* 80862AF0  38 C0 00 0D */	li r6, 0xd
/* 80862AF4  4B AF F1 F5 */	bl __destroy_arr
/* 80862AF8  7F C3 F3 78 */	mr r3, r30
/* 80862AFC  3C 80 80 86 */	lis r4, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 80862B00  38 84 1F 60 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862B04  38 A0 00 0C */	li r5, 0xc
/* 80862B08  38 C0 00 0D */	li r6, 0xd
/* 80862B0C  4B AF F1 DD */	bl __destroy_arr
/* 80862B10  7F E0 07 35 */	extsh. r0, r31
/* 80862B14  40 81 00 0C */	ble lbl_80862B20
/* 80862B18  7F C3 F3 78 */	mr r3, r30
/* 80862B1C  4B A6 C2 21 */	bl __dl__FPv
lbl_80862B20:
/* 80862B20  7F C3 F3 78 */	mr r3, r30
/* 80862B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80862B28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80862B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80862B30  7C 08 03 A6 */	mtlr r0
/* 80862B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80862B38  4E 80 00 20 */	blr 
