lbl_80AB95D4:
/* 80AB95D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB95D8  7C 08 02 A6 */	mflr r0
/* 80AB95DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB95E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB95E4  3C 60 80 AC */	lis r3, __global_destructor_chain@ha
/* 80AB95E8  3B E3 03 10 */	addi r31, r3, __global_destructor_chain@l
/* 80AB95EC  48 00 00 20 */	b lbl_80AB960C
lbl_80AB95F0:
/* 80AB95F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80AB95F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB95F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80AB95FC  38 80 FF FF */	li r4, -1
/* 80AB9600  81 85 00 04 */	lwz r12, 4(r5)
/* 80AB9604  7D 89 03 A6 */	mtctr r12
/* 80AB9608  4E 80 04 21 */	bctrl 
lbl_80AB960C:
/* 80AB960C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AB9610  28 05 00 00 */	cmplwi r5, 0
/* 80AB9614  40 82 FF DC */	bne lbl_80AB95F0
/* 80AB9618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB961C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB9620  7C 08 03 A6 */	mtlr r0
/* 80AB9624  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB9628  4E 80 00 20 */	blr 
