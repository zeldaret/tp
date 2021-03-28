lbl_80C7DABC:
/* 80C7DABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DAC0  7C 08 02 A6 */	mflr r0
/* 80C7DAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DAC8  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C7DACC  38 84 DF 98 */	addi r4, r4, l_arcName@l
/* 80C7DAD0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C7DAD4  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C7DAD8  4B 3A F5 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C7DADC  38 60 00 01 */	li r3, 1
/* 80C7DAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DAE4  7C 08 03 A6 */	mtlr r0
/* 80C7DAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DAEC  4E 80 00 20 */	blr 
