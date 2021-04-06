lbl_8034B1C8:
/* 8034B1C8  7C 08 02 A6 */	mflr r0
/* 8034B1CC  90 01 00 04 */	stw r0, 4(r1)
/* 8034B1D0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B1D4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B1D8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034B1DC  4B FF 25 19 */	bl OSDisableInterrupts
/* 8034B1E0  80 0D 92 10 */	lwz r0, FatalErrorFlag(r13)
/* 8034B1E4  3B C3 00 00 */	addi r30, r3, 0
/* 8034B1E8  2C 00 00 00 */	cmpwi r0, 0
/* 8034B1EC  41 82 00 0C */	beq lbl_8034B1F8
/* 8034B1F0  3B E0 FF FF */	li r31, -1
/* 8034B1F4  48 00 00 5C */	b lbl_8034B250
lbl_8034B1F8:
/* 8034B1F8  80 0D 92 08 */	lwz r0, PausingFlag(r13)
/* 8034B1FC  2C 00 00 00 */	cmpwi r0, 0
/* 8034B200  41 82 00 0C */	beq lbl_8034B20C
/* 8034B204  3B E0 00 08 */	li r31, 8
/* 8034B208  48 00 00 48 */	b lbl_8034B250
lbl_8034B20C:
/* 8034B20C  83 ED 91 F8 */	lwz r31, executing(r13)
/* 8034B210  28 1F 00 00 */	cmplwi r31, 0
/* 8034B214  40 82 00 0C */	bne lbl_8034B220
/* 8034B218  3B E0 00 00 */	li r31, 0
/* 8034B21C  48 00 00 34 */	b lbl_8034B250
lbl_8034B220:
/* 8034B220  3C 60 80 45 */	lis r3, DummyCommandBlock@ha /* 0x8044C940@ha */
/* 8034B224  38 03 C9 40 */	addi r0, r3, DummyCommandBlock@l /* 0x8044C940@l */
/* 8034B228  7C 1F 00 40 */	cmplw r31, r0
/* 8034B22C  40 82 00 0C */	bne lbl_8034B238
/* 8034B230  3B E0 00 00 */	li r31, 0
/* 8034B234  48 00 00 1C */	b lbl_8034B250
lbl_8034B238:
/* 8034B238  4B FF 24 BD */	bl OSDisableInterrupts
/* 8034B23C  83 FF 00 0C */	lwz r31, 0xc(r31)
/* 8034B240  2C 1F 00 03 */	cmpwi r31, 3
/* 8034B244  40 82 00 08 */	bne lbl_8034B24C
/* 8034B248  3B E0 00 01 */	li r31, 1
lbl_8034B24C:
/* 8034B24C  4B FF 24 D1 */	bl OSRestoreInterrupts
lbl_8034B250:
/* 8034B250  7F C3 F3 78 */	mr r3, r30
/* 8034B254  4B FF 24 C9 */	bl OSRestoreInterrupts
/* 8034B258  7F E3 FB 78 */	mr r3, r31
/* 8034B25C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B260  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B264  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034B268  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B26C  7C 08 03 A6 */	mtlr r0
/* 8034B270  4E 80 00 20 */	blr 
