lbl_8034FBF4:
/* 8034FBF4  7C 08 02 A6 */	mflr r0
/* 8034FBF8  90 01 00 04 */	stw r0, 4(r1)
/* 8034FBFC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034FC00  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034FC04  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034FC08  7C 7E 1B 78 */	mr r30, r3
/* 8034FC0C  4B FE DA E9 */	bl OSDisableInterrupts
/* 8034FC10  3C 80 80 00 */	lis r4, 0x8000 /* 0x800030E3@ha */
/* 8034FC14  88 04 30 E3 */	lbz r0, 0x30E3(r4)  /* 0x800030E3@l */
/* 8034FC18  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8034FC1C  41 82 00 0C */	beq lbl_8034FC28
/* 8034FC20  3B E0 00 01 */	li r31, 1
/* 8034FC24  48 00 00 08 */	b lbl_8034FC2C
lbl_8034FC28:
/* 8034FC28  3B E0 00 00 */	li r31, 0
lbl_8034FC2C:
/* 8034FC2C  3C 80 80 00 */	lis r4, 0x8000 /* 0x800030E3@ha */
/* 8034FC30  88 04 30 E3 */	lbz r0, 0x30E3(r4)  /* 0x800030E3@l */
/* 8034FC34  2C 1E 00 00 */	cmpwi r30, 0
/* 8034FC38  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8034FC3C  98 04 30 E3 */	stb r0, 0x30e3(r4)
/* 8034FC40  41 82 00 10 */	beq lbl_8034FC50
/* 8034FC44  88 04 30 E3 */	lbz r0, 0x30e3(r4)
/* 8034FC48  60 00 00 40 */	ori r0, r0, 0x40
/* 8034FC4C  98 04 30 E3 */	stb r0, 0x30e3(r4)
lbl_8034FC50:
/* 8034FC50  4B FE DA CD */	bl OSRestoreInterrupts
/* 8034FC54  7F E3 FB 78 */	mr r3, r31
/* 8034FC58  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034FC5C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034FC60  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034FC64  38 21 00 18 */	addi r1, r1, 0x18
/* 8034FC68  7C 08 03 A6 */	mtlr r0
/* 8034FC6C  4E 80 00 20 */	blr 
