lbl_809F2FEC:
/* 809F2FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F2FF0  7C 08 02 A6 */	mflr r0
/* 809F2FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F2FF8  4B 87 00 94 */	b ModuleEpilog
/* 809F2FFC  3C 60 80 A0 */	lis r3, __destroy_global_chain_reference@ha
/* 809F3000  38 63 84 E8 */	addi r3, r3, __destroy_global_chain_reference@l
/* 809F3004  4B 87 01 8C */	b ModuleDestructorsX
/* 809F3008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F300C  7C 08 03 A6 */	mtlr r0
/* 809F3010  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3014  4E 80 00 20 */	blr 
