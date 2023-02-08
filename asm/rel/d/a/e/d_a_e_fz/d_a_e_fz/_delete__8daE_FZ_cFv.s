lbl_806C0B94:
/* 806C0B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C0B98  7C 08 02 A6 */	mflr r0
/* 806C0B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C0BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C0BA4  7C 7F 1B 78 */	mr r31, r3
/* 806C0BA8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806C0BAC  3C 80 80 6C */	lis r4, d_a_e_fz__stringBase0@ha /* 0x806C19F4@ha */
/* 806C0BB0  38 84 19 F4 */	addi r4, r4, d_a_e_fz__stringBase0@l /* 0x806C19F4@l */
/* 806C0BB4  4B 96 C4 55 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806C0BB8  88 1F 0C 21 */	lbz r0, 0xc21(r31)
/* 806C0BBC  28 00 00 00 */	cmplwi r0, 0
/* 806C0BC0  41 82 00 10 */	beq lbl_806C0BD0
/* 806C0BC4  38 00 00 00 */	li r0, 0
/* 806C0BC8  3C 60 80 6C */	lis r3, data_806C1BA0@ha /* 0x806C1BA0@ha */
/* 806C0BCC  98 03 1B A0 */	stb r0, data_806C1BA0@l(r3)  /* 0x806C1BA0@l */
lbl_806C0BD0:
/* 806C0BD0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806C0BD4  28 00 00 00 */	cmplwi r0, 0
/* 806C0BD8  41 82 00 18 */	beq lbl_806C0BF0
/* 806C0BDC  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 806C0BE0  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 806C0BE4  81 8C 00 08 */	lwz r12, 8(r12)
/* 806C0BE8  7D 89 03 A6 */	mtctr r12
/* 806C0BEC  4E 80 04 21 */	bctrl 
lbl_806C0BF0:
/* 806C0BF0  38 60 00 01 */	li r3, 1
/* 806C0BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C0BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C0BFC  7C 08 03 A6 */	mtlr r0
/* 806C0C00  38 21 00 10 */	addi r1, r1, 0x10
/* 806C0C04  4E 80 00 20 */	blr 
