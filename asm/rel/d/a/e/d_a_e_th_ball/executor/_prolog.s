lbl_807B48A0:
/* 807B48A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B48A4  7C 08 02 A6 */	mflr r0
/* 807B48A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B48AC  3C 60 80 7B */	lis r3, data_807B7EB0@ha
/* 807B48B0  38 63 7E B0 */	addi r3, r3, data_807B7EB0@l
/* 807B48B4  4B AA E8 98 */	b ModuleConstructorsX
/* 807B48B8  4B AA E7 D0 */	b ModuleProlog
/* 807B48BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B48C0  7C 08 03 A6 */	mtlr r0
/* 807B48C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B48C8  4E 80 00 20 */	blr 
