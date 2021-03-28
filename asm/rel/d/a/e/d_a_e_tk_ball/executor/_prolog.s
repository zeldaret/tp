lbl_807BBF80:
/* 807BBF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BBF84  7C 08 02 A6 */	mflr r0
/* 807BBF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BBF8C  3C 60 80 7C */	lis r3, data_807BD564@ha
/* 807BBF90  38 63 D5 64 */	addi r3, r3, data_807BD564@l
/* 807BBF94  4B AA 71 B8 */	b ModuleConstructorsX
/* 807BBF98  4B AA 70 F0 */	b ModuleProlog
/* 807BBF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BBFA0  7C 08 03 A6 */	mtlr r0
/* 807BBFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 807BBFA8  4E 80 00 20 */	blr 
