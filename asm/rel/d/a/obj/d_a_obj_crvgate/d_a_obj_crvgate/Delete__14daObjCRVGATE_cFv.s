lbl_80BD3074:
/* 80BD3074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD3078  7C 08 02 A6 */	mflr r0
/* 80BD307C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD3080  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD3084  38 84 31 F4 */	addi r4, r4, l_arcName@l
/* 80BD3088  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD308C  38 63 06 7C */	addi r3, r3, 0x67c
/* 80BD3090  4B 45 9F 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BD3094  38 60 00 01 */	li r3, 1
/* 80BD3098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD309C  7C 08 03 A6 */	mtlr r0
/* 80BD30A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD30A4  4E 80 00 20 */	blr 
