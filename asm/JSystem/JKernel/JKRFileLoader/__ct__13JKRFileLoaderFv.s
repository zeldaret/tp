lbl_802D40F0:
/* 802D40F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D40F4  7C 08 02 A6 */	mflr r0
/* 802D40F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D40FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4100  7C 7F 1B 78 */	mr r31, r3
/* 802D4104  4B FF D3 79 */	bl __ct__11JKRDisposerFv
/* 802D4108  3C 60 80 3D */	lis r3, __vt__13JKRFileLoader@ha
/* 802D410C  38 03 C1 C8 */	addi r0, r3, __vt__13JKRFileLoader@l
/* 802D4110  90 1F 00 00 */	stw r0, 0(r31)
/* 802D4114  38 7F 00 18 */	addi r3, r31, 0x18
/* 802D4118  7F E4 FB 78 */	mr r4, r31
/* 802D411C  48 00 7C E1 */	bl __ct__10JSUPtrLinkFPv
/* 802D4120  38 00 00 00 */	li r0, 0
/* 802D4124  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802D4128  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802D412C  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802D4130  7F E3 FB 78 */	mr r3, r31
/* 802D4134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D413C  7C 08 03 A6 */	mtlr r0
/* 802D4140  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4144  4E 80 00 20 */	blr 
