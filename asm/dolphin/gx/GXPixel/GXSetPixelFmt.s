lbl_8035FD04:
/* 8035FD04  3C A0 80 3D */	lis r5, p2f@ha
/* 8035FD08  80 E2 CB 80 */	lwz r7, __GXData(r2)
/* 8035FD0C  54 66 10 3A */	slwi r6, r3, 2
/* 8035FD10  38 05 28 38 */	addi r0, r5, p2f@l
/* 8035FD14  80 A7 01 DC */	lwz r5, 0x1dc(r7)
/* 8035FD18  7C C0 32 14 */	add r6, r0, r6
/* 8035FD1C  80 06 00 00 */	lwz r0, 0(r6)
/* 8035FD20  39 05 00 00 */	addi r8, r5, 0
/* 8035FD24  50 05 07 7E */	rlwimi r5, r0, 0, 0x1d, 0x1f
/* 8035FD28  90 A7 01 DC */	stw r5, 0x1dc(r7)
/* 8035FD2C  80 07 01 DC */	lwz r0, 0x1dc(r7)
/* 8035FD30  50 80 1E B8 */	rlwimi r0, r4, 3, 0x1a, 0x1c
/* 8035FD34  90 07 01 DC */	stw r0, 0x1dc(r7)
/* 8035FD38  80 A7 01 DC */	lwz r5, 0x1dc(r7)
/* 8035FD3C  7C 08 28 40 */	cmplw r8, r5
/* 8035FD40  41 82 00 44 */	beq lbl_8035FD84
/* 8035FD44  38 00 00 61 */	li r0, 0x61
/* 8035FD48  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035FD4C  98 04 80 00 */	stb r0, 0x8000(r4)
/* 8035FD50  2C 03 00 02 */	cmpwi r3, 2
/* 8035FD54  90 A4 80 00 */	stw r5, -0x8000(r4)
/* 8035FD58  40 82 00 0C */	bne lbl_8035FD64
/* 8035FD5C  38 00 00 01 */	li r0, 1
/* 8035FD60  48 00 00 08 */	b lbl_8035FD68
lbl_8035FD64:
/* 8035FD64  38 00 00 00 */	li r0, 0
lbl_8035FD68:
/* 8035FD68  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035FD6C  80 85 02 04 */	lwz r4, 0x204(r5)
/* 8035FD70  50 04 4D AC */	rlwimi r4, r0, 9, 0x16, 0x16
/* 8035FD74  90 85 02 04 */	stw r4, 0x204(r5)
/* 8035FD78  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 8035FD7C  60 00 00 04 */	ori r0, r0, 4
/* 8035FD80  90 05 05 AC */	stw r0, 0x5ac(r5)
lbl_8035FD84:
/* 8035FD84  80 06 00 00 */	lwz r0, 0(r6)
/* 8035FD88  28 00 00 04 */	cmplwi r0, 4
/* 8035FD8C  40 82 00 3C */	bne lbl_8035FDC8
/* 8035FD90  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035FD94  38 03 FF FC */	addi r0, r3, -4
/* 8035FD98  38 80 00 42 */	li r4, 0x42
/* 8035FD9C  80 66 01 D4 */	lwz r3, 0x1d4(r6)
/* 8035FDA0  50 03 4D 6C */	rlwimi r3, r0, 9, 0x15, 0x16
/* 8035FDA4  38 00 00 61 */	li r0, 0x61
/* 8035FDA8  90 66 01 D4 */	stw r3, 0x1d4(r6)
/* 8035FDAC  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035FDB0  80 A6 01 D4 */	lwz r5, 0x1d4(r6)
/* 8035FDB4  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 8035FDB8  90 A6 01 D4 */	stw r5, 0x1d4(r6)
/* 8035FDBC  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035FDC0  80 06 01 D4 */	lwz r0, 0x1d4(r6)
/* 8035FDC4  90 03 80 00 */	stw r0, -0x8000(r3)
lbl_8035FDC8:
/* 8035FDC8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035FDCC  38 00 00 00 */	li r0, 0
/* 8035FDD0  B0 03 00 02 */	sth r0, 2(r3)
/* 8035FDD4  4E 80 00 20 */	blr 
