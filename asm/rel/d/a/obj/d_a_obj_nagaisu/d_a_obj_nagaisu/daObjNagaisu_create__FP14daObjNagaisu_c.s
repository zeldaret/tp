lbl_80CA0258:
/* 80CA0258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA025C  7C 08 02 A6 */	mflr r0
/* 80CA0260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA0264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA0268  7C 7F 1B 78 */	mr r31, r3
/* 80CA026C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA0270  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA0274  40 82 00 1C */	bne lbl_80CA0290
/* 80CA0278  28 1F 00 00 */	cmplwi r31, 0
/* 80CA027C  41 82 00 08 */	beq lbl_80CA0284
/* 80CA0280  4B FF F1 59 */	bl __ct__14daObjNagaisu_cFv
lbl_80CA0284:
/* 80CA0284  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CA0288  60 00 00 08 */	ori r0, r0, 8
/* 80CA028C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CA0290:
/* 80CA0290  7F E3 FB 78 */	mr r3, r31
/* 80CA0294  4B FF F3 D5 */	bl create__14daObjNagaisu_cFv
/* 80CA0298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA029C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA02A0  7C 08 03 A6 */	mtlr r0
/* 80CA02A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA02A8  4E 80 00 20 */	blr 
