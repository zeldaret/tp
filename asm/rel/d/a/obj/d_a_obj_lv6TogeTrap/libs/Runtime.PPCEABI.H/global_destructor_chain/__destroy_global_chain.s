lbl_80C79DF4:
/* 80C79DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79DF8  7C 08 02 A6 */	mflr r0
/* 80C79DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C79E04  3C 60 80 C8 */	lis r3, __global_destructor_chain@ha
/* 80C79E08  3B E3 CA 50 */	addi r31, r3, __global_destructor_chain@l
/* 80C79E0C  48 00 00 20 */	b lbl_80C79E2C
lbl_80C79E10:
/* 80C79E10  80 05 00 00 */	lwz r0, 0(r5)
/* 80C79E14  90 1F 00 00 */	stw r0, 0(r31)
/* 80C79E18  80 65 00 08 */	lwz r3, 8(r5)
/* 80C79E1C  38 80 FF FF */	li r4, -1
/* 80C79E20  81 85 00 04 */	lwz r12, 4(r5)
/* 80C79E24  7D 89 03 A6 */	mtctr r12
/* 80C79E28  4E 80 04 21 */	bctrl 
lbl_80C79E2C:
/* 80C79E2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C79E30  28 05 00 00 */	cmplwi r5, 0
/* 80C79E34  40 82 FF DC */	bne lbl_80C79E10
/* 80C79E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C79E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79E40  7C 08 03 A6 */	mtlr r0
/* 80C79E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79E48  4E 80 00 20 */	blr 
