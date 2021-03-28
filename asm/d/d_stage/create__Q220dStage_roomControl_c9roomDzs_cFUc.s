lbl_80024A34:
/* 80024A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024A38  7C 08 02 A6 */	mflr r0
/* 80024A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024A44  93 C1 00 08 */	stw r30, 8(r1)
/* 80024A48  7C 7E 1B 78 */	mr r30, r3
/* 80024A4C  7C 9F 23 78 */	mr r31, r4
/* 80024A50  4B FE A3 9D */	bl mDoExt_getArchiveHeap__Fv
/* 80024A54  7C 64 1B 78 */	mr r4, r3
/* 80024A58  57 E3 15 BA */	rlwinm r3, r31, 2, 0x16, 0x1d
/* 80024A5C  38 A0 FF FC */	li r5, -4
/* 80024A60  48 2A A2 B1 */	bl __nwa__FUlP7JKRHeapi
/* 80024A64  90 7E 00 04 */	stw r3, 4(r30)
/* 80024A68  80 1E 00 04 */	lwz r0, 4(r30)
/* 80024A6C  28 00 00 00 */	cmplwi r0, 0
/* 80024A70  41 82 00 34 */	beq lbl_80024AA4
/* 80024A74  7C 05 03 78 */	mr r5, r0
/* 80024A78  38 C0 00 00 */	li r6, 0
/* 80024A7C  38 80 00 00 */	li r4, 0
/* 80024A80  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80024A84  48 00 00 10 */	b lbl_80024A94
lbl_80024A88:
/* 80024A88  90 85 00 00 */	stw r4, 0(r5)
/* 80024A8C  38 A5 00 04 */	addi r5, r5, 4
/* 80024A90  38 C6 00 01 */	addi r6, r6, 1
lbl_80024A94:
/* 80024A94  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80024A98  7C 03 00 40 */	cmplw r3, r0
/* 80024A9C  41 80 FF EC */	blt lbl_80024A88
/* 80024AA0  9B FE 00 00 */	stb r31, 0(r30)
lbl_80024AA4:
/* 80024AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024AB0  7C 08 03 A6 */	mtlr r0
/* 80024AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80024AB8  4E 80 00 20 */	blr 
