lbl_80272A04:
/* 80272A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272A08  7C 08 02 A6 */	mflr r0
/* 80272A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272A14  93 C1 00 08 */	stw r30, 8(r1)
/* 80272A18  7C 7E 1B 78 */	mr r30, r3
/* 80272A1C  4B FF FC 71 */	bl endGX__10JFWDisplayFv
/* 80272A20  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 80272A24  28 00 00 00 */	cmplwi r0, 0
/* 80272A28  41 82 00 44 */	beq lbl_80272A6C
/* 80272A2C  80 6D 8F D0 */	lwz r3, sManager__6JUTXfb(r13)
/* 80272A30  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80272A34  2C 00 00 02 */	cmpwi r0, 2
/* 80272A38  41 82 00 34 */	beq lbl_80272A6C
/* 80272A3C  40 80 00 10 */	bge lbl_80272A4C
/* 80272A40  2C 00 00 01 */	cmpwi r0, 1
/* 80272A44  40 80 00 14 */	bge lbl_80272A58
/* 80272A48  48 00 00 24 */	b lbl_80272A6C
lbl_80272A4C:
/* 80272A4C  2C 00 00 04 */	cmpwi r0, 4
/* 80272A50  40 80 00 1C */	bge lbl_80272A6C
/* 80272A54  48 00 00 10 */	b lbl_80272A64
lbl_80272A58:
/* 80272A58  7F C3 F3 78 */	mr r3, r30
/* 80272A5C  4B FF F9 51 */	bl drawendXfb_single__10JFWDisplayFv
/* 80272A60  48 00 00 0C */	b lbl_80272A6C
lbl_80272A64:
/* 80272A64  7F C3 F3 78 */	mr r3, r30
/* 80272A68  4B FF FB 0D */	bl copyXfb_triple__10JFWDisplayFv
lbl_80272A6C:
/* 80272A6C  83 ED 8F D8 */	lwz r31, sManager__10JUTProcBar(r13)
/* 80272A70  38 00 00 FF */	li r0, 0xff
/* 80272A74  98 1F 00 38 */	stb r0, 0x38(r31)
/* 80272A78  38 00 00 81 */	li r0, 0x81
/* 80272A7C  98 1F 00 39 */	stb r0, 0x39(r31)
/* 80272A80  38 00 00 1E */	li r0, 0x1e
/* 80272A84  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 80272A88  48 0C FC 8D */	bl OSGetTick
/* 80272A8C  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80272A90  7F C3 F3 78 */	mr r3, r30
/* 80272A94  48 00 08 89 */	bl calcCombinationRatio__10JFWDisplayFv
/* 80272A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272A9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80272AA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272AA4  7C 08 03 A6 */	mtlr r0
/* 80272AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80272AAC  4E 80 00 20 */	blr 
