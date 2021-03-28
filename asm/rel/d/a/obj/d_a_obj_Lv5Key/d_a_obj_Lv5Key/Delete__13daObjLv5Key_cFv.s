lbl_80B9C500:
/* 80B9C500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C504  7C 08 02 A6 */	mflr r0
/* 80B9C508  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C50C  3C 80 80 BA */	lis r4, l_arcName@ha
/* 80B9C510  38 84 C9 B4 */	addi r4, r4, l_arcName@l
/* 80B9C514  80 84 00 00 */	lwz r4, 0(r4)
/* 80B9C518  38 63 05 B0 */	addi r3, r3, 0x5b0
/* 80B9C51C  4B 49 0A EC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B9C520  38 60 00 01 */	li r3, 1
/* 80B9C524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C528  7C 08 03 A6 */	mtlr r0
/* 80B9C52C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C530  4E 80 00 20 */	blr 
