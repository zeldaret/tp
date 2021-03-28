lbl_801D1094:
/* 801D1094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D1098  7C 08 02 A6 */	mflr r0
/* 801D109C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D10A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D10A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801D10A8  7C 7E 1B 78 */	mr r30, r3
/* 801D10AC  7C 9F 23 78 */	mr r31, r4
/* 801D10B0  80 03 0C D4 */	lwz r0, 0xcd4(r3)
/* 801D10B4  28 00 00 00 */	cmplwi r0, 0
/* 801D10B8  40 82 00 24 */	bne lbl_801D10DC
/* 801D10BC  38 60 01 50 */	li r3, 0x150
/* 801D10C0  48 0F DB 8D */	bl __nw__FUl
/* 801D10C4  7C 60 1B 79 */	or. r0, r3, r3
/* 801D10C8  41 82 00 10 */	beq lbl_801D10D8
/* 801D10CC  7F E4 FB 78 */	mr r4, r31
/* 801D10D0  48 12 B6 39 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801D10D4  7C 60 1B 78 */	mr r0, r3
lbl_801D10D8:
/* 801D10D8  90 1E 0C D4 */	stw r0, 0xcd4(r30)
lbl_801D10DC:
/* 801D10DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D10E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D10E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D10E8  7C 08 03 A6 */	mtlr r0
/* 801D10EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D10F0  4E 80 00 20 */	blr 
