lbl_8033CCFC:
/* 8033CCFC  7C 08 02 A6 */	mflr r0
/* 8033CD00  90 01 00 04 */	stw r0, 4(r1)
/* 8033CD04  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8033CD08  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8033CD0C  80 6D 90 DC */	lwz r3, apploaderPosition(r13)
/* 8033CD10  2C 03 00 00 */	cmpwi r3, 0
/* 8033CD14  41 82 00 08 */	beq lbl_8033CD1C
/* 8033CD18  48 00 00 94 */	b lbl_8033CDAC
lbl_8033CD1C:
/* 8033CD1C  3F E0 80 00 */	lis r31, 0x8000 /* 0x800030F4@ha */
/* 8033CD20  80 1F 30 F4 */	lwz r0, 0x30F4(r31)  /* 0x800030F4@l */
/* 8033CD24  2C 00 00 00 */	cmpwi r0, 0
/* 8033CD28  41 82 00 78 */	beq lbl_8033CDA0
/* 8033CD2C  38 60 00 40 */	li r3, 0x40
/* 8033CD30  38 80 00 20 */	li r4, 0x20
/* 8033CD34  4B FF E5 79 */	bl OSAllocFromArenaLo
/* 8033CD38  80 DF 30 F4 */	lwz r6, 0x30f4(r31)
/* 8033CD3C  7C 7F 1B 78 */	mr r31, r3
/* 8033CD40  7F E4 FB 78 */	mr r4, r31
/* 8033CD44  38 61 00 08 */	addi r3, r1, 8
/* 8033CD48  38 A0 00 40 */	li r5, 0x40
/* 8033CD4C  38 E0 00 00 */	li r7, 0
/* 8033CD50  39 00 00 00 */	li r8, 0
/* 8033CD54  48 00 DF D9 */	bl DVDReadAbsAsyncPrio
/* 8033CD58  48 00 00 04 */	b lbl_8033CD5C
lbl_8033CD5C:
/* 8033CD5C  48 00 00 04 */	b lbl_8033CD60
lbl_8033CD60:
/* 8033CD60  48 00 00 18 */	b lbl_8033CD78
lbl_8033CD64:
/* 8033CD64  48 00 E8 C5 */	bl DVDCheckDisk
/* 8033CD68  2C 03 00 00 */	cmpwi r3, 0
/* 8033CD6C  40 82 00 0C */	bne lbl_8033CD78
/* 8033CD70  38 60 00 00 */	li r3, 0
/* 8033CD74  48 00 2A F1 */	bl __OSDoHotReset
lbl_8033CD78:
/* 8033CD78  38 61 00 08 */	addi r3, r1, 8
/* 8033CD7C  48 00 E4 01 */	bl DVDGetCommandBlockStatus
/* 8033CD80  2C 03 00 00 */	cmpwi r3, 0
/* 8033CD84  40 82 FF E0 */	bne lbl_8033CD64
/* 8033CD88  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030F4@ha */
/* 8033CD8C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 8033CD90  80 63 30 F4 */	lwz r3, 0x30F4(r3)  /* 0x800030F4@l */
/* 8033CD94  7C 03 02 14 */	add r0, r3, r0
/* 8033CD98  90 0D 90 DC */	stw r0, apploaderPosition(r13)
/* 8033CD9C  48 00 00 0C */	b lbl_8033CDA8
lbl_8033CDA0:
/* 8033CDA0  38 00 24 40 */	li r0, 0x2440
/* 8033CDA4  90 0D 90 DC */	stw r0, apploaderPosition(r13)
lbl_8033CDA8:
/* 8033CDA8  80 6D 90 DC */	lwz r3, apploaderPosition(r13)
lbl_8033CDAC:
/* 8033CDAC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8033CDB0  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 8033CDB4  38 21 00 48 */	addi r1, r1, 0x48
/* 8033CDB8  7C 08 03 A6 */	mtlr r0
/* 8033CDBC  4E 80 00 20 */	blr 
