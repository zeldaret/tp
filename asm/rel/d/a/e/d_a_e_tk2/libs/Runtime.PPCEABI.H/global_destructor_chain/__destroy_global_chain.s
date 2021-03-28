lbl_807BA514:
/* 807BA514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA518  7C 08 02 A6 */	mflr r0
/* 807BA51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA524  3C 60 80 7C */	lis r3, __global_destructor_chain@ha
/* 807BA528  3B E3 BF 38 */	addi r31, r3, __global_destructor_chain@l
/* 807BA52C  48 00 00 20 */	b lbl_807BA54C
lbl_807BA530:
/* 807BA530  80 05 00 00 */	lwz r0, 0(r5)
/* 807BA534  90 1F 00 00 */	stw r0, 0(r31)
/* 807BA538  80 65 00 08 */	lwz r3, 8(r5)
/* 807BA53C  38 80 FF FF */	li r4, -1
/* 807BA540  81 85 00 04 */	lwz r12, 4(r5)
/* 807BA544  7D 89 03 A6 */	mtctr r12
/* 807BA548  4E 80 04 21 */	bctrl 
lbl_807BA54C:
/* 807BA54C  80 BF 00 00 */	lwz r5, 0(r31)
/* 807BA550  28 05 00 00 */	cmplwi r5, 0
/* 807BA554  40 82 FF DC */	bne lbl_807BA530
/* 807BA558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA560  7C 08 03 A6 */	mtlr r0
/* 807BA564  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA568  4E 80 00 20 */	blr 
