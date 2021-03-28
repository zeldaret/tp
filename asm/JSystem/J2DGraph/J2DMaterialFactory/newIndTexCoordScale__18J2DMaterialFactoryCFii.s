lbl_802F3F78:
/* 802F3F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3F7C  88 02 C7 90 */	lbz r0, j2dDefaultIndTexCoordScaleInfo(r2)
/* 802F3F80  98 01 00 08 */	stb r0, 8(r1)
/* 802F3F84  38 E2 C7 90 */	la r7, j2dDefaultIndTexCoordScaleInfo(r2) /* 80456190-_SDA2_BASE_ */
/* 802F3F88  88 07 00 01 */	lbz r0, 1(r7)
/* 802F3F8C  98 01 00 09 */	stb r0, 9(r1)
/* 802F3F90  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802F3F94  28 04 00 00 */	cmplwi r4, 0
/* 802F3F98  41 82 00 38 */	beq lbl_802F3FD0
/* 802F3F9C  1C 05 01 28 */	mulli r0, r5, 0x128
/* 802F3FA0  7C A4 02 14 */	add r5, r4, r0
/* 802F3FA4  88 05 00 00 */	lbz r0, 0(r5)
/* 802F3FA8  28 00 00 01 */	cmplwi r0, 1
/* 802F3FAC  40 82 00 24 */	bne lbl_802F3FD0
/* 802F3FB0  54 C4 08 3C */	slwi r4, r6, 1
/* 802F3FB4  38 84 00 60 */	addi r4, r4, 0x60
/* 802F3FB8  7C 85 22 14 */	add r4, r5, r4
/* 802F3FBC  88 04 00 00 */	lbz r0, 0(r4)
/* 802F3FC0  98 03 00 00 */	stb r0, 0(r3)
/* 802F3FC4  88 04 00 01 */	lbz r0, 1(r4)
/* 802F3FC8  98 03 00 01 */	stb r0, 1(r3)
/* 802F3FCC  48 00 00 0C */	b lbl_802F3FD8
lbl_802F3FD0:
/* 802F3FD0  A0 01 00 08 */	lhz r0, 8(r1)
/* 802F3FD4  B0 03 00 00 */	sth r0, 0(r3)
lbl_802F3FD8:
/* 802F3FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3FDC  4E 80 00 20 */	blr 
