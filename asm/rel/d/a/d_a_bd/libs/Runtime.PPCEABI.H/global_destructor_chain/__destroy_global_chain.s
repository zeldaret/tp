lbl_804D6BF4:
/* 804D6BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6BF8  7C 08 02 A6 */	mflr r0
/* 804D6BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6C04  3C 60 80 4E */	lis r3, __global_destructor_chain@ha
/* 804D6C08  3B E3 A3 18 */	addi r31, r3, __global_destructor_chain@l
/* 804D6C0C  48 00 00 20 */	b lbl_804D6C2C
lbl_804D6C10:
/* 804D6C10  80 05 00 00 */	lwz r0, 0(r5)
/* 804D6C14  90 1F 00 00 */	stw r0, 0(r31)
/* 804D6C18  80 65 00 08 */	lwz r3, 8(r5)
/* 804D6C1C  38 80 FF FF */	li r4, -1
/* 804D6C20  81 85 00 04 */	lwz r12, 4(r5)
/* 804D6C24  7D 89 03 A6 */	mtctr r12
/* 804D6C28  4E 80 04 21 */	bctrl 
lbl_804D6C2C:
/* 804D6C2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 804D6C30  28 05 00 00 */	cmplwi r5, 0
/* 804D6C34  40 82 FF DC */	bne lbl_804D6C10
/* 804D6C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6C40  7C 08 03 A6 */	mtlr r0
/* 804D6C44  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6C48  4E 80 00 20 */	blr 
