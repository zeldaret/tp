lbl_804D6B60:
/* 804D6B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6B64  7C 08 02 A6 */	mflr r0
/* 804D6B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6B6C  3C 60 80 4E */	lis r3, data_804D9E50@ha
/* 804D6B70  38 63 9E 50 */	addi r3, r3, data_804D9E50@l
/* 804D6B74  4B D8 C5 D8 */	b ModuleConstructorsX
/* 804D6B78  4B D8 C5 10 */	b ModuleProlog
/* 804D6B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6B80  7C 08 03 A6 */	mtlr r0
/* 804D6B84  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6B88  4E 80 00 20 */	blr 
