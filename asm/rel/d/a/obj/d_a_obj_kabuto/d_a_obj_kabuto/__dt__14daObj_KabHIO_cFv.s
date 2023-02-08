lbl_80C2E068:
/* 80C2E068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E06C  7C 08 02 A6 */	mflr r0
/* 80C2E070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2E078  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C2E07C  41 82 00 1C */	beq lbl_80C2E098
/* 80C2E080  3C A0 80 C3 */	lis r5, __vt__14daObj_KabHIO_c@ha /* 0x80C2E2D8@ha */
/* 80C2E084  38 05 E2 D8 */	addi r0, r5, __vt__14daObj_KabHIO_c@l /* 0x80C2E2D8@l */
/* 80C2E088  90 1F 00 00 */	stw r0, 0(r31)
/* 80C2E08C  7C 80 07 35 */	extsh. r0, r4
/* 80C2E090  40 81 00 08 */	ble lbl_80C2E098
/* 80C2E094  4B 6A 0C A9 */	bl __dl__FPv
lbl_80C2E098:
/* 80C2E098  7F E3 FB 78 */	mr r3, r31
/* 80C2E09C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2E0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E0A4  7C 08 03 A6 */	mtlr r0
/* 80C2E0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E0AC  4E 80 00 20 */	blr 
