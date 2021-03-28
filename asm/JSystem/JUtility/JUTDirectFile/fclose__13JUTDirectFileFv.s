lbl_802E88FC:
/* 802E88FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8900  7C 08 02 A6 */	mflr r0
/* 802E8904  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E890C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E8910  7C 7E 1B 78 */	mr r30, r3
/* 802E8914  88 03 08 30 */	lbz r0, 0x830(r3)
/* 802E8918  28 00 00 00 */	cmplwi r0, 0
/* 802E891C  41 82 00 24 */	beq lbl_802E8940
/* 802E8920  48 05 4D E9 */	bl OSEnableInterrupts
/* 802E8924  7C 7F 1B 78 */	mr r31, r3
/* 802E8928  38 7E 08 34 */	addi r3, r30, 0x834
/* 802E892C  48 06 00 2D */	bl DVDClose
/* 802E8930  7F E3 FB 78 */	mr r3, r31
/* 802E8934  48 05 4D E9 */	bl OSRestoreInterrupts
/* 802E8938  38 00 00 00 */	li r0, 0
/* 802E893C  98 1E 08 30 */	stb r0, 0x830(r30)
lbl_802E8940:
/* 802E8940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E8944  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E8948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E894C  7C 08 03 A6 */	mtlr r0
/* 802E8950  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8954  4E 80 00 20 */	blr 
