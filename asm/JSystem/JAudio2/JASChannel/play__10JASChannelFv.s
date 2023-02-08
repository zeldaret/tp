lbl_8029A9F0:
/* 8029A9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A9F4  7C 08 02 A6 */	mflr r0
/* 8029A9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A9FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029AA00  7C 7F 1B 78 */	mr r31, r3
/* 8029AA04  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 8029AA08  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8029AA0C  3C 80 80 2A */	lis r4, dspUpdateCallback__10JASChannelFUlPQ26JASDsp8TChannelPv@ha /* 0x8029AF78@ha */
/* 8029AA10  38 84 AF 78 */	addi r4, r4, dspUpdateCallback__10JASChannelFUlPQ26JASDsp8TChannelPv@l /* 0x8029AF78@l */
/* 8029AA14  7F E5 FB 78 */	mr r5, r31
/* 8029AA18  48 00 2A 35 */	bl alloc__13JASDSPChannelFUcPFUlPQ26JASDsp8TChannelPv_lPv
/* 8029AA1C  28 03 00 00 */	cmplwi r3, 0
/* 8029AA20  40 82 00 18 */	bne lbl_8029AA38
/* 8029AA24  7F E3 FB 78 */	mr r3, r31
/* 8029AA28  38 80 00 01 */	li r4, 1
/* 8029AA2C  4B FF FE ED */	bl __dt__10JASChannelFv
/* 8029AA30  38 60 00 00 */	li r3, 0
/* 8029AA34  48 00 00 18 */	b lbl_8029AA4C
lbl_8029AA38:
/* 8029AA38  90 7F 00 08 */	stw r3, 8(r31)
/* 8029AA3C  48 00 28 F5 */	bl start__13JASDSPChannelFv
/* 8029AA40  38 00 00 01 */	li r0, 1
/* 8029AA44  90 1F 00 00 */	stw r0, 0(r31)
/* 8029AA48  38 60 00 01 */	li r3, 1
lbl_8029AA4C:
/* 8029AA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029AA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AA54  7C 08 03 A6 */	mtlr r0
/* 8029AA58  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AA5C  4E 80 00 20 */	blr 
