lbl_809E4074:
/* 809E4074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E4078  7C 08 02 A6 */	mflr r0
/* 809E407C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E4080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E4084  3C 60 80 9F */	lis r3, __global_destructor_chain@ha
/* 809E4088  3B E3 82 30 */	addi r31, r3, __global_destructor_chain@l
/* 809E408C  48 00 00 20 */	b lbl_809E40AC
lbl_809E4090:
/* 809E4090  80 05 00 00 */	lwz r0, 0(r5)
/* 809E4094  90 1F 00 00 */	stw r0, 0(r31)
/* 809E4098  80 65 00 08 */	lwz r3, 8(r5)
/* 809E409C  38 80 FF FF */	li r4, -1
/* 809E40A0  81 85 00 04 */	lwz r12, 4(r5)
/* 809E40A4  7D 89 03 A6 */	mtctr r12
/* 809E40A8  4E 80 04 21 */	bctrl 
lbl_809E40AC:
/* 809E40AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809E40B0  28 05 00 00 */	cmplwi r5, 0
/* 809E40B4  40 82 FF DC */	bne lbl_809E4090
/* 809E40B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E40BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E40C0  7C 08 03 A6 */	mtlr r0
/* 809E40C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809E40C8  4E 80 00 20 */	blr 
