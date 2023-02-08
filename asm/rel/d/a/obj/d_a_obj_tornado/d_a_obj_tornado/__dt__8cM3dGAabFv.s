lbl_80D1C0A8:
/* 80D1C0A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C0AC  7C 08 02 A6 */	mflr r0
/* 80D1C0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1C0B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1C0BC  41 82 00 1C */	beq lbl_80D1C0D8
/* 80D1C0C0  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D1C450@ha */
/* 80D1C0C4  38 05 C4 50 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D1C450@l */
/* 80D1C0C8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D1C0CC  7C 80 07 35 */	extsh. r0, r4
/* 80D1C0D0  40 81 00 08 */	ble lbl_80D1C0D8
/* 80D1C0D4  4B 5B 2C 69 */	bl __dl__FPv
lbl_80D1C0D8:
/* 80D1C0D8  7F E3 FB 78 */	mr r3, r31
/* 80D1C0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1C0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C0E4  7C 08 03 A6 */	mtlr r0
/* 80D1C0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C0EC  4E 80 00 20 */	blr 
