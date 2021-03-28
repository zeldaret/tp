lbl_80C44A58:
/* 80C44A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44A5C  7C 08 02 A6 */	mflr r0
/* 80C44A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44A68  7C 7F 1B 78 */	mr r31, r3
/* 80C44A6C  3C 80 80 C4 */	lis r4, __ct__4cXyzFv@ha
/* 80C44A70  38 84 4A A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80C44A74  3C A0 80 C4 */	lis r5, __dt__4cXyzFv@ha
/* 80C44A78  38 A5 40 8C */	addi r5, r5, __dt__4cXyzFv@l
/* 80C44A7C  38 C0 00 0C */	li r6, 0xc
/* 80C44A80  38 E0 00 04 */	li r7, 4
/* 80C44A84  4B 71 D2 DC */	b __construct_array
/* 80C44A88  7F E3 FB 78 */	mr r3, r31
/* 80C44A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44A94  7C 08 03 A6 */	mtlr r0
/* 80C44A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44A9C  4E 80 00 20 */	blr 
