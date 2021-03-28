lbl_80BE3100:
/* 80BE3100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3104  7C 08 02 A6 */	mflr r0
/* 80BE3108  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE310C  3C 60 80 BE */	lis r3, data_80BE3880@ha
/* 80BE3110  38 63 38 80 */	addi r3, r3, data_80BE3880@l
/* 80BE3114  4B 68 00 38 */	b ModuleConstructorsX
/* 80BE3118  4B 67 FF 70 */	b ModuleProlog
/* 80BE311C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3120  7C 08 03 A6 */	mtlr r0
/* 80BE3124  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3128  4E 80 00 20 */	blr 
