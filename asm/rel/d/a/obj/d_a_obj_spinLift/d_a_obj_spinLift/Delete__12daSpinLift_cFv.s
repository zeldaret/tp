lbl_80CE4B44:
/* 80CE4B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4B48  7C 08 02 A6 */	mflr r0
/* 80CE4B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4B50  7C 64 1B 78 */	mr r4, r3
/* 80CE4B54  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80CE4B58  88 04 05 BB */	lbz r0, 0x5bb(r4)
/* 80CE4B5C  54 00 10 3A */	slwi r0, r0, 2
/* 80CE4B60  3C 80 80 CE */	lis r4, l_resNameIdx@ha /* 0x80CE4DA8@ha */
/* 80CE4B64  38 84 4D A8 */	addi r4, r4, l_resNameIdx@l /* 0x80CE4DA8@l */
/* 80CE4B68  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CE4B6C  4B 34 84 9D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CE4B70  38 60 00 01 */	li r3, 1
/* 80CE4B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4B78  7C 08 03 A6 */	mtlr r0
/* 80CE4B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4B80  4E 80 00 20 */	blr 
