lbl_80862B3C:
/* 80862B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80862B40  7C 08 02 A6 */	mflr r0
/* 80862B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80862B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80862B4C  7C 7F 1B 78 */	mr r31, r3
/* 80862B50  3C 80 80 86 */	lis r4, __ct__4cXyzFv@ha /* 0x80862C40@ha */
/* 80862B54  38 84 2C 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80862C40@l */
/* 80862B58  3C A0 80 86 */	lis r5, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 80862B5C  38 A5 1F 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862B60  38 C0 00 0C */	li r6, 0xc
/* 80862B64  38 E0 00 0D */	li r7, 0xd
/* 80862B68  4B AF F1 F9 */	bl __construct_array
/* 80862B6C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80862B70  3C 80 80 86 */	lis r4, __ct__4cXyzFv@ha /* 0x80862C40@ha */
/* 80862B74  38 84 2C 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80862C40@l */
/* 80862B78  3C A0 80 86 */	lis r5, __dt__4cXyzFv@ha /* 0x80861F60@ha */
/* 80862B7C  38 A5 1F 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80861F60@l */
/* 80862B80  38 C0 00 0C */	li r6, 0xc
/* 80862B84  38 E0 00 0D */	li r7, 0xd
/* 80862B88  4B AF F1 D9 */	bl __construct_array
/* 80862B8C  7F E3 FB 78 */	mr r3, r31
/* 80862B90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80862B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80862B98  7C 08 03 A6 */	mtlr r0
/* 80862B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80862BA0  4E 80 00 20 */	blr 
