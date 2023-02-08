lbl_80CDCAC4:
/* 80CDCAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCAC8  7C 08 02 A6 */	mflr r0
/* 80CDCACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCAD0  7C 64 1B 78 */	mr r4, r3
/* 80CDCAD4  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80CDCAD8  88 04 05 E8 */	lbz r0, 0x5e8(r4)
/* 80CDCADC  54 00 10 3A */	slwi r0, r0, 2
/* 80CDCAE0  3C 80 80 CE */	lis r4, l_arcName@ha /* 0x80CDCCE4@ha */
/* 80CDCAE4  38 84 CC E4 */	addi r4, r4, l_arcName@l /* 0x80CDCCE4@l */
/* 80CDCAE8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CDCAEC  4B 35 05 1D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CDCAF0  38 60 00 01 */	li r3, 1
/* 80CDCAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCAF8  7C 08 03 A6 */	mtlr r0
/* 80CDCAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDCB00  4E 80 00 20 */	blr 
