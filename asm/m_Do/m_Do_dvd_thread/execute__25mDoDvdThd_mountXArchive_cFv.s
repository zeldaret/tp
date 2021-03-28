lbl_800162B0:
/* 800162B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800162B4  7C 08 02 A6 */	mflr r0
/* 800162B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800162BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800162C0  93 C1 00 08 */	stw r30, 8(r1)
/* 800162C4  7C 7E 1B 78 */	mr r30, r3
/* 800162C8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800162CC  28 00 00 00 */	cmplwi r0, 0
/* 800162D0  3B E0 00 02 */	li r31, 2
/* 800162D4  40 82 00 08 */	bne lbl_800162DC
/* 800162D8  3B E0 00 01 */	li r31, 1
lbl_800162DC:
/* 800162DC  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 800162E0  28 05 00 00 */	cmplwi r5, 0
/* 800162E4  41 82 00 08 */	beq lbl_800162EC
/* 800162E8  48 00 00 0C */	b lbl_800162F4
lbl_800162EC:
/* 800162EC  4B FF 8B 01 */	bl mDoExt_getArchiveHeap__Fv
/* 800162F0  7C 65 1B 78 */	mr r5, r3
lbl_800162F4:
/* 800162F4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 800162F8  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 800162FC  7F E6 FB 78 */	mr r6, r31
/* 80016300  48 2B F5 C9 */	bl mount__10JKRArchiveFlQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80016304  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80016308  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8001630C  30 03 FF FF */	addic r0, r3, -1
/* 80016310  7C 00 19 10 */	subfe r0, r0, r3
/* 80016314  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80016318  38 00 00 01 */	li r0, 1
/* 8001631C  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80016320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80016324  83 C1 00 08 */	lwz r30, 8(r1)
/* 80016328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001632C  7C 08 03 A6 */	mtlr r0
/* 80016330  38 21 00 10 */	addi r1, r1, 0x10
/* 80016334  4E 80 00 20 */	blr 
