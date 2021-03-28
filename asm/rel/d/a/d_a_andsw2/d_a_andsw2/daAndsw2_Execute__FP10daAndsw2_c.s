lbl_804D6A3C:
/* 804D6A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6A40  7C 08 02 A6 */	mflr r0
/* 804D6A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6A48  88 03 05 6C */	lbz r0, 0x56c(r3)
/* 804D6A4C  54 00 10 3A */	slwi r0, r0, 2
/* 804D6A50  3C 80 80 4D */	lis r4, data_804D6AE4@ha
/* 804D6A54  38 84 6A E4 */	addi r4, r4, data_804D6AE4@l
/* 804D6A58  7D 84 00 2E */	lwzx r12, r4, r0
/* 804D6A5C  7D 89 03 A6 */	mtctr r12
/* 804D6A60  4E 80 04 21 */	bctrl 
/* 804D6A64  38 60 00 01 */	li r3, 1
/* 804D6A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6A6C  7C 08 03 A6 */	mtlr r0
/* 804D6A70  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6A74  4E 80 00 20 */	blr 
