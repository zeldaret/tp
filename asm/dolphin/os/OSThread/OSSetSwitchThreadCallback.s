lbl_80340AA8:
/* 80340AA8  7C 08 02 A6 */	mflr r0
/* 80340AAC  90 01 00 04 */	stw r0, 4(r1)
/* 80340AB0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80340AB4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80340AB8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80340ABC  7C 7E 1B 78 */	mr r30, r3
/* 80340AC0  4B FF CC 35 */	bl OSDisableInterrupts
/* 80340AC4  28 1E 00 00 */	cmplwi r30, 0
/* 80340AC8  83 ED 84 38 */	lwz r31, SwitchThreadCallback(r13)
/* 80340ACC  41 82 00 0C */	beq lbl_80340AD8
/* 80340AD0  7F C0 F3 78 */	mr r0, r30
/* 80340AD4  48 00 00 0C */	b lbl_80340AE0
lbl_80340AD8:
/* 80340AD8  3C 80 80 34 */	lis r4, DefaultSwitchThreadCallback@ha /* 0x80340AA4@ha */
/* 80340ADC  38 04 0A A4 */	addi r0, r4, DefaultSwitchThreadCallback@l /* 0x80340AA4@l */
lbl_80340AE0:
/* 80340AE0  90 0D 84 38 */	stw r0, SwitchThreadCallback(r13)
/* 80340AE4  4B FF CC 39 */	bl OSRestoreInterrupts
/* 80340AE8  3C 60 80 34 */	lis r3, DefaultSwitchThreadCallback@ha /* 0x80340AA4@ha */
/* 80340AEC  38 03 0A A4 */	addi r0, r3, DefaultSwitchThreadCallback@l /* 0x80340AA4@l */
/* 80340AF0  7C 1F 00 40 */	cmplw r31, r0
/* 80340AF4  40 82 00 0C */	bne lbl_80340B00
/* 80340AF8  38 60 00 00 */	li r3, 0
/* 80340AFC  48 00 00 08 */	b lbl_80340B04
lbl_80340B00:
/* 80340B00  7F E3 FB 78 */	mr r3, r31
lbl_80340B04:
/* 80340B04  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80340B08  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80340B0C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80340B10  38 21 00 18 */	addi r1, r1, 0x18
/* 80340B14  7C 08 03 A6 */	mtlr r0
/* 80340B18  4E 80 00 20 */	blr 
