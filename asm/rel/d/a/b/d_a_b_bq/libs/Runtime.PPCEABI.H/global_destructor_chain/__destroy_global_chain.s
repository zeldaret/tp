lbl_805B3514:
/* 805B3514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3518  7C 08 02 A6 */	mflr r0
/* 805B351C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3524  3C 60 80 5C */	lis r3, __global_destructor_chain@ha
/* 805B3528  3B E3 AD 48 */	addi r31, r3, __global_destructor_chain@l
/* 805B352C  48 00 00 20 */	b lbl_805B354C
lbl_805B3530:
/* 805B3530  80 05 00 00 */	lwz r0, 0(r5)
/* 805B3534  90 1F 00 00 */	stw r0, 0(r31)
/* 805B3538  80 65 00 08 */	lwz r3, 8(r5)
/* 805B353C  38 80 FF FF */	li r4, -1
/* 805B3540  81 85 00 04 */	lwz r12, 4(r5)
/* 805B3544  7D 89 03 A6 */	mtctr r12
/* 805B3548  4E 80 04 21 */	bctrl 
lbl_805B354C:
/* 805B354C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805B3550  28 05 00 00 */	cmplwi r5, 0
/* 805B3554  40 82 FF DC */	bne lbl_805B3530
/* 805B3558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B355C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3560  7C 08 03 A6 */	mtlr r0
/* 805B3564  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3568  4E 80 00 20 */	blr 
