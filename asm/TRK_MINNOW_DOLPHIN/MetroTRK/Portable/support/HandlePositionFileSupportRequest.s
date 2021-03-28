lbl_8036ED84:
/* 8036ED84  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8036ED88  7C 08 02 A6 */	mflr r0
/* 8036ED8C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8036ED90  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8036ED94  7C BF 2B 78 */	mr r31, r5
/* 8036ED98  38 A0 00 40 */	li r5, 0x40
/* 8036ED9C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8036EDA0  7C DE 33 78 */	mr r30, r6
/* 8036EDA4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8036EDA8  7C 9D 23 78 */	mr r29, r4
/* 8036EDAC  38 80 00 00 */	li r4, 0
/* 8036EDB0  93 81 00 60 */	stw r28, 0x60(r1)
/* 8036EDB4  7C 7C 1B 78 */	mr r28, r3
/* 8036EDB8  38 61 00 14 */	addi r3, r1, 0x14
/* 8036EDBC  4B C9 46 9D */	bl memset
/* 8036EDC0  38 60 00 D4 */	li r3, 0xd4
/* 8036EDC4  38 00 00 40 */	li r0, 0x40
/* 8036EDC8  98 61 00 18 */	stb r3, 0x18(r1)
/* 8036EDCC  38 61 00 0C */	addi r3, r1, 0xc
/* 8036EDD0  38 81 00 08 */	addi r4, r1, 8
/* 8036EDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036EDD8  93 81 00 1C */	stw r28, 0x1c(r1)
/* 8036EDDC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8036EDE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8036EDE4  9B E1 00 24 */	stb r31, 0x24(r1)
/* 8036EDE8  4B FF E9 35 */	bl TRKGetFreeBuffer
/* 8036EDEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036EDF0  40 82 00 18 */	bne lbl_8036EE08
/* 8036EDF4  80 61 00 08 */	lwz r3, 8(r1)
/* 8036EDF8  38 81 00 14 */	addi r4, r1, 0x14
/* 8036EDFC  38 A0 00 40 */	li r5, 0x40
/* 8036EE00  4B FF E5 89 */	bl TRKAppendBuffer_ui8
/* 8036EE04  7C 7F 1B 78 */	mr r31, r3
lbl_8036EE08:
/* 8036EE08  2C 1F 00 00 */	cmpwi r31, 0
/* 8036EE0C  40 82 00 5C */	bne lbl_8036EE68
/* 8036EE10  38 60 00 00 */	li r3, 0
/* 8036EE14  38 00 FF FF */	li r0, -1
/* 8036EE18  90 7E 00 00 */	stw r3, 0(r30)
/* 8036EE1C  38 81 00 10 */	addi r4, r1, 0x10
/* 8036EE20  38 A0 00 03 */	li r5, 3
/* 8036EE24  38 C0 00 03 */	li r6, 3
/* 8036EE28  90 1D 00 00 */	stw r0, 0(r29)
/* 8036EE2C  38 E0 00 00 */	li r7, 0
/* 8036EE30  80 61 00 08 */	lwz r3, 8(r1)
/* 8036EE34  48 00 02 65 */	bl TRKRequestSend
/* 8036EE38  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036EE3C  40 82 00 24 */	bne lbl_8036EE60
/* 8036EE40  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036EE44  4B FF E8 AD */	bl TRKGetBuffer
/* 8036EE48  28 03 00 00 */	cmplwi r3, 0
/* 8036EE4C  41 82 00 14 */	beq lbl_8036EE60
/* 8036EE50  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8036EE54  90 1E 00 00 */	stw r0, 0(r30)
/* 8036EE58  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8036EE5C  90 1D 00 00 */	stw r0, 0(r29)
lbl_8036EE60:
/* 8036EE60  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036EE64  4B FF E8 29 */	bl TRKReleaseBuffer
lbl_8036EE68:
/* 8036EE68  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036EE6C  4B FF E8 21 */	bl TRKReleaseBuffer
/* 8036EE70  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8036EE74  7F E3 FB 78 */	mr r3, r31
/* 8036EE78  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8036EE7C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8036EE80  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8036EE84  83 81 00 60 */	lwz r28, 0x60(r1)
/* 8036EE88  7C 08 03 A6 */	mtlr r0
/* 8036EE8C  38 21 00 70 */	addi r1, r1, 0x70
/* 8036EE90  4E 80 00 20 */	blr 
