lbl_8061A41C:
/* 8061A41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A420  7C 08 02 A6 */	mflr r0
/* 8061A424  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A42C  7C 7F 1B 78 */	mr r31, r3
/* 8061A430  3C 80 80 62 */	lis r4, __ct__4cXyzFv@ha
/* 8061A434  38 84 A6 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 8061A438  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8061A43C  38 A5 14 08 */	addi r5, r5, __dt__4cXyzFv@l
/* 8061A440  38 C0 00 0C */	li r6, 0xc
/* 8061A444  38 E0 00 14 */	li r7, 0x14
/* 8061A448  4B D4 79 18 */	b __construct_array
/* 8061A44C  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 8061A450  3C 80 80 62 */	lis r4, __ct__4cXyzFv@ha
/* 8061A454  38 84 A6 54 */	addi r4, r4, __ct__4cXyzFv@l
/* 8061A458  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8061A45C  38 A5 14 08 */	addi r5, r5, __dt__4cXyzFv@l
/* 8061A460  38 C0 00 0C */	li r6, 0xc
/* 8061A464  38 E0 00 14 */	li r7, 0x14
/* 8061A468  4B D4 78 F8 */	b __construct_array
/* 8061A46C  7F E3 FB 78 */	mr r3, r31
/* 8061A470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A478  7C 08 03 A6 */	mtlr r0
/* 8061A47C  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A480  4E 80 00 20 */	blr 
