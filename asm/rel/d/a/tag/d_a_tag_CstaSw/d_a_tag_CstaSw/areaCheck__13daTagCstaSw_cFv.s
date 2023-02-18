lbl_805A21A0:
/* 805A21A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A21A4  7C 08 02 A6 */	mflr r0
/* 805A21A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A21AC  39 61 00 40 */	addi r11, r1, 0x40
/* 805A21B0  4B DC 00 2D */	bl _savegpr_29
/* 805A21B4  7C 7D 1B 78 */	mr r29, r3
/* 805A21B8  3C 60 80 5A */	lis r3, lit_3724@ha /* 0x805A252C@ha */
/* 805A21BC  3B E3 25 2C */	addi r31, r3, lit_3724@l /* 0x805A252C@l */
/* 805A21C0  3B C0 00 00 */	li r30, 0
/* 805A21C4  3C 60 80 5A */	lis r3, searchSekizoAct__13daTagCstaSw_cFPvPv@ha /* 0x805A2150@ha */
/* 805A21C8  38 63 21 50 */	addi r3, r3, searchSekizoAct__13daTagCstaSw_cFPvPv@l /* 0x805A2150@l */
/* 805A21CC  7F A4 EB 78 */	mr r4, r29
/* 805A21D0  4B A7 76 29 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805A21D4  7C 65 1B 79 */	or. r5, r3, r3
/* 805A21D8  40 82 00 0C */	bne lbl_805A21E4
/* 805A21DC  38 60 00 00 */	li r3, 0
/* 805A21E0  48 00 01 48 */	b lbl_805A2328
lbl_805A21E4:
/* 805A21E4  38 61 00 18 */	addi r3, r1, 0x18
/* 805A21E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805A21EC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 805A21F0  4B CC 49 45 */	bl __mi__4cXyzCFRC3Vec
/* 805A21F4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 805A21F8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805A21FC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805A2200  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805A2204  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805A2208  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805A220C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805A2210  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805A2214  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A2218  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805A221C  38 61 00 0C */	addi r3, r1, 0xc
/* 805A2220  4B DA 4F 19 */	bl PSVECSquareMag
/* 805A2224  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805A2228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A222C  40 81 00 58 */	ble lbl_805A2284
/* 805A2230  FC 00 08 34 */	frsqrte f0, f1
/* 805A2234  C8 9F 00 08 */	lfd f4, 8(r31)
/* 805A2238  FC 44 00 32 */	fmul f2, f4, f0
/* 805A223C  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 805A2240  FC 00 00 32 */	fmul f0, f0, f0
/* 805A2244  FC 01 00 32 */	fmul f0, f1, f0
/* 805A2248  FC 03 00 28 */	fsub f0, f3, f0
/* 805A224C  FC 02 00 32 */	fmul f0, f2, f0
/* 805A2250  FC 44 00 32 */	fmul f2, f4, f0
/* 805A2254  FC 00 00 32 */	fmul f0, f0, f0
/* 805A2258  FC 01 00 32 */	fmul f0, f1, f0
/* 805A225C  FC 03 00 28 */	fsub f0, f3, f0
/* 805A2260  FC 02 00 32 */	fmul f0, f2, f0
/* 805A2264  FC 44 00 32 */	fmul f2, f4, f0
/* 805A2268  FC 00 00 32 */	fmul f0, f0, f0
/* 805A226C  FC 01 00 32 */	fmul f0, f1, f0
/* 805A2270  FC 03 00 28 */	fsub f0, f3, f0
/* 805A2274  FC 02 00 32 */	fmul f0, f2, f0
/* 805A2278  FC 21 00 32 */	fmul f1, f1, f0
/* 805A227C  FC 20 08 18 */	frsp f1, f1
/* 805A2280  48 00 00 88 */	b lbl_805A2308
lbl_805A2284:
/* 805A2284  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 805A2288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A228C  40 80 00 10 */	bge lbl_805A229C
/* 805A2290  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805A2294  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805A2298  48 00 00 70 */	b lbl_805A2308
lbl_805A229C:
/* 805A229C  D0 21 00 08 */	stfs f1, 8(r1)
/* 805A22A0  80 81 00 08 */	lwz r4, 8(r1)
/* 805A22A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805A22A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805A22AC  7C 03 00 00 */	cmpw r3, r0
/* 805A22B0  41 82 00 14 */	beq lbl_805A22C4
/* 805A22B4  40 80 00 40 */	bge lbl_805A22F4
/* 805A22B8  2C 03 00 00 */	cmpwi r3, 0
/* 805A22BC  41 82 00 20 */	beq lbl_805A22DC
/* 805A22C0  48 00 00 34 */	b lbl_805A22F4
lbl_805A22C4:
/* 805A22C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A22C8  41 82 00 0C */	beq lbl_805A22D4
/* 805A22CC  38 00 00 01 */	li r0, 1
/* 805A22D0  48 00 00 28 */	b lbl_805A22F8
lbl_805A22D4:
/* 805A22D4  38 00 00 02 */	li r0, 2
/* 805A22D8  48 00 00 20 */	b lbl_805A22F8
lbl_805A22DC:
/* 805A22DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805A22E0  41 82 00 0C */	beq lbl_805A22EC
/* 805A22E4  38 00 00 05 */	li r0, 5
/* 805A22E8  48 00 00 10 */	b lbl_805A22F8
lbl_805A22EC:
/* 805A22EC  38 00 00 03 */	li r0, 3
/* 805A22F0  48 00 00 08 */	b lbl_805A22F8
lbl_805A22F4:
/* 805A22F4  38 00 00 04 */	li r0, 4
lbl_805A22F8:
/* 805A22F8  2C 00 00 01 */	cmpwi r0, 1
/* 805A22FC  40 82 00 0C */	bne lbl_805A2308
/* 805A2300  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805A2304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805A2308:
/* 805A2308  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805A230C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 805A2310  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A2314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A2318  4C 40 13 82 */	cror 2, 0, 2
/* 805A231C  40 82 00 08 */	bne lbl_805A2324
/* 805A2320  3B C0 00 01 */	li r30, 1
lbl_805A2324:
/* 805A2324  7F C3 F3 78 */	mr r3, r30
lbl_805A2328:
/* 805A2328  39 61 00 40 */	addi r11, r1, 0x40
/* 805A232C  4B DB FE FD */	bl _restgpr_29
/* 805A2330  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A2334  7C 08 03 A6 */	mtlr r0
/* 805A2338  38 21 00 40 */	addi r1, r1, 0x40
/* 805A233C  4E 80 00 20 */	blr 
