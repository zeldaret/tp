lbl_80024F98:
/* 80024F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024F9C  7C 08 02 A6 */	mflr r0
/* 80024FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80024FAC  7C 9E 23 78 */	mr r30, r4
/* 80024FB0  7C BF 2B 78 */	mr r31, r5
/* 80024FB4  38 60 FF FC */	li r3, -4
/* 80024FB8  38 80 00 18 */	li r4, 0x18
/* 80024FBC  48 23 E2 6D */	bl memalignB__3cMlFiUl
/* 80024FC0  7C 65 1B 79 */	or. r5, r3, r3
/* 80024FC4  41 82 00 24 */	beq lbl_80024FE8
/* 80024FC8  C0 02 82 90 */	lfs f0, lit_4270(r2)
/* 80024FCC  D0 05 00 04 */	stfs f0, 4(r5)
/* 80024FD0  D0 05 00 08 */	stfs f0, 8(r5)
/* 80024FD4  D0 05 00 04 */	stfs f0, 4(r5)
/* 80024FD8  93 E5 00 00 */	stw r31, 0(r5)
/* 80024FDC  7F C3 F3 78 */	mr r3, r30
/* 80024FE0  38 80 03 0D */	li r4, 0x30d
/* 80024FE4  4B FF 93 2D */	bl fopCamM_Create__FisPv
lbl_80024FE8:
/* 80024FE8  38 60 00 01 */	li r3, 1
/* 80024FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024FF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024FF8  7C 08 03 A6 */	mtlr r0
/* 80024FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80025000  4E 80 00 20 */	blr 
