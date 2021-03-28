lbl_8068E0D4:
/* 8068E0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068E0D8  7C 08 02 A6 */	mflr r0
/* 8068E0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068E0E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068E0E4  3C 60 80 69 */	lis r3, __global_destructor_chain@ha
/* 8068E0E8  3B E3 10 88 */	addi r31, r3, __global_destructor_chain@l
/* 8068E0EC  48 00 00 20 */	b lbl_8068E10C
lbl_8068E0F0:
/* 8068E0F0  80 05 00 00 */	lwz r0, 0(r5)
/* 8068E0F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8068E0F8  80 65 00 08 */	lwz r3, 8(r5)
/* 8068E0FC  38 80 FF FF */	li r4, -1
/* 8068E100  81 85 00 04 */	lwz r12, 4(r5)
/* 8068E104  7D 89 03 A6 */	mtctr r12
/* 8068E108  4E 80 04 21 */	bctrl 
lbl_8068E10C:
/* 8068E10C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8068E110  28 05 00 00 */	cmplwi r5, 0
/* 8068E114  40 82 FF DC */	bne lbl_8068E0F0
/* 8068E118  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068E11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068E120  7C 08 03 A6 */	mtlr r0
/* 8068E124  38 21 00 10 */	addi r1, r1, 0x10
/* 8068E128  4E 80 00 20 */	blr 
