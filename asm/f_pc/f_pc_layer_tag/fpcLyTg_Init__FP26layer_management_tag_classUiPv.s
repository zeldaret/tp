lbl_80021EB0:
/* 80021EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021EB4  7C 08 02 A6 */	mflr r0
/* 80021EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80021EC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80021EC4  7C 7E 1B 78 */	mr r30, r3
/* 80021EC8  7C 9F 23 78 */	mr r31, r4
/* 80021ECC  38 DE FF FC */	addi r6, r30, -4
/* 80021ED0  3C 60 80 3A */	lis r3, crear@ha
/* 80021ED4  38 63 3A 00 */	addi r3, r3, crear@l
/* 80021ED8  38 83 FF FC */	addi r4, r3, -4
/* 80021EDC  38 00 00 02 */	li r0, 2
/* 80021EE0  7C 09 03 A6 */	mtctr r0
lbl_80021EE4:
/* 80021EE4  80 64 00 04 */	lwz r3, 4(r4)
/* 80021EE8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80021EEC  90 66 00 04 */	stw r3, 4(r6)
/* 80021EF0  94 06 00 08 */	stwu r0, 8(r6)
/* 80021EF4  42 00 FF F0 */	bdnz lbl_80021EE4
/* 80021EF8  80 04 00 04 */	lwz r0, 4(r4)
/* 80021EFC  90 06 00 04 */	stw r0, 4(r6)
/* 80021F00  3C 60 80 3A */	lis r3, crear@ha
/* 80021F04  38 63 3A 00 */	addi r3, r3, crear@l
/* 80021F08  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80021F0C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80021F10  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 80021F14  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 80021F18  A0 03 00 1A */	lhz r0, 0x1a(r3)
/* 80021F1C  B0 1E 00 1A */	sth r0, 0x1a(r30)
/* 80021F20  7F C3 F3 78 */	mr r3, r30
/* 80021F24  7C A4 2B 78 */	mr r4, r5
/* 80021F28  48 24 4B 0D */	bl cTg_Create__FP16create_tag_classPv
/* 80021F2C  7F E3 FB 78 */	mr r3, r31
/* 80021F30  4B FF F8 1D */	bl fpcLy_Layer__FUi
/* 80021F34  28 03 00 00 */	cmplwi r3, 0
/* 80021F38  41 82 00 10 */	beq lbl_80021F48
/* 80021F3C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80021F40  38 60 00 01 */	li r3, 1
/* 80021F44  48 00 00 08 */	b lbl_80021F4C
lbl_80021F48:
/* 80021F48  38 60 00 00 */	li r3, 0
lbl_80021F4C:
/* 80021F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80021F50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80021F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021F58  7C 08 03 A6 */	mtlr r0
/* 80021F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80021F60  4E 80 00 20 */	blr 
