lbl_80265EFC:
/* 80265EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80265F00  7C 08 02 A6 */	mflr r0
/* 80265F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80265F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80265F0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80265F10  7C 7E 1B 78 */	mr r30, r3
/* 80265F14  7C 9F 23 78 */	mr r31, r4
/* 80265F18  80 63 00 04 */	lwz r3, 4(r3)
/* 80265F1C  28 03 00 00 */	cmplwi r3, 0
/* 80265F20  40 82 00 0C */	bne lbl_80265F2C
/* 80265F24  93 FE 00 00 */	stw r31, 0(r30)
/* 80265F28  48 00 00 08 */	b lbl_80265F30
lbl_80265F2C:
/* 80265F2C  48 00 02 E5 */	bl cNd_Addition__FP10node_classP10node_class
lbl_80265F30:
/* 80265F30  7F E3 FB 78 */	mr r3, r31
/* 80265F34  48 00 02 09 */	bl cNd_Last__FP10node_class
/* 80265F38  90 7E 00 04 */	stw r3, 4(r30)
/* 80265F3C  7F E3 FB 78 */	mr r3, r31
/* 80265F40  7F C4 F3 78 */	mr r4, r30
/* 80265F44  48 00 03 6D */	bl cNd_SetObject__FP10node_classPv
/* 80265F48  80 7E 00 00 */	lwz r3, 0(r30)
/* 80265F4C  48 00 01 91 */	bl cNd_LengthOf__FP10node_class
/* 80265F50  90 7E 00 08 */	stw r3, 8(r30)
/* 80265F54  80 7E 00 08 */	lwz r3, 8(r30)
/* 80265F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80265F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80265F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80265F64  7C 08 03 A6 */	mtlr r0
/* 80265F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80265F6C  4E 80 00 20 */	blr 
