lbl_800EC170:
/* 800EC170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC174  7C 08 02 A6 */	mflr r0
/* 800EC178  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC17C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC180  7C 7F 1B 78 */	mr r31, r3
/* 800EC184  38 00 00 04 */	li r0, 4
/* 800EC188  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800EC18C  4B FF E6 B9 */	bl checkSumouVsActor__9daAlink_cFv
/* 800EC190  2C 03 00 00 */	cmpwi r3, 0
/* 800EC194  40 82 00 0C */	bne lbl_800EC1A0
/* 800EC198  38 60 00 01 */	li r3, 1
/* 800EC19C  48 00 00 5C */	b lbl_800EC1F8
lbl_800EC1A0:
/* 800EC1A0  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800EC1A4  38 03 FF FF */	addi r0, r3, -1
/* 800EC1A8  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800EC1AC  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800EC1B0  28 00 00 1C */	cmplwi r0, 0x1c
/* 800EC1B4  41 82 00 14 */	beq lbl_800EC1C8
/* 800EC1B8  28 00 00 21 */	cmplwi r0, 0x21
/* 800EC1BC  41 82 00 0C */	beq lbl_800EC1C8
/* 800EC1C0  28 00 00 1B */	cmplwi r0, 0x1b
/* 800EC1C4  40 82 00 1C */	bne lbl_800EC1E0
lbl_800EC1C8:
/* 800EC1C8  7F E3 FB 78 */	mr r3, r31
/* 800EC1CC  38 80 00 00 */	li r4, 0
/* 800EC1D0  38 A0 00 00 */	li r5, 0
/* 800EC1D4  38 C0 00 00 */	li r6, 0
/* 800EC1D8  4B FF F4 4D */	bl procSumouActionInit__9daAlink_cFiii
/* 800EC1DC  48 00 00 18 */	b lbl_800EC1F4
lbl_800EC1E0:
/* 800EC1E0  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800EC1E4  2C 00 00 00 */	cmpwi r0, 0
/* 800EC1E8  40 82 00 0C */	bne lbl_800EC1F4
/* 800EC1EC  7F E3 FB 78 */	mr r3, r31
/* 800EC1F0  4B FF F0 19 */	bl procSumouSideMoveInit__9daAlink_cFv
lbl_800EC1F4:
/* 800EC1F4  38 60 00 01 */	li r3, 1
lbl_800EC1F8:
/* 800EC1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC200  7C 08 03 A6 */	mtlr r0
/* 800EC204  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC208  4E 80 00 20 */	blr 
