lbl_80352198:
/* 80352198  7C 08 02 A6 */	mflr r0
/* 8035219C  90 01 00 04 */	stw r0, 4(r1)
/* 803521A0  94 21 FF F8 */	stwu r1, -8(r1)
/* 803521A4  81 8D 93 70 */	lwz r12, __ARQCallbackHi(r13)
/* 803521A8  28 0C 00 00 */	cmplwi r12, 0
/* 803521AC  41 82 00 20 */	beq lbl_803521CC
/* 803521B0  80 6D 93 68 */	lwz r3, __ARQRequestPendingHi(r13)
/* 803521B4  7D 88 03 A6 */	mtlr r12
/* 803521B8  4E 80 00 21 */	blrl 
/* 803521BC  38 00 00 00 */	li r0, 0
/* 803521C0  90 0D 93 68 */	stw r0, __ARQRequestPendingHi(r13)
/* 803521C4  90 0D 93 70 */	stw r0, __ARQCallbackHi(r13)
/* 803521C8  48 00 00 28 */	b lbl_803521F0
lbl_803521CC:
/* 803521CC  81 8D 93 74 */	lwz r12, __ARQCallbackLo(r13)
/* 803521D0  28 0C 00 00 */	cmplwi r12, 0
/* 803521D4  41 82 00 1C */	beq lbl_803521F0
/* 803521D8  80 6D 93 6C */	lwz r3, __ARQRequestPendingLo(r13)
/* 803521DC  7D 88 03 A6 */	mtlr r12
/* 803521E0  4E 80 00 21 */	blrl 
/* 803521E4  38 00 00 00 */	li r0, 0
/* 803521E8  90 0D 93 6C */	stw r0, __ARQRequestPendingLo(r13)
/* 803521EC  90 0D 93 74 */	stw r0, __ARQCallbackLo(r13)
lbl_803521F0:
/* 803521F0  80 CD 93 58 */	lwz r6, __ARQRequestQueueHi(r13)
/* 803521F4  28 06 00 00 */	cmplwi r6, 0
/* 803521F8  41 82 00 4C */	beq lbl_80352244
/* 803521FC  80 66 00 08 */	lwz r3, 8(r6)
/* 80352200  28 03 00 00 */	cmplwi r3, 0
/* 80352204  40 82 00 18 */	bne lbl_8035221C
/* 80352208  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8035220C  80 A6 00 14 */	lwz r5, 0x14(r6)
/* 80352210  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80352214  4B FF E3 C1 */	bl ARStartDMA
/* 80352218  48 00 00 14 */	b lbl_8035222C
lbl_8035221C:
/* 8035221C  80 86 00 14 */	lwz r4, 0x14(r6)
/* 80352220  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 80352224  80 C6 00 18 */	lwz r6, 0x18(r6)
/* 80352228  4B FF E3 AD */	bl ARStartDMA
lbl_8035222C:
/* 8035222C  80 6D 93 58 */	lwz r3, __ARQRequestQueueHi(r13)
/* 80352230  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80352234  90 0D 93 70 */	stw r0, __ARQCallbackHi(r13)
/* 80352238  90 6D 93 68 */	stw r3, __ARQRequestPendingHi(r13)
/* 8035223C  80 03 00 00 */	lwz r0, 0(r3)
/* 80352240  90 0D 93 58 */	stw r0, __ARQRequestQueueHi(r13)
lbl_80352244:
/* 80352244  80 0D 93 68 */	lwz r0, __ARQRequestPendingHi(r13)
/* 80352248  28 00 00 00 */	cmplwi r0, 0
/* 8035224C  40 82 00 08 */	bne lbl_80352254
/* 80352250  4B FF FE 45 */	bl __ARQServiceQueueLo
lbl_80352254:
/* 80352254  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80352258  38 21 00 08 */	addi r1, r1, 8
/* 8035225C  7C 08 03 A6 */	mtlr r0
/* 80352260  4E 80 00 20 */	blr 
