lbl_80BCCAEC:
/* 80BCCAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCAF0  7C 08 02 A6 */	mflr r0
/* 80BCCAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCAF8  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCCAFC  38 84 CB DC */	addi r4, r4, l_arcName@l
/* 80BCCB00  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCCB04  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BCCB08  4B 46 05 00 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BCCB0C  38 60 00 01 */	li r3, 1
/* 80BCCB10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCB14  7C 08 03 A6 */	mtlr r0
/* 80BCCB18  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCB1C  4E 80 00 20 */	blr 
