lbl_80AD90E0:
/* 80AD90E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD90E4  7C 08 02 A6 */	mflr r0
/* 80AD90E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD90EC  38 80 FF FF */	li r4, -1
/* 80AD90F0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AD90F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AD90F8  7D 89 03 A6 */	mtctr r12
/* 80AD90FC  4E 80 04 21 */	bctrl 
/* 80AD9100  38 60 00 01 */	li r3, 1
/* 80AD9104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD9108  7C 08 03 A6 */	mtlr r0
/* 80AD910C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD9110  4E 80 00 20 */	blr 
