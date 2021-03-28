lbl_80C1F728:
/* 80C1F728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F72C  7C 08 02 A6 */	mflr r0
/* 80C1F730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F734  7C 64 1B 78 */	mr r4, r3
/* 80C1F738  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80C1F73C  88 04 05 AC */	lbz r0, 0x5ac(r4)
/* 80C1F740  54 00 10 3A */	slwi r0, r0, 2
/* 80C1F744  3C 80 80 C2 */	lis r4, l_resNameIdx@ha
/* 80C1F748  38 84 F8 C0 */	addi r4, r4, l_resNameIdx@l
/* 80C1F74C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C1F750  4B 40 D8 B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C1F754  38 60 00 01 */	li r3, 1
/* 80C1F758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F75C  7C 08 03 A6 */	mtlr r0
/* 80C1F760  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F764  4E 80 00 20 */	blr 
