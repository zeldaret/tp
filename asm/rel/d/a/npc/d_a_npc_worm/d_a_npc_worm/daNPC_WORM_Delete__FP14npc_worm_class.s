lbl_80B2EDD8:
/* 80B2EDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2EDDC  7C 08 02 A6 */	mflr r0
/* 80B2EDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2EDE4  3C 80 80 B3 */	lis r4, stringBase0@ha
/* 80B2EDE8  38 84 F1 24 */	addi r4, r4, stringBase0@l
/* 80B2EDEC  38 63 05 90 */	addi r3, r3, 0x590
/* 80B2EDF0  4B 4F E2 18 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B2EDF4  38 60 00 01 */	li r3, 1
/* 80B2EDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2EDFC  7C 08 03 A6 */	mtlr r0
/* 80B2EE00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2EE04  4E 80 00 20 */	blr 
