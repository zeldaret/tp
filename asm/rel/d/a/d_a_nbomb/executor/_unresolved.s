lbl_804C6D38:
/* 804C6D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C6D3C  7C 08 02 A6 */	mflr r0
/* 804C6D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C6D44  4B D9 C3 4C */	b ModuleUnresolved
/* 804C6D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C6D4C  7C 08 03 A6 */	mtlr r0
/* 804C6D50  38 21 00 10 */	addi r1, r1, 0x10
/* 804C6D54  4E 80 00 20 */	blr 
