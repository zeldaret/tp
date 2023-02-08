lbl_8036D1A4:
/* 8036D1A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8036D1A8  7C 08 02 A6 */	mflr r0
/* 8036D1AC  3C A0 80 45 */	lis r5, gTRKBigEndian@ha /* 0x8044D8B8@ha */
/* 8036D1B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8036D1B4  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8036D1B8  7C 7B 1B 78 */	mr r27, r3
/* 8036D1BC  7C 9E 23 78 */	mr r30, r4
/* 8036D1C0  80 05 D8 B8 */	lwz r0, gTRKBigEndian@l(r5)  /* 0x8044D8B8@l */
/* 8036D1C4  2C 00 00 00 */	cmpwi r0, 0
/* 8036D1C8  41 82 00 0C */	beq lbl_8036D1D4
/* 8036D1CC  7F DF F3 78 */	mr r31, r30
/* 8036D1D0  48 00 00 08 */	b lbl_8036D1D8
lbl_8036D1D4:
/* 8036D1D4  3B E1 00 08 */	addi r31, r1, 8
lbl_8036D1D8:
/* 8036D1D8  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8036D1DC  3B 80 00 08 */	li r28, 8
/* 8036D1E0  80 1B 00 08 */	lwz r0, 8(r27)
/* 8036D1E4  3B A0 00 00 */	li r29, 0
/* 8036D1E8  7C 03 00 50 */	subf r0, r3, r0
/* 8036D1EC  7C 1C 00 40 */	cmplw r28, r0
/* 8036D1F0  40 81 00 0C */	ble lbl_8036D1FC
/* 8036D1F4  3B A0 03 02 */	li r29, 0x302
/* 8036D1F8  7C 1C 03 78 */	mr r28, r0
lbl_8036D1FC:
/* 8036D1FC  38 83 00 10 */	addi r4, r3, 0x10
/* 8036D200  7F E3 FB 78 */	mr r3, r31
/* 8036D204  7F 85 E3 78 */	mr r5, r28
/* 8036D208  7C 9B 22 14 */	add r4, r27, r4
/* 8036D20C  4B C9 63 B5 */	bl TRK_memcpy
/* 8036D210  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8036D214  3C 60 80 45 */	lis r3, gTRKBigEndian@ha /* 0x8044D8B8@ha */
/* 8036D218  7C 00 E2 14 */	add r0, r0, r28
/* 8036D21C  90 1B 00 0C */	stw r0, 0xc(r27)
/* 8036D220  80 03 D8 B8 */	lwz r0, gTRKBigEndian@l(r3)  /* 0x8044D8B8@l */
/* 8036D224  2C 00 00 00 */	cmpwi r0, 0
/* 8036D228  40 82 00 4C */	bne lbl_8036D274
/* 8036D22C  2C 1D 00 00 */	cmpwi r29, 0
/* 8036D230  40 82 00 44 */	bne lbl_8036D274
/* 8036D234  88 1F 00 07 */	lbz r0, 7(r31)
/* 8036D238  98 1E 00 00 */	stb r0, 0(r30)
/* 8036D23C  88 1F 00 06 */	lbz r0, 6(r31)
/* 8036D240  98 1E 00 01 */	stb r0, 1(r30)
/* 8036D244  88 1F 00 05 */	lbz r0, 5(r31)
/* 8036D248  98 1E 00 02 */	stb r0, 2(r30)
/* 8036D24C  88 1F 00 04 */	lbz r0, 4(r31)
/* 8036D250  98 1E 00 03 */	stb r0, 3(r30)
/* 8036D254  88 1F 00 03 */	lbz r0, 3(r31)
/* 8036D258  98 1E 00 04 */	stb r0, 4(r30)
/* 8036D25C  88 1F 00 02 */	lbz r0, 2(r31)
/* 8036D260  98 1E 00 05 */	stb r0, 5(r30)
/* 8036D264  88 1F 00 01 */	lbz r0, 1(r31)
/* 8036D268  98 1E 00 06 */	stb r0, 6(r30)
/* 8036D26C  88 1F 00 00 */	lbz r0, 0(r31)
/* 8036D270  98 1E 00 07 */	stb r0, 7(r30)
lbl_8036D274:
/* 8036D274  7F A3 EB 78 */	mr r3, r29
/* 8036D278  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8036D27C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036D280  7C 08 03 A6 */	mtlr r0
/* 8036D284  38 21 00 30 */	addi r1, r1, 0x30
/* 8036D288  4E 80 00 20 */	blr 
