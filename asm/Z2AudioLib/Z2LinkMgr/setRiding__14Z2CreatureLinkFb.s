lbl_802C3A6C:
/* 802C3A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3A70  7C 08 02 A6 */	mflr r0
/* 802C3A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3A7C  93 C1 00 08 */	stw r30, 8(r1)
/* 802C3A80  7C 7E 1B 78 */	mr r30, r3
/* 802C3A84  7C 9F 23 78 */	mr r31, r4
/* 802C3A88  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C3A8C  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 802C3A90  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802C3A94  7C 03 00 40 */	cmplw r3, r0
/* 802C3A98  41 82 00 3C */	beq lbl_802C3AD4
/* 802C3A9C  28 00 00 00 */	cmplwi r0, 0
/* 802C3AA0  41 82 00 18 */	beq lbl_802C3AB8
/* 802C3AA4  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802C3AA8  C0 22 C2 C0 */	lfs f1, lit_3743(r2)
/* 802C3AAC  38 80 00 00 */	li r4, 0
/* 802C3AB0  4B FF 9E 5D */	bl setTargetVolume__10Z2AudienceFfi
/* 802C3AB4  48 00 00 14 */	b lbl_802C3AC8
lbl_802C3AB8:
/* 802C3AB8  80 6D 85 C4 */	lwz r3, __OSReport_disable-0x54(r13)
/* 802C3ABC  C0 22 C2 A0 */	lfs f1, lit_3723(r2)
/* 802C3AC0  38 80 00 00 */	li r4, 0
/* 802C3AC4  4B FF 9E 49 */	bl setTargetVolume__10Z2AudienceFfi
lbl_802C3AC8:
/* 802C3AC8  88 1E 00 CB */	lbz r0, 0xcb(r30)
/* 802C3ACC  53 E0 0F BC */	rlwimi r0, r31, 1, 0x1e, 0x1e
/* 802C3AD0  98 1E 00 CB */	stb r0, 0xcb(r30)
lbl_802C3AD4:
/* 802C3AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3AD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C3ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3AE0  7C 08 03 A6 */	mtlr r0
/* 802C3AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3AE8  4E 80 00 20 */	blr 
