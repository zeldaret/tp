lbl_802F3A1C:
/* 802F3A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3A20  80 E2 D1 B0 */	lwz r7, lit_2018(r2)
/* 802F3A24  80 02 D1 B4 */	lwz r0, lit_2018+0x4(r2)
/* 802F3A28  90 E1 00 08 */	stw r7, 8(r1)
/* 802F3A2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F3A30  A9 21 00 0A */	lha r9, 0xa(r1)
/* 802F3A34  A9 41 00 0C */	lha r10, 0xc(r1)
/* 802F3A38  A9 61 00 0E */	lha r11, 0xe(r1)
/* 802F3A3C  81 04 00 04 */	lwz r8, 4(r4)
/* 802F3A40  80 E4 00 08 */	lwz r7, 8(r4)
/* 802F3A44  54 A0 08 3C */	slwi r0, r5, 1
/* 802F3A48  7C 07 02 2E */	lhzx r0, r7, r0
/* 802F3A4C  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3A50  7C A8 02 14 */	add r5, r8, r0
/* 802F3A54  54 C0 08 3C */	slwi r0, r6, 1
/* 802F3A58  7C A5 02 14 */	add r5, r5, r0
/* 802F3A5C  A0 05 00 92 */	lhz r0, 0x92(r5)
/* 802F3A60  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3A64  41 82 00 34 */	beq lbl_802F3A98
/* 802F3A68  80 84 00 38 */	lwz r4, 0x38(r4)
/* 802F3A6C  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 802F3A70  7C 84 02 14 */	add r4, r4, r0
/* 802F3A74  A8 04 00 00 */	lha r0, 0(r4)
/* 802F3A78  B0 03 00 00 */	sth r0, 0(r3)
/* 802F3A7C  A8 04 00 02 */	lha r0, 2(r4)
/* 802F3A80  B0 03 00 02 */	sth r0, 2(r3)
/* 802F3A84  A8 04 00 04 */	lha r0, 4(r4)
/* 802F3A88  B0 03 00 04 */	sth r0, 4(r3)
/* 802F3A8C  A8 04 00 06 */	lha r0, 6(r4)
/* 802F3A90  B0 03 00 06 */	sth r0, 6(r3)
/* 802F3A94  48 00 00 18 */	b lbl_802F3AAC
lbl_802F3A98:
/* 802F3A98  A8 01 00 08 */	lha r0, 8(r1)
/* 802F3A9C  B0 03 00 00 */	sth r0, 0(r3)
/* 802F3AA0  B1 23 00 02 */	sth r9, 2(r3)
/* 802F3AA4  B1 43 00 04 */	sth r10, 4(r3)
/* 802F3AA8  B1 63 00 06 */	sth r11, 6(r3)
lbl_802F3AAC:
/* 802F3AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3AB0  4E 80 00 20 */	blr 
