lbl_80C463C4:
/* 80C463C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C463C8  7C 08 02 A6 */	mflr r0
/* 80C463CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C463D0  28 03 00 00 */	cmplwi r3, 0
/* 80C463D4  41 82 00 08 */	beq lbl_80C463DC
/* 80C463D8  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C463DC:
/* 80C463DC  3C 80 80 C4 */	lis r4, l_arcName@ha
/* 80C463E0  38 84 65 8C */	addi r4, r4, l_arcName@l
/* 80C463E4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C463E8  4B 3E 6C 20 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C463EC  38 60 00 01 */	li r3, 1
/* 80C463F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C463F4  7C 08 03 A6 */	mtlr r0
/* 80C463F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C463FC  4E 80 00 20 */	blr 
