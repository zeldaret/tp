lbl_80D2BB34:
/* 80D2BB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BB38  7C 08 02 A6 */	mflr r0
/* 80D2BB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2BB44  3C 60 80 D3 */	lis r3, __global_destructor_chain@ha
/* 80D2BB48  3B E3 C5 A8 */	addi r31, r3, __global_destructor_chain@l
/* 80D2BB4C  48 00 00 20 */	b lbl_80D2BB6C
lbl_80D2BB50:
/* 80D2BB50  80 05 00 00 */	lwz r0, 0(r5)
/* 80D2BB54  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2BB58  80 65 00 08 */	lwz r3, 8(r5)
/* 80D2BB5C  38 80 FF FF */	li r4, -1
/* 80D2BB60  81 85 00 04 */	lwz r12, 4(r5)
/* 80D2BB64  7D 89 03 A6 */	mtctr r12
/* 80D2BB68  4E 80 04 21 */	bctrl 
lbl_80D2BB6C:
/* 80D2BB6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D2BB70  28 05 00 00 */	cmplwi r5, 0
/* 80D2BB74  40 82 FF DC */	bne lbl_80D2BB50
/* 80D2BB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2BB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BB80  7C 08 03 A6 */	mtlr r0
/* 80D2BB84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BB88  4E 80 00 20 */	blr 
