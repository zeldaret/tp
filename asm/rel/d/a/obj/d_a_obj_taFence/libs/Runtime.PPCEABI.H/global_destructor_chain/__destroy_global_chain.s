lbl_80D04E14:
/* 80D04E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04E18  7C 08 02 A6 */	mflr r0
/* 80D04E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04E24  3C 60 80 D0 */	lis r3, __global_destructor_chain@ha
/* 80D04E28  3B E3 63 28 */	addi r31, r3, __global_destructor_chain@l
/* 80D04E2C  48 00 00 20 */	b lbl_80D04E4C
lbl_80D04E30:
/* 80D04E30  80 05 00 00 */	lwz r0, 0(r5)
/* 80D04E34  90 1F 00 00 */	stw r0, 0(r31)
/* 80D04E38  80 65 00 08 */	lwz r3, 8(r5)
/* 80D04E3C  38 80 FF FF */	li r4, -1
/* 80D04E40  81 85 00 04 */	lwz r12, 4(r5)
/* 80D04E44  7D 89 03 A6 */	mtctr r12
/* 80D04E48  4E 80 04 21 */	bctrl 
lbl_80D04E4C:
/* 80D04E4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D04E50  28 05 00 00 */	cmplwi r5, 0
/* 80D04E54  40 82 FF DC */	bne lbl_80D04E30
/* 80D04E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04E60  7C 08 03 A6 */	mtlr r0
/* 80D04E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04E68  4E 80 00 20 */	blr 
