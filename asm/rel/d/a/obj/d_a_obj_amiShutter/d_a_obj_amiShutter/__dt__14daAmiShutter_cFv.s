lbl_80BA22E8:
/* 80BA22E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA22EC  7C 08 02 A6 */	mflr r0
/* 80BA22F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA22F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA22F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA22FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA2300  7C 9F 23 78 */	mr r31, r4
/* 80BA2304  41 82 00 5C */	beq lbl_80BA2360
/* 80BA2308  3C 60 80 BA */	lis r3, __vt__14daAmiShutter_c@ha
/* 80BA230C  38 63 24 F4 */	addi r3, r3, __vt__14daAmiShutter_c@l
/* 80BA2310  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80BA2314  38 03 00 28 */	addi r0, r3, 0x28
/* 80BA2318  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80BA231C  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80BA2320  41 82 00 10 */	beq lbl_80BA2330
/* 80BA2324  3C 60 80 BA */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80BA2328  38 03 24 DC */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80BA232C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80BA2330:
/* 80BA2330  28 1E 00 00 */	cmplwi r30, 0
/* 80BA2334  41 82 00 1C */	beq lbl_80BA2350
/* 80BA2338  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80BA233C  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80BA2340  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BA2344  7F C3 F3 78 */	mr r3, r30
/* 80BA2348  38 80 00 00 */	li r4, 0
/* 80BA234C  4B 47 69 40 */	b __dt__10fopAc_ac_cFv
lbl_80BA2350:
/* 80BA2350  7F E0 07 35 */	extsh. r0, r31
/* 80BA2354  40 81 00 0C */	ble lbl_80BA2360
/* 80BA2358  7F C3 F3 78 */	mr r3, r30
/* 80BA235C  4B 72 C9 E0 */	b __dl__FPv
lbl_80BA2360:
/* 80BA2360  7F C3 F3 78 */	mr r3, r30
/* 80BA2364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA2368  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA236C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2370  7C 08 03 A6 */	mtlr r0
/* 80BA2374  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2378  4E 80 00 20 */	blr 
