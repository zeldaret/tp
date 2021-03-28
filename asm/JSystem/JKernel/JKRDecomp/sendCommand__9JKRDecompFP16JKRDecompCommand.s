lbl_802DB8D0:
/* 802DB8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB8D4  7C 08 02 A6 */	mflr r0
/* 802DB8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB8DC  7C 64 1B 78 */	mr r4, r3
/* 802DB8E0  3C 60 80 3D */	lis r3, sMessageQueue__9JKRDecomp@ha
/* 802DB8E4  38 63 C4 80 */	addi r3, r3, sMessageQueue__9JKRDecomp@l
/* 802DB8E8  38 A0 00 00 */	li r5, 0
/* 802DB8EC  48 06 31 09 */	bl OSSendMessage
/* 802DB8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB8F4  7C 08 03 A6 */	mtlr r0
/* 802DB8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB8FC  4E 80 00 20 */	blr 
