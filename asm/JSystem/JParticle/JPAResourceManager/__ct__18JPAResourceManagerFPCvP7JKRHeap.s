lbl_80273E10:
/* 80273E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80273E14  7C 08 02 A6 */	mflr r0
/* 80273E18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80273E1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80273E20  7C 7F 1B 78 */	mr r31, r3
/* 80273E24  38 00 00 00 */	li r0, 0
/* 80273E28  90 03 00 04 */	stw r0, 4(r3)
/* 80273E2C  90 03 00 08 */	stw r0, 8(r3)
/* 80273E30  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80273E34  B0 03 00 0E */	sth r0, 0xe(r3)
/* 80273E38  B0 03 00 10 */	sth r0, 0x10(r3)
/* 80273E3C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 80273E40  90 A3 00 00 */	stw r5, 0(r3)
/* 80273E44  38 61 00 08 */	addi r3, r1, 8
/* 80273E48  7F E5 FB 78 */	mr r5, r31
/* 80273E4C  48 00 9A 55 */	bl __ct__17JPAResourceLoaderFPCUcP18JPAResourceManager
/* 80273E50  7F E3 FB 78 */	mr r3, r31
/* 80273E54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80273E58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80273E5C  7C 08 03 A6 */	mtlr r0
/* 80273E60  38 21 00 20 */	addi r1, r1, 0x20
/* 80273E64  4E 80 00 20 */	blr 
