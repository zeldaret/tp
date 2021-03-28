lbl_80BBA6E8:
/* 80BBA6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA6EC  7C 08 02 A6 */	mflr r0
/* 80BBA6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA6F4  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BBA6F8  38 84 A8 4C */	addi r4, r4, l_arcName@l
/* 80BBA6FC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BBA700  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BBA704  4B 47 29 04 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BBA708  38 60 00 01 */	li r3, 1
/* 80BBA70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA710  7C 08 03 A6 */	mtlr r0
/* 80BBA714  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA718  4E 80 00 20 */	blr 
