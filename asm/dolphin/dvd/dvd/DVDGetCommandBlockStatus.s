lbl_8034B17C:
/* 8034B17C  7C 08 02 A6 */	mflr r0
/* 8034B180  90 01 00 04 */	stw r0, 4(r1)
/* 8034B184  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B188  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B18C  7C 7F 1B 78 */	mr r31, r3
/* 8034B190  4B FF 25 65 */	bl OSDisableInterrupts
/* 8034B194  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8034B198  2C 00 00 03 */	cmpwi r0, 3
/* 8034B19C  40 82 00 0C */	bne lbl_8034B1A8
/* 8034B1A0  3B E0 00 01 */	li r31, 1
/* 8034B1A4  48 00 00 08 */	b lbl_8034B1AC
lbl_8034B1A8:
/* 8034B1A8  7C 1F 03 78 */	mr r31, r0
lbl_8034B1AC:
/* 8034B1AC  4B FF 25 71 */	bl OSRestoreInterrupts
/* 8034B1B0  7F E3 FB 78 */	mr r3, r31
/* 8034B1B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B1B8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B1BC  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B1C0  7C 08 03 A6 */	mtlr r0
/* 8034B1C4  4E 80 00 20 */	blr 
