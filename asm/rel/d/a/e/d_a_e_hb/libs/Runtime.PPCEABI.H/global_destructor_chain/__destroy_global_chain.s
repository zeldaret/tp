lbl_804FBD14:
/* 804FBD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBD18  7C 08 02 A6 */	mflr r0
/* 804FBD1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBD20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FBD24  3C 60 80 50 */	lis r3, __global_destructor_chain@ha
/* 804FBD28  3B E3 0E 58 */	addi r31, r3, __global_destructor_chain@l
/* 804FBD2C  48 00 00 20 */	b lbl_804FBD4C
lbl_804FBD30:
/* 804FBD30  80 05 00 00 */	lwz r0, 0(r5)
/* 804FBD34  90 1F 00 00 */	stw r0, 0(r31)
/* 804FBD38  80 65 00 08 */	lwz r3, 8(r5)
/* 804FBD3C  38 80 FF FF */	li r4, -1
/* 804FBD40  81 85 00 04 */	lwz r12, 4(r5)
/* 804FBD44  7D 89 03 A6 */	mtctr r12
/* 804FBD48  4E 80 04 21 */	bctrl 
lbl_804FBD4C:
/* 804FBD4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804FBD50  28 05 00 00 */	cmplwi r5, 0
/* 804FBD54  40 82 FF DC */	bne lbl_804FBD30
/* 804FBD58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FBD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBD60  7C 08 03 A6 */	mtlr r0
/* 804FBD64  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBD68  4E 80 00 20 */	blr 
