lbl_80C16450:
/* 80C16450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C16454  7C 08 02 A6 */	mflr r0
/* 80C16458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1645C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16460  3C 60 80 C1 */	lis r3, lit_1109@ha
/* 80C16464  3B E3 65 E8 */	addi r31, r3, lit_1109@l
/* 80C16468  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80C1646C  3C 80 80 C1 */	lis r4, __dt__4cXyzFv@ha
/* 80C16470  38 84 57 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C16474  38 BF 00 40 */	addi r5, r31, 0x40
/* 80C16478  4B FF F0 41 */	bl __register_global_object
/* 80C1647C  38 7F 00 64 */	addi r3, r31, 0x64
/* 80C16480  3C 80 80 C1 */	lis r4, __dt__4cXyzFv@ha
/* 80C16484  38 84 57 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C16488  38 BF 00 58 */	addi r5, r31, 0x58
/* 80C1648C  4B FF F0 2D */	bl __register_global_object
/* 80C16490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16498  7C 08 03 A6 */	mtlr r0
/* 80C1649C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C164A0  4E 80 00 20 */	blr 
