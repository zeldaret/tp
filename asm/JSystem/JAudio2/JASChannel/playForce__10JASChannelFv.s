lbl_8029AA60:
/* 8029AA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029AA64  7C 08 02 A6 */	mflr r0
/* 8029AA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029AA6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029AA70  7C 7F 1B 78 */	mr r31, r3
/* 8029AA74  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 8029AA78  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8029AA7C  3C 80 80 2A */	lis r4, dspUpdateCallback__10JASChannelFUlPQ26JASDsp8TChannelPv@ha /* 0x8029AF78@ha */
/* 8029AA80  38 84 AF 78 */	addi r4, r4, dspUpdateCallback__10JASChannelFUlPQ26JASDsp8TChannelPv@l /* 0x8029AF78@l */
/* 8029AA84  7F E5 FB 78 */	mr r5, r31
/* 8029AA88  48 00 2A 35 */	bl allocForce__13JASDSPChannelFUcPFUlPQ26JASDsp8TChannelPv_lPv
/* 8029AA8C  28 03 00 00 */	cmplwi r3, 0
/* 8029AA90  40 82 00 18 */	bne lbl_8029AAA8
/* 8029AA94  7F E3 FB 78 */	mr r3, r31
/* 8029AA98  38 80 00 01 */	li r4, 1
/* 8029AA9C  4B FF FE 7D */	bl __dt__10JASChannelFv
/* 8029AAA0  38 60 00 00 */	li r3, 0
/* 8029AAA4  48 00 00 18 */	b lbl_8029AABC
lbl_8029AAA8:
/* 8029AAA8  90 7F 00 08 */	stw r3, 8(r31)
/* 8029AAAC  48 00 28 85 */	bl start__13JASDSPChannelFv
/* 8029AAB0  38 00 00 01 */	li r0, 1
/* 8029AAB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8029AAB8  38 60 00 01 */	li r3, 1
lbl_8029AABC:
/* 8029AABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029AAC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AAC4  7C 08 03 A6 */	mtlr r0
/* 8029AAC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AACC  4E 80 00 20 */	blr 
