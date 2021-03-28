lbl_809BB5B4:
/* 809BB5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB5B8  7C 08 02 A6 */	mflr r0
/* 809BB5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB5C4  3C 60 80 9C */	lis r3, __global_destructor_chain@ha
/* 809BB5C8  3B E3 E8 40 */	addi r31, r3, __global_destructor_chain@l
/* 809BB5CC  48 00 00 20 */	b lbl_809BB5EC
lbl_809BB5D0:
/* 809BB5D0  80 05 00 00 */	lwz r0, 0(r5)
/* 809BB5D4  90 1F 00 00 */	stw r0, 0(r31)
/* 809BB5D8  80 65 00 08 */	lwz r3, 8(r5)
/* 809BB5DC  38 80 FF FF */	li r4, -1
/* 809BB5E0  81 85 00 04 */	lwz r12, 4(r5)
/* 809BB5E4  7D 89 03 A6 */	mtctr r12
/* 809BB5E8  4E 80 04 21 */	bctrl 
lbl_809BB5EC:
/* 809BB5EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809BB5F0  28 05 00 00 */	cmplwi r5, 0
/* 809BB5F4  40 82 FF DC */	bne lbl_809BB5D0
/* 809BB5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB600  7C 08 03 A6 */	mtlr r0
/* 809BB604  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB608  4E 80 00 20 */	blr 
