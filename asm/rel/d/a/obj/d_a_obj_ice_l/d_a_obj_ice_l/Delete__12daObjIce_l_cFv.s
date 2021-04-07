lbl_80C20750:
/* 80C20750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C20754  7C 08 02 A6 */	mflr r0
/* 80C20758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2075C  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C20838@ha */
/* 80C20760  38 84 08 38 */	addi r4, r4, l_arcName@l /* 0x80C20838@l */
/* 80C20764  80 84 00 00 */	lwz r4, 0(r4)
/* 80C20768  38 63 06 38 */	addi r3, r3, 0x638
/* 80C2076C  4B 40 C8 9D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C20770  38 60 00 01 */	li r3, 1
/* 80C20774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C20778  7C 08 03 A6 */	mtlr r0
/* 80C2077C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C20780  4E 80 00 20 */	blr 
