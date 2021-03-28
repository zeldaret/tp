lbl_80294CB0:
/* 80294CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294CB4  7C 08 02 A6 */	mflr r0
/* 80294CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294CBC  80 65 00 04 */	lwz r3, 4(r5)
/* 80294CC0  54 60 40 2E */	slwi r0, r3, 8
/* 80294CC4  7C 06 07 34 */	extsh r6, r0
/* 80294CC8  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80294CCC  40 82 00 14 */	bne lbl_80294CE0
/* 80294CD0  54 60 08 3C */	slwi r0, r3, 1
/* 80294CD4  7C 00 07 34 */	extsh r0, r0
/* 80294CD8  7C C0 03 78 */	or r0, r6, r0
/* 80294CDC  7C 06 07 34 */	extsh r6, r0
lbl_80294CE0:
/* 80294CE0  7C 83 23 78 */	mr r3, r4
/* 80294CE4  80 85 00 00 */	lwz r4, 0(r5)
/* 80294CE8  7C C0 07 34 */	extsh r0, r6
/* 80294CEC  C8 22 BC 08 */	lfd f1, lit_1064(r2)
/* 80294CF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80294CF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80294CF8  3C 00 43 30 */	lis r0, 0x4330
/* 80294CFC  90 01 00 08 */	stw r0, 8(r1)
/* 80294D00  C8 01 00 08 */	lfd f0, 8(r1)
/* 80294D04  EC 20 08 28 */	fsubs f1, f0, f1
/* 80294D08  C0 02 BB D8 */	lfs f0, lit_627(r2)
/* 80294D0C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80294D10  38 A0 00 00 */	li r5, 0
/* 80294D14  4B FF D9 CD */	bl setParam__8JASTrackFUlfUl
/* 80294D18  38 60 00 00 */	li r3, 0
/* 80294D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294D20  7C 08 03 A6 */	mtlr r0
/* 80294D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80294D28  4E 80 00 20 */	blr 
