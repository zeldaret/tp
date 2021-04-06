lbl_80C826A0:
/* 80C826A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C826A4  7C 08 02 A6 */	mflr r0
/* 80C826A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C826AC  28 03 00 00 */	cmplwi r3, 0
/* 80C826B0  41 82 00 08 */	beq lbl_80C826B8
/* 80C826B4  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C826B8:
/* 80C826B8  3C 80 80 C8 */	lis r4, l_arcName@ha /* 0x80C82BB0@ha */
/* 80C826BC  38 84 2B B0 */	addi r4, r4, l_arcName@l /* 0x80C82BB0@l */
/* 80C826C0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C826C4  4B 3A A9 45 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C826C8  38 60 00 01 */	li r3, 1
/* 80C826CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C826D0  7C 08 03 A6 */	mtlr r0
/* 80C826D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C826D8  4E 80 00 20 */	blr 
