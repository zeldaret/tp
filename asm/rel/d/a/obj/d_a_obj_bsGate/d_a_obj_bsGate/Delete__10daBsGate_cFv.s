lbl_80BC3038:
/* 80BC3038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC303C  7C 08 02 A6 */	mflr r0
/* 80BC3040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC3044  3C 80 80 BC */	lis r4, stringBase0@ha
/* 80BC3048  38 84 31 C4 */	addi r4, r4, stringBase0@l
/* 80BC304C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80BC3050  4B 46 9F B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC3054  38 60 00 01 */	li r3, 1
/* 80BC3058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC305C  7C 08 03 A6 */	mtlr r0
/* 80BC3060  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3064  4E 80 00 20 */	blr 
