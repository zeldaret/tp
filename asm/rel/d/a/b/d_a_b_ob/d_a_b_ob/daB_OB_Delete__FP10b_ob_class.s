lbl_806193BC:
/* 806193BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806193C0  7C 08 02 A6 */	mflr r0
/* 806193C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806193C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806193CC  7C 7F 1B 78 */	mr r31, r3
/* 806193D0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806193D4  3C 80 80 62 */	lis r4, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 806193D8  38 84 B0 9C */	addi r4, r4, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 806193DC  4B A1 3C 2D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806193E0  88 1F 5D E0 */	lbz r0, 0x5de0(r31)
/* 806193E4  28 00 00 00 */	cmplwi r0, 0
/* 806193E8  41 82 00 10 */	beq lbl_806193F8
/* 806193EC  38 00 00 00 */	li r0, 0
/* 806193F0  3C 60 80 62 */	lis r3, struct_8061B4FC+0x1@ha /* 0x8061B4FD@ha */
/* 806193F4  98 03 B4 FD */	stb r0, struct_8061B4FC+0x1@l(r3)  /* 0x8061B4FD@l */
lbl_806193F8:
/* 806193F8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806193FC  28 00 00 00 */	cmplwi r0, 0
/* 80619400  41 82 00 20 */	beq lbl_80619420
/* 80619404  38 7F 59 3C */	addi r3, r31, 0x593c
/* 80619408  4B CA 72 ED */	bl stopAnime__10Z2CreatureFv
/* 8061940C  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 80619410  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 80619414  81 8C 00 08 */	lwz r12, 8(r12)
/* 80619418  7D 89 03 A6 */	mtctr r12
/* 8061941C  4E 80 04 21 */	bctrl 
lbl_80619420:
/* 80619420  38 60 00 01 */	li r3, 1
/* 80619424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80619428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061942C  7C 08 03 A6 */	mtlr r0
/* 80619430  38 21 00 10 */	addi r1, r1, 0x10
/* 80619434  4E 80 00 20 */	blr 
