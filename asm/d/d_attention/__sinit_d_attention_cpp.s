lbl_8007400C:
/* 8007400C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074010  7C 08 02 A6 */	mflr r0
/* 80074014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80074018  3C 60 80 42 */	lis r3, g_AttDwHIO@ha /* 0x80424B0C@ha */
/* 8007401C  38 63 4B 0C */	addi r3, r3, g_AttDwHIO@l /* 0x80424B0C@l */
/* 80074020  4B FF C1 39 */	bl __ct__15dAttDrawParam_cFv
/* 80074024  3C 80 80 07 */	lis r4, __dt__15dAttDrawParam_cFv@ha /* 0x80073FC4@ha */
/* 80074028  38 84 3F C4 */	addi r4, r4, __dt__15dAttDrawParam_cFv@l /* 0x80073FC4@l */
/* 8007402C  3C A0 80 42 */	lis r5, lit_4093@ha /* 0x80424B00@ha */
/* 80074030  38 A5 4B 00 */	addi r5, r5, lit_4093@l /* 0x80424B00@l */
/* 80074034  48 2E DB F1 */	bl __register_global_object
/* 80074038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007403C  7C 08 03 A6 */	mtlr r0
/* 80074040  38 21 00 10 */	addi r1, r1, 0x10
/* 80074044  4E 80 00 20 */	blr 
