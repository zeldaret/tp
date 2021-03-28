lbl_80CB0740:
/* 80CB0740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB0744  7C 08 02 A6 */	mflr r0
/* 80CB0748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB074C  7C 64 1B 78 */	mr r4, r3
/* 80CB0750  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80CB0754  88 04 07 40 */	lbz r0, 0x740(r4)
/* 80CB0758  54 00 10 3A */	slwi r0, r0, 2
/* 80CB075C  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CB0760  38 84 0B 08 */	addi r4, r4, l_arcName@l
/* 80CB0764  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB0768  4B 37 C8 A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB076C  38 60 00 01 */	li r3, 1
/* 80CB0770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0774  7C 08 03 A6 */	mtlr r0
/* 80CB0778  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB077C  4E 80 00 20 */	blr 
