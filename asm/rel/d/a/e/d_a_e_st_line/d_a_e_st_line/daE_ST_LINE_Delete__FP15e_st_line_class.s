lbl_807A6FAC:
/* 807A6FAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A6FB0  7C 08 02 A6 */	mflr r0
/* 807A6FB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A6FB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A6FBC  7C 7F 1B 78 */	mr r31, r3
/* 807A6FC0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807A6FC4  3C 80 80 7A */	lis r4, d_a_e_st_line__stringBase0@ha /* 0x807A729C@ha */
/* 807A6FC8  38 84 72 9C */	addi r4, r4, d_a_e_st_line__stringBase0@l /* 0x807A729C@l */
/* 807A6FCC  4B 88 60 3D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807A6FD0  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 807A6FD4  28 00 00 00 */	cmplwi r0, 0
/* 807A6FD8  40 82 00 18 */	bne lbl_807A6FF0
/* 807A6FDC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807A6FE0  28 00 00 00 */	cmplwi r0, 0
/* 807A6FE4  41 82 00 0C */	beq lbl_807A6FF0
/* 807A6FE8  38 7F 0C D4 */	addi r3, r31, 0xcd4
/* 807A6FEC  4B B1 70 0D */	bl deleteObject__14Z2SoundObjBaseFv
lbl_807A6FF0:
/* 807A6FF0  38 60 00 01 */	li r3, 1
/* 807A6FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A6FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A6FFC  7C 08 03 A6 */	mtlr r0
/* 807A7000  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7004  4E 80 00 20 */	blr 
