lbl_80BD4CC8:
/* 80BD4CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4CCC  7C 08 02 A6 */	mflr r0
/* 80BD4CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4CD4  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD4DC4@ha */
/* 80BD4CD8  38 84 4D C4 */	addi r4, r4, l_arcName@l /* 0x80BD4DC4@l */
/* 80BD4CDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD4CE0  38 63 05 C8 */	addi r3, r3, 0x5c8
/* 80BD4CE4  4B 45 83 25 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BD4CE8  38 60 00 01 */	li r3, 1
/* 80BD4CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4CF0  7C 08 03 A6 */	mtlr r0
/* 80BD4CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4CF8  4E 80 00 20 */	blr 
