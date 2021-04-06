lbl_80BC6870:
/* 80BC6870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6874  7C 08 02 A6 */	mflr r0
/* 80BC6878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC687C  3C 80 80 BC */	lis r4, l_arcName@ha /* 0x80BC6AF4@ha */
/* 80BC6880  38 84 6A F4 */	addi r4, r4, l_arcName@l /* 0x80BC6AF4@l */
/* 80BC6884  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC6888  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BC688C  4B 46 67 7D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC6890  38 60 00 01 */	li r3, 1
/* 80BC6894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6898  7C 08 03 A6 */	mtlr r0
/* 80BC689C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC68A0  4E 80 00 20 */	blr 
