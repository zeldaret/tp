lbl_80993330:
/* 80993330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80993334  7C 08 02 A6 */	mflr r0
/* 80993338  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099333C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80993340  7C 7F 1B 78 */	mr r31, r3
/* 80993344  88 03 10 BC */	lbz r0, 0x10bc(r3)
/* 80993348  2C 00 00 00 */	cmpwi r0, 0
/* 8099334C  41 82 00 08 */	beq lbl_80993354
/* 80993350  48 00 00 28 */	b lbl_80993378
lbl_80993354:
/* 80993354  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 80993358  4B 7B 23 B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8099335C  28 03 00 00 */	cmplwi r3, 0
/* 80993360  40 82 00 18 */	bne lbl_80993378
/* 80993364  7F E3 FB 78 */	mr r3, r31
/* 80993368  4B 7B 8C 49 */	bl getShopItemTagP__8daNpcT_cFv
/* 8099336C  7C 64 1B 78 */	mr r4, r3
/* 80993370  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 80993374  4B 7B 23 6D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80993378:
/* 80993378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099337C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80993380  7C 08 03 A6 */	mtlr r0
/* 80993384  38 21 00 10 */	addi r1, r1, 0x10
/* 80993388  4E 80 00 20 */	blr 
