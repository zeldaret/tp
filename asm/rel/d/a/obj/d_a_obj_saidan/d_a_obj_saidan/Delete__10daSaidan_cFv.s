lbl_80CC43BC:
/* 80CC43BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC43C0  7C 08 02 A6 */	mflr r0
/* 80CC43C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC43C8  3C 80 80 CC */	lis r4, stringBase0@ha
/* 80CC43CC  38 84 45 40 */	addi r4, r4, stringBase0@l
/* 80CC43D0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80CC43D4  4B 36 8C 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC43D8  38 60 00 01 */	li r3, 1
/* 80CC43DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC43E0  7C 08 03 A6 */	mtlr r0
/* 80CC43E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC43E8  4E 80 00 20 */	blr 
