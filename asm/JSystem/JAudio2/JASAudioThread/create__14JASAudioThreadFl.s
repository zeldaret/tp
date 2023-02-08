lbl_8029CD4C:
/* 8029CD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029CD50  7C 08 02 A6 */	mflr r0
/* 8029CD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029CD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029CD5C  7C 7F 1B 78 */	mr r31, r3
/* 8029CD60  38 60 00 88 */	li r3, 0x88
/* 8029CD64  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8029CD68  38 A0 00 00 */	li r5, 0
/* 8029CD6C  48 03 1F 2D */	bl __nw__FUlP7JKRHeapi
/* 8029CD70  7C 64 1B 79 */	or. r4, r3, r3
/* 8029CD74  41 82 00 18 */	beq lbl_8029CD8C
/* 8029CD78  7F E4 FB 78 */	mr r4, r31
/* 8029CD7C  38 A0 00 10 */	li r5, 0x10
/* 8029CD80  38 C0 14 00 */	li r6, 0x1400
/* 8029CD84  4B FF FF 59 */	bl __ct__14JASAudioThreadFiiUl
/* 8029CD88  7C 64 1B 78 */	mr r4, r3
lbl_8029CD8C:
/* 8029CD8C  80 0D 8D F0 */	lwz r0, sSystemHeap__7JKRHeap(r13)
/* 8029CD90  28 00 00 00 */	cmplwi r0, 0
/* 8029CD94  41 82 00 08 */	beq lbl_8029CD9C
/* 8029CD98  48 00 00 08 */	b lbl_8029CDA0
lbl_8029CD9C:
/* 8029CD9C  80 0D 8D F4 */	lwz r0, sCurrentHeap__7JKRHeap(r13)
lbl_8029CDA0:
/* 8029CDA0  90 04 00 74 */	stw r0, 0x74(r4)
/* 8029CDA4  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 8029CDA8  48 0A 4A 0D */	bl OSResumeThread
/* 8029CDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029CDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029CDB4  7C 08 03 A6 */	mtlr r0
/* 8029CDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029CDBC  4E 80 00 20 */	blr 
