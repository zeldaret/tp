lbl_80C3EEE0:
/* 80C3EEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EEE4  7C 08 02 A6 */	mflr r0
/* 80C3EEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3EEF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3EEF4  41 82 00 1C */	beq lbl_80C3EF10
/* 80C3EEF8  3C A0 80 C4 */	lis r5, __vt__8cM3dGAab@ha
/* 80C3EEFC  38 05 F1 D0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C3EF00  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C3EF04  7C 80 07 35 */	extsh. r0, r4
/* 80C3EF08  40 81 00 08 */	ble lbl_80C3EF10
/* 80C3EF0C  4B 68 FE 30 */	b __dl__FPv
lbl_80C3EF10:
/* 80C3EF10  7F E3 FB 78 */	mr r3, r31
/* 80C3EF14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3EF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EF1C  7C 08 03 A6 */	mtlr r0
/* 80C3EF20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3EF24  4E 80 00 20 */	blr 
