lbl_80BD013C:
/* 80BD013C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD0140  7C 08 02 A6 */	mflr r0
/* 80BD0144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0148  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD014C  38 84 02 60 */	addi r4, r4, l_arcName@l
/* 80BD0150  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD0154  38 63 06 68 */	addi r3, r3, 0x668
/* 80BD0158  4B 45 CE B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BD015C  38 60 00 01 */	li r3, 1
/* 80BD0160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0164  7C 08 03 A6 */	mtlr r0
/* 80BD0168  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD016C  4E 80 00 20 */	blr 
