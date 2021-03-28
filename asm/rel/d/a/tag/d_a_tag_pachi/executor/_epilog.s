lbl_80D5D3EC:
/* 80D5D3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D3F0  7C 08 02 A6 */	mflr r0
/* 80D5D3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D3F8  4B 50 5C 94 */	b ModuleEpilog
/* 80D5D3FC  3C 60 80 D6 */	lis r3, data_80D5D910@ha
/* 80D5D400  38 63 D9 10 */	addi r3, r3, data_80D5D910@l
/* 80D5D404  4B 50 5D 8C */	b ModuleDestructorsX
/* 80D5D408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D40C  7C 08 03 A6 */	mtlr r0
/* 80D5D410  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D414  4E 80 00 20 */	blr 
