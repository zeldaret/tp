lbl_80AA8C34:
/* 80AA8C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8C38  7C 08 02 A6 */	mflr r0
/* 80AA8C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA8C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA8C44  3C 60 80 AB */	lis r3, __global_destructor_chain@ha
/* 80AA8C48  3B E3 DB E8 */	addi r31, r3, __global_destructor_chain@l
/* 80AA8C4C  48 00 00 20 */	b lbl_80AA8C6C
lbl_80AA8C50:
/* 80AA8C50  80 05 00 00 */	lwz r0, 0(r5)
/* 80AA8C54  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA8C58  80 65 00 08 */	lwz r3, 8(r5)
/* 80AA8C5C  38 80 FF FF */	li r4, -1
/* 80AA8C60  81 85 00 04 */	lwz r12, 4(r5)
/* 80AA8C64  7D 89 03 A6 */	mtctr r12
/* 80AA8C68  4E 80 04 21 */	bctrl 
lbl_80AA8C6C:
/* 80AA8C6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AA8C70  28 05 00 00 */	cmplwi r5, 0
/* 80AA8C74  40 82 FF DC */	bne lbl_80AA8C50
/* 80AA8C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA8C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8C80  7C 08 03 A6 */	mtlr r0
/* 80AA8C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8C88  4E 80 00 20 */	blr 
