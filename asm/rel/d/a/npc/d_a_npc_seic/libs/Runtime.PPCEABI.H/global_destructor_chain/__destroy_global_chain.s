lbl_80AC74F4:
/* 80AC74F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC74F8  7C 08 02 A6 */	mflr r0
/* 80AC74FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC7500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC7504  3C 60 80 AD */	lis r3, __global_destructor_chain@ha
/* 80AC7508  3B E3 95 78 */	addi r31, r3, __global_destructor_chain@l
/* 80AC750C  48 00 00 20 */	b lbl_80AC752C
lbl_80AC7510:
/* 80AC7510  80 05 00 00 */	lwz r0, 0(r5)
/* 80AC7514  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC7518  80 65 00 08 */	lwz r3, 8(r5)
/* 80AC751C  38 80 FF FF */	li r4, -1
/* 80AC7520  81 85 00 04 */	lwz r12, 4(r5)
/* 80AC7524  7D 89 03 A6 */	mtctr r12
/* 80AC7528  4E 80 04 21 */	bctrl 
lbl_80AC752C:
/* 80AC752C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AC7530  28 05 00 00 */	cmplwi r5, 0
/* 80AC7534  40 82 FF DC */	bne lbl_80AC7510
/* 80AC7538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC753C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC7540  7C 08 03 A6 */	mtlr r0
/* 80AC7544  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC7548  4E 80 00 20 */	blr 
