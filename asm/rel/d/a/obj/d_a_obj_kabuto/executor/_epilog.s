lbl_80C2ADAC:
/* 80C2ADAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2ADB0  7C 08 02 A6 */	mflr r0
/* 80C2ADB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2ADB8  4B 63 82 D4 */	b ModuleEpilog
/* 80C2ADBC  3C 60 80 C3 */	lis r3, __destroy_global_chain_reference@ha
/* 80C2ADC0  38 63 E1 04 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80C2ADC4  4B 63 83 CC */	b ModuleDestructorsX
/* 80C2ADC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2ADCC  7C 08 03 A6 */	mtlr r0
/* 80C2ADD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2ADD4  4E 80 00 20 */	blr 
