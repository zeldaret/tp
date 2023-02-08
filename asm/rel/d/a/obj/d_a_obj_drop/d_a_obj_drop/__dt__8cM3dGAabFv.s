lbl_80BE00A4:
/* 80BE00A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE00A8  7C 08 02 A6 */	mflr r0
/* 80BE00AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE00B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE00B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE00B8  41 82 00 1C */	beq lbl_80BE00D4
/* 80BE00BC  3C A0 80 BE */	lis r5, __vt__8cM3dGAab@ha /* 0x80BE2208@ha */
/* 80BE00C0  38 05 22 08 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BE2208@l */
/* 80BE00C4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BE00C8  7C 80 07 35 */	extsh. r0, r4
/* 80BE00CC  40 81 00 08 */	ble lbl_80BE00D4
/* 80BE00D0  4B 6E EC 6D */	bl __dl__FPv
lbl_80BE00D4:
/* 80BE00D4  7F E3 FB 78 */	mr r3, r31
/* 80BE00D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE00DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE00E0  7C 08 03 A6 */	mtlr r0
/* 80BE00E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE00E8  4E 80 00 20 */	blr 
