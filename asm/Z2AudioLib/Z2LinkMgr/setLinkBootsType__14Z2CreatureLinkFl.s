lbl_802C32F0:
/* 802C32F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C32F4  7C 08 02 A6 */	mflr r0
/* 802C32F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C32FC  98 83 00 C4 */	stb r4, 0xc4(r3)
/* 802C3300  80 8D 86 00 */	lwz r4, data_80450B80(r13)
/* 802C3304  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802C3308  28 00 00 00 */	cmplwi r0, 0
/* 802C330C  41 82 00 20 */	beq lbl_802C332C
/* 802C3310  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002005E@ha */
/* 802C3314  38 04 00 5E */	addi r0, r4, 0x005E /* 0x0002005E@l */
/* 802C3318  90 01 00 08 */	stw r0, 8(r1)
/* 802C331C  38 81 00 08 */	addi r4, r1, 8
/* 802C3320  38 A0 00 00 */	li r5, 0
/* 802C3324  38 C0 FF FF */	li r6, -1
/* 802C3328  48 00 08 AD */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C332C:
/* 802C332C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3330  7C 08 03 A6 */	mtlr r0
/* 802C3334  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3338  4E 80 00 20 */	blr 
