lbl_80C186A4:
/* 80C186A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C186A8  7C 08 02 A6 */	mflr r0
/* 80C186AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C186B0  28 03 00 00 */	cmplwi r3, 0
/* 80C186B4  41 82 00 08 */	beq lbl_80C186BC
/* 80C186B8  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C186BC:
/* 80C186BC  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C186C0  38 84 8A A8 */	addi r4, r4, l_arcName@l
/* 80C186C4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C186C8  4B 41 49 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C186CC  38 60 00 01 */	li r3, 1
/* 80C186D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C186D4  7C 08 03 A6 */	mtlr r0
/* 80C186D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C186DC  4E 80 00 20 */	blr 
