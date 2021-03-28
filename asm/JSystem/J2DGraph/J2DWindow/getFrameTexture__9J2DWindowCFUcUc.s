lbl_802FBE60:
/* 802FBE60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FBE64  3C C0 80 3A */	lis r6, lit_3028@ha
/* 802FBE68  38 E6 1C 30 */	addi r7, r6, lit_3028@l
/* 802FBE6C  80 C7 00 00 */	lwz r6, 0(r7)
/* 802FBE70  80 07 00 04 */	lwz r0, 4(r7)
/* 802FBE74  90 C1 00 08 */	stw r6, 8(r1)
/* 802FBE78  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FBE7C  80 C7 00 08 */	lwz r6, 8(r7)
/* 802FBE80  80 07 00 0C */	lwz r0, 0xc(r7)
/* 802FBE84  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802FBE88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FBE8C  80 03 01 00 */	lwz r0, 0x100(r3)
/* 802FBE90  90 01 00 08 */	stw r0, 8(r1)
/* 802FBE94  80 03 01 04 */	lwz r0, 0x104(r3)
/* 802FBE98  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FBE9C  80 03 01 08 */	lwz r0, 0x108(r3)
/* 802FBEA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FBEA4  80 03 01 0C */	lwz r0, 0x10c(r3)
/* 802FBEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FBEAC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802FBEB0  28 00 00 04 */	cmplwi r0, 4
/* 802FBEB4  40 80 00 0C */	bge lbl_802FBEC0
/* 802FBEB8  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802FBEBC  41 82 00 0C */	beq lbl_802FBEC8
lbl_802FBEC0:
/* 802FBEC0  38 60 00 00 */	li r3, 0
/* 802FBEC4  48 00 00 10 */	b lbl_802FBED4
lbl_802FBEC8:
/* 802FBEC8  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 802FBECC  38 61 00 08 */	addi r3, r1, 8
/* 802FBED0  7C 63 00 2E */	lwzx r3, r3, r0
lbl_802FBED4:
/* 802FBED4  38 21 00 20 */	addi r1, r1, 0x20
/* 802FBED8  4E 80 00 20 */	blr 
