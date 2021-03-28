lbl_8027E220:
/* 8027E220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E224  7C 08 02 A6 */	mflr r0
/* 8027E228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E230  93 C1 00 08 */	stw r30, 8(r1)
/* 8027E234  7C 7E 1B 78 */	mr r30, r3
/* 8027E238  3B E0 00 00 */	li r31, 0
/* 8027E23C  48 00 00 14 */	b lbl_8027E250
lbl_8027E240:
/* 8027E240  7F C3 F3 78 */	mr r3, r30
/* 8027E244  7F E4 FB 78 */	mr r4, r31
/* 8027E248  48 00 00 31 */	bl forceDeleteGroupEmitter__17JPAEmitterManagerFUc
/* 8027E24C  3B FF 00 01 */	addi r31, r31, 1
lbl_8027E250:
/* 8027E250  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8027E254  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8027E258  7C 03 00 40 */	cmplw r3, r0
/* 8027E25C  41 80 FF E4 */	blt lbl_8027E240
/* 8027E260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E264  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027E268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E26C  7C 08 03 A6 */	mtlr r0
/* 8027E270  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E274  4E 80 00 20 */	blr 
