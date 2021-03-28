lbl_80CBF854:
/* 80CBF854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF858  7C 08 02 A6 */	mflr r0
/* 80CBF85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF864  3C 60 80 CC */	lis r3, __global_destructor_chain@ha
/* 80CBF868  3B E3 0A B0 */	addi r31, r3, __global_destructor_chain@l
/* 80CBF86C  48 00 00 20 */	b lbl_80CBF88C
lbl_80CBF870:
/* 80CBF870  80 05 00 00 */	lwz r0, 0(r5)
/* 80CBF874  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBF878  80 65 00 08 */	lwz r3, 8(r5)
/* 80CBF87C  38 80 FF FF */	li r4, -1
/* 80CBF880  81 85 00 04 */	lwz r12, 4(r5)
/* 80CBF884  7D 89 03 A6 */	mtctr r12
/* 80CBF888  4E 80 04 21 */	bctrl 
lbl_80CBF88C:
/* 80CBF88C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CBF890  28 05 00 00 */	cmplwi r5, 0
/* 80CBF894  40 82 FF DC */	bne lbl_80CBF870
/* 80CBF898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBF89C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF8A0  7C 08 03 A6 */	mtlr r0
/* 80CBF8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF8A8  4E 80 00 20 */	blr 
