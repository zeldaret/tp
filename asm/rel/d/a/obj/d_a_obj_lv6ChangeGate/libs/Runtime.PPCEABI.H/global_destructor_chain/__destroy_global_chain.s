lbl_80C70BF4:
/* 80C70BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70BF8  7C 08 02 A6 */	mflr r0
/* 80C70BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70C04  3C 60 80 C7 */	lis r3, __global_destructor_chain@ha
/* 80C70C08  3B E3 23 78 */	addi r31, r3, __global_destructor_chain@l
/* 80C70C0C  48 00 00 20 */	b lbl_80C70C2C
lbl_80C70C10:
/* 80C70C10  80 05 00 00 */	lwz r0, 0(r5)
/* 80C70C14  90 1F 00 00 */	stw r0, 0(r31)
/* 80C70C18  80 65 00 08 */	lwz r3, 8(r5)
/* 80C70C1C  38 80 FF FF */	li r4, -1
/* 80C70C20  81 85 00 04 */	lwz r12, 4(r5)
/* 80C70C24  7D 89 03 A6 */	mtctr r12
/* 80C70C28  4E 80 04 21 */	bctrl 
lbl_80C70C2C:
/* 80C70C2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C70C30  28 05 00 00 */	cmplwi r5, 0
/* 80C70C34  40 82 FF DC */	bne lbl_80C70C10
/* 80C70C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70C40  7C 08 03 A6 */	mtlr r0
/* 80C70C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70C48  4E 80 00 20 */	blr 
