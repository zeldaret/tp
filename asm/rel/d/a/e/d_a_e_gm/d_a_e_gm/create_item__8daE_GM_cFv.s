lbl_806D21A4:
/* 806D21A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D21A8  7C 08 02 A6 */	mflr r0
/* 806D21AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D21B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D21B4  7C 7F 1B 78 */	mr r31, r3
/* 806D21B8  88 03 0A 6F */	lbz r0, 0xa6f(r3)
/* 806D21BC  28 00 00 02 */	cmplwi r0, 2
/* 806D21C0  40 82 00 2C */	bne lbl_806D21EC
/* 806D21C4  88 7F 05 64 */	lbz r3, 0x564(r31)
/* 806D21C8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D21CC  38 A0 FF FF */	li r5, -1
/* 806D21D0  38 C0 FF FF */	li r6, -1
/* 806D21D4  38 E0 00 00 */	li r7, 0
/* 806D21D8  39 00 00 00 */	li r8, 0
/* 806D21DC  39 20 00 00 */	li r9, 0
/* 806D21E0  39 40 00 00 */	li r10, 0
/* 806D21E4  4B 94 9C 30 */	b fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 806D21E8  48 00 00 98 */	b lbl_806D2280
lbl_806D21EC:
/* 806D21EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D21F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D21F4  A0 03 00 02 */	lhz r0, 2(r3)
/* 806D21F8  2C 00 00 05 */	cmpwi r0, 5
/* 806D21FC  40 80 00 10 */	bge lbl_806D220C
/* 806D2200  3C 60 80 6D */	lis r3, lit_4424@ha
/* 806D2204  C0 23 7A 50 */	lfs f1, lit_4424@l(r3)
/* 806D2208  48 00 00 0C */	b lbl_806D2214
lbl_806D220C:
/* 806D220C  3C 60 80 6D */	lis r3, lit_4425@ha
/* 806D2210  C0 23 7A 54 */	lfs f1, lit_4425@l(r3)
lbl_806D2214:
/* 806D2214  4B B9 57 40 */	b cM_rndF__Ff
/* 806D2218  FC 00 08 1E */	fctiwz f0, f1
/* 806D221C  D8 01 00 08 */	stfd f0, 8(r1)
/* 806D2220  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806D2224  2C 00 00 00 */	cmpwi r0, 0
/* 806D2228  41 82 00 14 */	beq lbl_806D223C
/* 806D222C  41 80 00 54 */	blt lbl_806D2280
/* 806D2230  2C 00 00 03 */	cmpwi r0, 3
/* 806D2234  40 80 00 4C */	bge lbl_806D2280
/* 806D2238  48 00 00 28 */	b lbl_806D2260
lbl_806D223C:
/* 806D223C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806D2240  38 80 00 00 */	li r4, 0
/* 806D2244  38 A0 FF FF */	li r5, -1
/* 806D2248  38 C0 FF FF */	li r6, -1
/* 806D224C  38 E0 00 00 */	li r7, 0
/* 806D2250  39 00 00 00 */	li r8, 0
/* 806D2254  39 20 00 00 */	li r9, 0
/* 806D2258  4B 94 9F E8 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 806D225C  48 00 00 24 */	b lbl_806D2280
lbl_806D2260:
/* 806D2260  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806D2264  38 80 00 11 */	li r4, 0x11
/* 806D2268  38 A0 FF FF */	li r5, -1
/* 806D226C  38 C0 FF FF */	li r6, -1
/* 806D2270  38 E0 00 00 */	li r7, 0
/* 806D2274  39 00 00 00 */	li r8, 0
/* 806D2278  39 20 00 00 */	li r9, 0
/* 806D227C  4B 94 9F C4 */	b fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
lbl_806D2280:
/* 806D2280  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D2284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D2288  7C 08 03 A6 */	mtlr r0
/* 806D228C  38 21 00 20 */	addi r1, r1, 0x20
/* 806D2290  4E 80 00 20 */	blr 
