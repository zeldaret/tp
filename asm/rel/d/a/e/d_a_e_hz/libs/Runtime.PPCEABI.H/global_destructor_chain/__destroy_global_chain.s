lbl_806EA5B4:
/* 806EA5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EA5B8  7C 08 02 A6 */	mflr r0
/* 806EA5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EA5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EA5C4  3C 60 80 6F */	lis r3, __global_destructor_chain@ha
/* 806EA5C8  3B E3 0B 28 */	addi r31, r3, __global_destructor_chain@l
/* 806EA5CC  48 00 00 20 */	b lbl_806EA5EC
lbl_806EA5D0:
/* 806EA5D0  80 05 00 00 */	lwz r0, 0(r5)
/* 806EA5D4  90 1F 00 00 */	stw r0, 0(r31)
/* 806EA5D8  80 65 00 08 */	lwz r3, 8(r5)
/* 806EA5DC  38 80 FF FF */	li r4, -1
/* 806EA5E0  81 85 00 04 */	lwz r12, 4(r5)
/* 806EA5E4  7D 89 03 A6 */	mtctr r12
/* 806EA5E8  4E 80 04 21 */	bctrl 
lbl_806EA5EC:
/* 806EA5EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806EA5F0  28 05 00 00 */	cmplwi r5, 0
/* 806EA5F4  40 82 FF DC */	bne lbl_806EA5D0
/* 806EA5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EA5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EA600  7C 08 03 A6 */	mtlr r0
/* 806EA604  38 21 00 10 */	addi r1, r1, 0x10
/* 806EA608  4E 80 00 20 */	blr 
