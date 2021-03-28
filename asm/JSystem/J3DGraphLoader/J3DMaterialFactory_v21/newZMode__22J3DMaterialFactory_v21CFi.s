lbl_80333FA4:
/* 80333FA4  80 E4 00 04 */	lwz r7, 4(r4)
/* 80333FA8  80 C4 00 08 */	lwz r6, 8(r4)
/* 80333FAC  54 A0 08 3C */	slwi r0, r5, 1
/* 80333FB0  7C 06 02 2E */	lhzx r0, r6, r0
/* 80333FB4  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333FB8  7C A7 02 14 */	add r5, r7, r0
/* 80333FBC  88 05 00 06 */	lbz r0, 6(r5)
/* 80333FC0  28 00 00 FF */	cmplwi r0, 0xff
/* 80333FC4  41 82 00 34 */	beq lbl_80333FF8
/* 80333FC8  80 84 00 5C */	lwz r4, 0x5c(r4)
/* 80333FCC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80333FD0  7C 84 02 14 */	add r4, r4, r0
/* 80333FD4  88 C4 00 00 */	lbz r6, 0(r4)
/* 80333FD8  88 A4 00 02 */	lbz r5, 2(r4)
/* 80333FDC  88 04 00 01 */	lbz r0, 1(r4)
/* 80333FE0  54 04 0D FC */	rlwinm r4, r0, 1, 0x17, 0x1e
/* 80333FE4  54 C0 20 36 */	slwi r0, r6, 4
/* 80333FE8  7C 00 2A 14 */	add r0, r0, r5
/* 80333FEC  7C 04 02 14 */	add r0, r4, r0
/* 80333FF0  B0 03 00 00 */	sth r0, 0(r3)
/* 80333FF4  4E 80 00 20 */	blr 
lbl_80333FF8:
/* 80333FF8  A0 02 C9 FC */	lhz r0, j3dDefaultZModeID(r2)
/* 80333FFC  B0 03 00 00 */	sth r0, 0(r3)
/* 80334000  4E 80 00 20 */	blr 
