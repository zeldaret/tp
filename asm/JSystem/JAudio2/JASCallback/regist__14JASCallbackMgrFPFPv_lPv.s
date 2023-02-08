lbl_8028FFA8:
/* 8028FFA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028FFAC  7C 08 02 A6 */	mflr r0
/* 8028FFB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028FFB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FFB8  48 0D 22 25 */	bl _savegpr_29
/* 8028FFBC  7C 7D 1B 78 */	mr r29, r3
/* 8028FFC0  7C 9E 23 78 */	mr r30, r4
/* 8028FFC4  7C BF 2B 78 */	mr r31, r5
/* 8028FFC8  48 0A D7 2D */	bl OSDisableInterrupts
/* 8028FFCC  90 61 00 08 */	stw r3, 8(r1)
/* 8028FFD0  38 60 00 00 */	li r3, 0
/* 8028FFD4  38 00 00 20 */	li r0, 0x20
/* 8028FFD8  7C 09 03 A6 */	mtctr r0
lbl_8028FFDC:
/* 8028FFDC  7C 9D 1A 14 */	add r4, r29, r3
/* 8028FFE0  80 04 00 00 */	lwz r0, 0(r4)
/* 8028FFE4  28 00 00 00 */	cmplwi r0, 0
/* 8028FFE8  40 82 00 1C */	bne lbl_80290004
/* 8028FFEC  93 C4 00 00 */	stw r30, 0(r4)
/* 8028FFF0  93 E4 00 04 */	stw r31, 4(r4)
/* 8028FFF4  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FFF8  48 0A D7 25 */	bl OSRestoreInterrupts
/* 8028FFFC  38 60 00 01 */	li r3, 1
/* 80290000  48 00 00 18 */	b lbl_80290018
lbl_80290004:
/* 80290004  38 63 00 08 */	addi r3, r3, 8
/* 80290008  42 00 FF D4 */	bdnz lbl_8028FFDC
/* 8029000C  80 61 00 08 */	lwz r3, 8(r1)
/* 80290010  48 0A D7 0D */	bl OSRestoreInterrupts
/* 80290014  38 60 00 00 */	li r3, 0
lbl_80290018:
/* 80290018  39 61 00 20 */	addi r11, r1, 0x20
/* 8029001C  48 0D 22 0D */	bl _restgpr_29
/* 80290020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80290024  7C 08 03 A6 */	mtlr r0
/* 80290028  38 21 00 20 */	addi r1, r1, 0x20
/* 8029002C  4E 80 00 20 */	blr 
