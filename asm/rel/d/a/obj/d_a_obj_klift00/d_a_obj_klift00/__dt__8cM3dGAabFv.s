lbl_8058C1AC:
/* 8058C1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C1B0  7C 08 02 A6 */	mflr r0
/* 8058C1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C1B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C1BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058C1C0  41 82 00 1C */	beq lbl_8058C1DC
/* 8058C1C4  3C A0 80 59 */	lis r5, __vt__8cM3dGAab@ha /* 0x8058C500@ha */
/* 8058C1C8  38 05 C5 00 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8058C500@l */
/* 8058C1CC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8058C1D0  7C 80 07 35 */	extsh. r0, r4
/* 8058C1D4  40 81 00 08 */	ble lbl_8058C1DC
/* 8058C1D8  4B D4 2B 65 */	bl __dl__FPv
lbl_8058C1DC:
/* 8058C1DC  7F E3 FB 78 */	mr r3, r31
/* 8058C1E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C1E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C1E8  7C 08 03 A6 */	mtlr r0
/* 8058C1EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C1F0  4E 80 00 20 */	blr 
