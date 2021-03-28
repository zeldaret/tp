lbl_8028FF04:
/* 8028FF04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028FF08  7C 08 02 A6 */	mflr r0
/* 8028FF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028FF10  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FF14  48 0D 22 C9 */	bl _savegpr_29
/* 8028FF18  7C 7D 1B 78 */	mr r29, r3
/* 8028FF1C  7C 9E 23 78 */	mr r30, r4
/* 8028FF20  7C BF 2B 78 */	mr r31, r5
/* 8028FF24  80 0D 8C 88 */	lwz r0, sThread__6JASDvd(r13)
/* 8028FF28  28 00 00 00 */	cmplwi r0, 0
/* 8028FF2C  41 82 00 0C */	beq lbl_8028FF38
/* 8028FF30  38 60 00 00 */	li r3, 0
/* 8028FF34  48 00 00 5C */	b lbl_8028FF90
lbl_8028FF38:
/* 8028FF38  38 60 00 88 */	li r3, 0x88
/* 8028FF3C  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8028FF40  38 A0 00 00 */	li r5, 0
/* 8028FF44  48 03 ED 55 */	bl __nw__FUlP7JKRHeapi
/* 8028FF48  7C 64 1B 79 */	or. r4, r3, r3
/* 8028FF4C  41 82 00 18 */	beq lbl_8028FF64
/* 8028FF50  7F A4 EB 78 */	mr r4, r29
/* 8028FF54  7F C5 F3 78 */	mr r5, r30
/* 8028FF58  7F E6 FB 78 */	mr r6, r31
/* 8028FF5C  4B FF F7 69 */	bl __ct__13JASTaskThreadFiiUl
/* 8028FF60  7C 64 1B 78 */	mr r4, r3
lbl_8028FF64:
/* 8028FF64  90 8D 8C 88 */	stw r4, sThread__6JASDvd(r13)
/* 8028FF68  80 0D 8D F0 */	lwz r0, sSystemHeap__7JKRHeap(r13)
/* 8028FF6C  28 00 00 00 */	cmplwi r0, 0
/* 8028FF70  41 82 00 08 */	beq lbl_8028FF78
/* 8028FF74  48 00 00 08 */	b lbl_8028FF7C
lbl_8028FF78:
/* 8028FF78  80 0D 8D F4 */	lwz r0, sCurrentHeap__7JKRHeap(r13)
lbl_8028FF7C:
/* 8028FF7C  90 04 00 74 */	stw r0, 0x74(r4)
/* 8028FF80  80 6D 8C 88 */	lwz r3, sThread__6JASDvd(r13)
/* 8028FF84  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8028FF88  48 0B 18 2D */	bl OSResumeThread
/* 8028FF8C  38 60 00 01 */	li r3, 1
lbl_8028FF90:
/* 8028FF90  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FF94  48 0D 22 95 */	bl _restgpr_29
/* 8028FF98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028FF9C  7C 08 03 A6 */	mtlr r0
/* 8028FFA0  38 21 00 20 */	addi r1, r1, 0x20
/* 8028FFA4  4E 80 00 20 */	blr 
