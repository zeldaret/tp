lbl_8068DE70:
/* 8068DE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068DE74  7C 08 02 A6 */	mflr r0
/* 8068DE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068DE7C  3C 80 80 69 */	lis r4, stringBase0@ha
/* 8068DE80  38 84 DF E0 */	addi r4, r4, stringBase0@l
/* 8068DE84  38 63 05 AC */	addi r3, r3, 0x5ac
/* 8068DE88  4B 99 F1 80 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8068DE8C  38 60 00 01 */	li r3, 1
/* 8068DE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068DE94  7C 08 03 A6 */	mtlr r0
/* 8068DE98  38 21 00 10 */	addi r1, r1, 0x10
/* 8068DE9C  4E 80 00 20 */	blr 
