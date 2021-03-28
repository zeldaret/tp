lbl_80A43514:
/* 80A43514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A43518  7C 08 02 A6 */	mflr r0
/* 80A4351C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A43520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A43524  3C 60 80 A4 */	lis r3, __global_destructor_chain@ha
/* 80A43528  3B E3 58 88 */	addi r31, r3, __global_destructor_chain@l
/* 80A4352C  48 00 00 20 */	b lbl_80A4354C
lbl_80A43530:
/* 80A43530  80 05 00 00 */	lwz r0, 0(r5)
/* 80A43534  90 1F 00 00 */	stw r0, 0(r31)
/* 80A43538  80 65 00 08 */	lwz r3, 8(r5)
/* 80A4353C  38 80 FF FF */	li r4, -1
/* 80A43540  81 85 00 04 */	lwz r12, 4(r5)
/* 80A43544  7D 89 03 A6 */	mtctr r12
/* 80A43548  4E 80 04 21 */	bctrl 
lbl_80A4354C:
/* 80A4354C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A43550  28 05 00 00 */	cmplwi r5, 0
/* 80A43554  40 82 FF DC */	bne lbl_80A43530
/* 80A43558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A4355C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A43560  7C 08 03 A6 */	mtlr r0
/* 80A43564  38 21 00 10 */	addi r1, r1, 0x10
/* 80A43568  4E 80 00 20 */	blr 
