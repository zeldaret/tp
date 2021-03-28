lbl_804CCF5C:
/* 804CCF5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CCF60  7C 08 02 A6 */	mflr r0
/* 804CCF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCF68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CCF6C  7C 7F 1B 78 */	mr r31, r3
/* 804CCF70  38 7F 09 74 */	addi r3, r31, 0x974
/* 804CCF74  81 9F 09 74 */	lwz r12, 0x974(r31)
/* 804CCF78  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804CCF7C  7D 89 03 A6 */	mtctr r12
/* 804CCF80  4E 80 04 21 */	bctrl 
/* 804CCF84  38 7F 09 88 */	addi r3, r31, 0x988
/* 804CCF88  81 9F 09 88 */	lwz r12, 0x988(r31)
/* 804CCF8C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804CCF90  7D 89 03 A6 */	mtctr r12
/* 804CCF94  4E 80 04 21 */	bctrl 
/* 804CCF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CCF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CCFA0  7C 08 03 A6 */	mtlr r0
/* 804CCFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804CCFA8  4E 80 00 20 */	blr 
