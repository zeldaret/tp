lbl_8034FCB4:
/* 8034FCB4  7C 08 02 A6 */	mflr r0
/* 8034FCB8  90 01 00 04 */	stw r0, 4(r1)
/* 8034FCBC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034FCC0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034FCC4  3B E4 00 00 */	addi r31, r4, 0
/* 8034FCC8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034FCCC  3B C3 00 00 */	addi r30, r3, 0
/* 8034FCD0  4B FE DA 25 */	bl OSDisableInterrupts
/* 8034FCD4  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC005030@ha */
/* 8034FCD8  A0 04 50 30 */	lhz r0, 0x5030(r4)
/* 8034FCDC  38 A4 50 00 */	addi r5, r4, 0x5000
/* 8034FCE0  38 C4 50 00 */	addi r6, r4, 0x5000
/* 8034FCE4  38 E4 50 00 */	addi r7, r4, 0x5000
/* 8034FCE8  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 8034FCEC  57 C0 84 3E */	srwi r0, r30, 0x10
/* 8034FCF0  7C 80 03 78 */	or r0, r4, r0
/* 8034FCF4  B0 05 00 30 */	sth r0, 0x30(r5)
/* 8034FCF8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8034FCFC  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 8034FD00  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 8034FD04  7C 80 03 78 */	or r0, r4, r0
/* 8034FD08  B0 06 00 32 */	sth r0, 0x32(r6)
/* 8034FD0C  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 8034FD10  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 8034FD14  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 8034FD18  7C 80 03 78 */	or r0, r4, r0
/* 8034FD1C  B0 07 00 36 */	sth r0, 0x36(r7)
/* 8034FD20  4B FE D9 FD */	bl OSRestoreInterrupts
/* 8034FD24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034FD28  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034FD2C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034FD30  38 21 00 18 */	addi r1, r1, 0x18
/* 8034FD34  7C 08 03 A6 */	mtlr r0
/* 8034FD38  4E 80 00 20 */	blr 
