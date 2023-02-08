lbl_80333F60:
/* 80333F60  80 E4 00 04 */	lwz r7, 4(r4)
/* 80333F64  80 C4 00 08 */	lwz r6, 8(r4)
/* 80333F68  54 A0 08 3C */	slwi r0, r5, 1
/* 80333F6C  7C 06 02 2E */	lhzx r0, r6, r0
/* 80333F70  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333F74  7C A7 02 14 */	add r5, r7, r0
/* 80333F78  A0 05 01 34 */	lhz r0, 0x134(r5)
/* 80333F7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333F80  41 82 00 18 */	beq lbl_80333F98
/* 80333F84  80 84 00 58 */	lwz r4, 0x58(r4)
/* 80333F88  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80333F8C  7C 04 00 2E */	lwzx r0, r4, r0
/* 80333F90  90 03 00 00 */	stw r0, 0(r3)
/* 80333F94  4E 80 00 20 */	blr 
lbl_80333F98:
/* 80333F98  80 02 C9 EC */	lwz r0, j3dDefaultBlendInfo(r2)
/* 80333F9C  90 03 00 00 */	stw r0, 0(r3)
/* 80333FA0  4E 80 00 20 */	blr 
