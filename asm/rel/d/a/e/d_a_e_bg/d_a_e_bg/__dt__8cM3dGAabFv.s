lbl_8068A0C4:
/* 8068A0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068A0C8  7C 08 02 A6 */	mflr r0
/* 8068A0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068A0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068A0D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068A0D8  41 82 00 1C */	beq lbl_8068A0F4
/* 8068A0DC  3C A0 80 69 */	lis r5, __vt__8cM3dGAab@ha /* 0x8068A468@ha */
/* 8068A0E0  38 05 A4 68 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8068A468@l */
/* 8068A0E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8068A0E8  7C 80 07 35 */	extsh. r0, r4
/* 8068A0EC  40 81 00 08 */	ble lbl_8068A0F4
/* 8068A0F0  4B C4 4C 4D */	bl __dl__FPv
lbl_8068A0F4:
/* 8068A0F4  7F E3 FB 78 */	mr r3, r31
/* 8068A0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068A0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068A100  7C 08 03 A6 */	mtlr r0
/* 8068A104  38 21 00 10 */	addi r1, r1, 0x10
/* 8068A108  4E 80 00 20 */	blr 
