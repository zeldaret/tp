lbl_802E22C4:
/* 802E22C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E22C8  7C 08 02 A6 */	mflr r0
/* 802E22CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E22D0  7C 85 23 78 */	mr r5, r4
/* 802E22D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 802E22D8  FC 20 08 18 */	frsp f1, f1
/* 802E22DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802E22E0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802E22E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802E22E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 802E22EC  7C 03 00 00 */	cmpw r3, r0
/* 802E22F0  41 82 00 14 */	beq lbl_802E2304
/* 802E22F4  40 80 00 40 */	bge lbl_802E2334
/* 802E22F8  2C 03 00 00 */	cmpwi r3, 0
/* 802E22FC  41 82 00 20 */	beq lbl_802E231C
/* 802E2300  48 00 00 34 */	b lbl_802E2334
lbl_802E2304:
/* 802E2304  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802E2308  41 82 00 0C */	beq lbl_802E2314
/* 802E230C  38 00 00 01 */	li r0, 1
/* 802E2310  48 00 00 28 */	b lbl_802E2338
lbl_802E2314:
/* 802E2314  38 00 00 02 */	li r0, 2
/* 802E2318  48 00 00 20 */	b lbl_802E2338
lbl_802E231C:
/* 802E231C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802E2320  41 82 00 0C */	beq lbl_802E232C
/* 802E2324  38 00 00 05 */	li r0, 5
/* 802E2328  48 00 00 10 */	b lbl_802E2338
lbl_802E232C:
/* 802E232C  38 00 00 03 */	li r0, 3
/* 802E2330  48 00 00 08 */	b lbl_802E2338
lbl_802E2334:
/* 802E2334  38 00 00 04 */	li r0, 4
lbl_802E2338:
/* 802E2338  2C 00 00 01 */	cmpwi r0, 1
/* 802E233C  40 82 00 20 */	bne lbl_802E235C
/* 802E2340  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2344  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2348  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E234C  38 84 00 D9 */	addi r4, r4, 0xd9
/* 802E2350  4C C6 31 82 */	crclr 6
/* 802E2354  48 00 58 65 */	bl print_f__10JUTConsoleFPCce
/* 802E2358  48 00 00 EC */	b lbl_802E2444
lbl_802E235C:
/* 802E235C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802E2360  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802E2364  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802E2368  3C 00 7F 80 */	lis r0, 0x7f80
/* 802E236C  7C 03 00 00 */	cmpw r3, r0
/* 802E2370  41 82 00 14 */	beq lbl_802E2384
/* 802E2374  40 80 00 40 */	bge lbl_802E23B4
/* 802E2378  2C 03 00 00 */	cmpwi r3, 0
/* 802E237C  41 82 00 20 */	beq lbl_802E239C
/* 802E2380  48 00 00 34 */	b lbl_802E23B4
lbl_802E2384:
/* 802E2384  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802E2388  41 82 00 0C */	beq lbl_802E2394
/* 802E238C  38 00 00 01 */	li r0, 1
/* 802E2390  48 00 00 28 */	b lbl_802E23B8
lbl_802E2394:
/* 802E2394  38 00 00 02 */	li r0, 2
/* 802E2398  48 00 00 20 */	b lbl_802E23B8
lbl_802E239C:
/* 802E239C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802E23A0  41 82 00 0C */	beq lbl_802E23AC
/* 802E23A4  38 00 00 05 */	li r0, 5
/* 802E23A8  48 00 00 10 */	b lbl_802E23B8
lbl_802E23AC:
/* 802E23AC  38 00 00 03 */	li r0, 3
/* 802E23B0  48 00 00 08 */	b lbl_802E23B8
lbl_802E23B4:
/* 802E23B4  38 00 00 04 */	li r0, 4
lbl_802E23B8:
/* 802E23B8  2C 00 00 02 */	cmpwi r0, 2
/* 802E23BC  40 82 00 48 */	bne lbl_802E2404
/* 802E23C0  88 01 00 08 */	lbz r0, 8(r1)
/* 802E23C4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802E23C8  41 82 00 20 */	beq lbl_802E23E8
/* 802E23CC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E23D0  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E23D4  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E23D8  38 84 00 EA */	addi r4, r4, 0xea
/* 802E23DC  4C C6 31 82 */	crclr 6
/* 802E23E0  48 00 57 D9 */	bl print_f__10JUTConsoleFPCce
/* 802E23E4  48 00 00 60 */	b lbl_802E2444
lbl_802E23E8:
/* 802E23E8  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E23EC  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E23F0  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E23F4  38 84 00 FA */	addi r4, r4, 0xfa
/* 802E23F8  4C C6 31 82 */	crclr 6
/* 802E23FC  48 00 57 BD */	bl print_f__10JUTConsoleFPCce
/* 802E2400  48 00 00 44 */	b lbl_802E2444
lbl_802E2404:
/* 802E2404  C0 02 C6 50 */	lfs f0, lit_2293(r2)
/* 802E2408  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802E240C  40 82 00 20 */	bne lbl_802E242C
/* 802E2410  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2414  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2418  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E241C  38 84 01 0A */	addi r4, r4, 0x10a
/* 802E2420  4C C6 31 82 */	crclr 6
/* 802E2424  48 00 57 95 */	bl print_f__10JUTConsoleFPCce
/* 802E2428  48 00 00 1C */	b lbl_802E2444
lbl_802E242C:
/* 802E242C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2430  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E2434  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E2438  38 84 01 1B */	addi r4, r4, 0x11b
/* 802E243C  4C C6 32 42 */	crset 6
/* 802E2440  48 00 57 79 */	bl print_f__10JUTConsoleFPCce
lbl_802E2444:
/* 802E2444  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E2448  7C 08 03 A6 */	mtlr r0
/* 802E244C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2450  4E 80 00 20 */	blr 
