lbl_807F7FF4:
/* 807F7FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7FF8  7C 08 02 A6 */	mflr r0
/* 807F7FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F8000  3C 80 80 80 */	lis r4, stringBase0@ha
/* 807F8004  38 84 81 F4 */	addi r4, r4, stringBase0@l
/* 807F8008  38 63 05 AC */	addi r3, r3, 0x5ac
/* 807F800C  4B 83 4F FC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807F8010  38 60 00 01 */	li r3, 1
/* 807F8014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F8018  7C 08 03 A6 */	mtlr r0
/* 807F801C  38 21 00 10 */	addi r1, r1, 0x10
/* 807F8020  4E 80 00 20 */	blr 
