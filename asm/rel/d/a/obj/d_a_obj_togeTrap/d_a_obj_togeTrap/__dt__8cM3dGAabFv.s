lbl_80D181A0:
/* 80D181A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D181A4  7C 08 02 A6 */	mflr r0
/* 80D181A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D181AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D181B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D181B4  41 82 00 1C */	beq lbl_80D181D0
/* 80D181B8  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D1903C@ha */
/* 80D181BC  38 05 90 3C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D1903C@l */
/* 80D181C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D181C4  7C 80 07 35 */	extsh. r0, r4
/* 80D181C8  40 81 00 08 */	ble lbl_80D181D0
/* 80D181CC  4B 5B 6B 71 */	bl __dl__FPv
lbl_80D181D0:
/* 80D181D0  7F E3 FB 78 */	mr r3, r31
/* 80D181D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D181D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D181DC  7C 08 03 A6 */	mtlr r0
/* 80D181E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D181E4  4E 80 00 20 */	blr 
