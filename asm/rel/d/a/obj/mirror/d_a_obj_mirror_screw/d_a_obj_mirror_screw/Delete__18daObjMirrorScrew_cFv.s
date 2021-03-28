lbl_80C996AC:
/* 80C996AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C996B0  7C 08 02 A6 */	mflr r0
/* 80C996B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C996B8  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80C996BC  38 84 97 C0 */	addi r4, r4, l_arcName@l
/* 80C996C0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C996C4  38 63 05 A4 */	addi r3, r3, 0x5a4
/* 80C996C8  4B 39 39 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C996CC  38 60 00 01 */	li r3, 1
/* 80C996D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C996D4  7C 08 03 A6 */	mtlr r0
/* 80C996D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C996DC  4E 80 00 20 */	blr 
