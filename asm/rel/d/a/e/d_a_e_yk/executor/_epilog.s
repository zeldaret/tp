lbl_8080476C:
/* 8080476C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80804770  7C 08 02 A6 */	mflr r0
/* 80804774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80804778  4B A5 E9 14 */	b ModuleEpilog
/* 8080477C  3C 60 80 80 */	lis r3, __destroy_global_chain_reference@ha
/* 80804780  38 63 7C 90 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80804784  4B A5 EA 0C */	b ModuleDestructorsX
/* 80804788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8080478C  7C 08 03 A6 */	mtlr r0
/* 80804790  38 21 00 10 */	addi r1, r1, 0x10
/* 80804794  4E 80 00 20 */	blr 
