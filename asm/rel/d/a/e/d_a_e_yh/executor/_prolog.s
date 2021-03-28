lbl_807FD3E0:
/* 807FD3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FD3E4  7C 08 02 A6 */	mflr r0
/* 807FD3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FD3EC  3C 60 80 80 */	lis r3, data_80804268@ha
/* 807FD3F0  38 63 42 68 */	addi r3, r3, data_80804268@l
/* 807FD3F4  4B A6 5D 58 */	b ModuleConstructorsX
/* 807FD3F8  4B A6 5C 90 */	b ModuleProlog
/* 807FD3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FD400  7C 08 03 A6 */	mtlr r0
/* 807FD404  38 21 00 10 */	addi r1, r1, 0x10
/* 807FD408  4E 80 00 20 */	blr 
