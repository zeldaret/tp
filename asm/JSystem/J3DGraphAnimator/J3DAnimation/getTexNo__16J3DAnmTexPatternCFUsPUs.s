lbl_8032AF50:
/* 8032AF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032AF54  81 03 00 10 */	lwz r8, 0x10(r3)
/* 8032AF58  54 87 1B 78 */	rlwinm r7, r4, 3, 0xd, 0x1c
/* 8032AF5C  7C C8 3A 2E */	lhzx r6, r8, r7
/* 8032AF60  C0 43 00 08 */	lfs f2, 8(r3)
/* 8032AF64  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 8032AF68  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8032AF6C  40 80 00 20 */	bge lbl_8032AF8C
/* 8032AF70  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8032AF74  7C 68 3A 14 */	add r3, r8, r7
/* 8032AF78  A0 03 00 02 */	lhz r0, 2(r3)
/* 8032AF7C  54 00 08 3C */	slwi r0, r0, 1
/* 8032AF80  7C 04 02 2E */	lhzx r0, r4, r0
/* 8032AF84  B0 05 00 00 */	sth r0, 0(r5)
/* 8032AF88  48 00 00 74 */	b lbl_8032AFFC
lbl_8032AF8C:
/* 8032AF8C  C8 22 CA 50 */	lfd f1, lit_1223(r2)
/* 8032AF90  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8032AF94  3C 00 43 30 */	lis r0, 0x4330
/* 8032AF98  90 01 00 08 */	stw r0, 8(r1)
/* 8032AF9C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032AFA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8032AFA4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8032AFA8  4C 41 13 82 */	cror 2, 1, 2
/* 8032AFAC  40 82 00 28 */	bne lbl_8032AFD4
/* 8032AFB0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8032AFB4  7C 68 3A 14 */	add r3, r8, r7
/* 8032AFB8  A0 03 00 02 */	lhz r0, 2(r3)
/* 8032AFBC  7C 66 02 14 */	add r3, r6, r0
/* 8032AFC0  38 03 FF FF */	addi r0, r3, -1
/* 8032AFC4  54 00 08 3C */	slwi r0, r0, 1
/* 8032AFC8  7C 04 02 2E */	lhzx r0, r4, r0
/* 8032AFCC  B0 05 00 00 */	sth r0, 0(r5)
/* 8032AFD0  48 00 00 2C */	b lbl_8032AFFC
lbl_8032AFD4:
/* 8032AFD4  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8032AFD8  FC 00 10 1E */	fctiwz f0, f2
/* 8032AFDC  D8 01 00 08 */	stfd f0, 8(r1)
/* 8032AFE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8032AFE4  7C 68 3A 14 */	add r3, r8, r7
/* 8032AFE8  A0 03 00 02 */	lhz r0, 2(r3)
/* 8032AFEC  7C 04 02 14 */	add r0, r4, r0
/* 8032AFF0  54 00 08 3C */	slwi r0, r0, 1
/* 8032AFF4  7C 06 02 2E */	lhzx r0, r6, r0
/* 8032AFF8  B0 05 00 00 */	sth r0, 0(r5)
lbl_8032AFFC:
/* 8032AFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8032B000  4E 80 00 20 */	blr 
