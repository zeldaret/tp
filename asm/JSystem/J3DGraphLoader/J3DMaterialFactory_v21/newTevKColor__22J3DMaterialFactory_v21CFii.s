lbl_80333C74:
/* 80333C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80333C78  81 22 CA BC */	lwz r9, lit_1317(r2)
/* 80333C7C  91 21 00 08 */	stw r9, 8(r1)
/* 80333C80  91 21 00 0C */	stw r9, 0xc(r1)
/* 80333C84  81 04 00 04 */	lwz r8, 4(r4)
/* 80333C88  80 E4 00 08 */	lwz r7, 8(r4)
/* 80333C8C  54 A0 08 3C */	slwi r0, r5, 1
/* 80333C90  7C 07 02 2E */	lhzx r0, r7, r0
/* 80333C94  1C 00 01 38 */	mulli r0, r0, 0x138
/* 80333C98  7C A8 02 14 */	add r5, r8, r0
/* 80333C9C  54 C0 08 3C */	slwi r0, r6, 1
/* 80333CA0  7C A5 02 14 */	add r5, r5, r0
/* 80333CA4  A0 05 00 80 */	lhz r0, 0x80(r5)
/* 80333CA8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80333CAC  41 82 00 18 */	beq lbl_80333CC4
/* 80333CB0  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 80333CB4  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80333CB8  7C 04 00 2E */	lwzx r0, r4, r0
/* 80333CBC  90 03 00 00 */	stw r0, 0(r3)
/* 80333CC0  48 00 00 08 */	b lbl_80333CC8
lbl_80333CC4:
/* 80333CC4  91 23 00 00 */	stw r9, 0(r3)
lbl_80333CC8:
/* 80333CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80333CCC  4E 80 00 20 */	blr 
