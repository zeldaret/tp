lbl_806FE3E0:
/* 806FE3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FE3E4  7C 08 02 A6 */	mflr r0
/* 806FE3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FE3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FE3F0  7C 7F 1B 78 */	mr r31, r3
/* 806FE3F4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806FE3F8  3C 80 80 70 */	lis r4, stringBase0@ha
/* 806FE3FC  38 84 F6 B8 */	addi r4, r4, stringBase0@l
/* 806FE400  4B 92 EC 08 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806FE404  88 1F 13 AC */	lbz r0, 0x13ac(r31)
/* 806FE408  28 00 00 00 */	cmplwi r0, 0
/* 806FE40C  41 82 00 10 */	beq lbl_806FE41C
/* 806FE410  38 00 00 00 */	li r0, 0
/* 806FE414  3C 60 80 70 */	lis r3, data_806FF880@ha
/* 806FE418  98 03 F8 80 */	stb r0, data_806FF880@l(r3)
lbl_806FE41C:
/* 806FE41C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806FE420  28 00 00 00 */	cmplwi r0, 0
/* 806FE424  41 82 00 24 */	beq lbl_806FE448
/* 806FE428  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FE42C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806FE430  81 8C 00 08 */	lwz r12, 8(r12)
/* 806FE434  7D 89 03 A6 */	mtctr r12
/* 806FE438  4E 80 04 21 */	bctrl 
/* 806FE43C  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 806FE440  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 806FE444  B0 1F 05 8E */	sth r0, 0x58e(r31)
lbl_806FE448:
/* 806FE448  38 60 00 01 */	li r3, 1
/* 806FE44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FE450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FE454  7C 08 03 A6 */	mtlr r0
/* 806FE458  38 21 00 10 */	addi r1, r1, 0x10
/* 806FE45C  4E 80 00 20 */	blr 
