lbl_80780470:
/* 80780470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80780474  7C 08 02 A6 */	mflr r0
/* 80780478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078047C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80780480  7C 7F 1B 78 */	mr r31, r3
/* 80780484  3C 80 80 78 */	lis r4, __ct__4cXyzFv@ha
/* 80780488  38 84 04 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 8078048C  3C A0 80 78 */	lis r5, __dt__4cXyzFv@ha
/* 80780490  38 A5 0D 74 */	addi r5, r5, __dt__4cXyzFv@l
/* 80780494  38 C0 00 0C */	li r6, 0xc
/* 80780498  38 E0 00 10 */	li r7, 0x10
/* 8078049C  4B BE 18 C4 */	b __construct_array
/* 807804A0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 807804A4  3C 80 80 78 */	lis r4, __ct__4cXyzFv@ha
/* 807804A8  38 84 04 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 807804AC  3C A0 80 78 */	lis r5, __dt__4cXyzFv@ha
/* 807804B0  38 A5 0D 74 */	addi r5, r5, __dt__4cXyzFv@l
/* 807804B4  38 C0 00 0C */	li r6, 0xc
/* 807804B8  38 E0 00 10 */	li r7, 0x10
/* 807804BC  4B BE 18 A4 */	b __construct_array
/* 807804C0  7F E3 FB 78 */	mr r3, r31
/* 807804C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807804C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807804CC  7C 08 03 A6 */	mtlr r0
/* 807804D0  38 21 00 10 */	addi r1, r1, 0x10
/* 807804D4  4E 80 00 20 */	blr 
