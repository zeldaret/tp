lbl_807BA0C4:
/* 807BA0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA0C8  7C 08 02 A6 */	mflr r0
/* 807BA0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA0D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BA0D8  41 82 00 1C */	beq lbl_807BA0F4
/* 807BA0DC  3C A0 80 7C */	lis r5, __vt__8cM3dGSph@ha /* 0x807BA3E8@ha */
/* 807BA0E0  38 05 A3 E8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807BA3E8@l */
/* 807BA0E4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807BA0E8  7C 80 07 35 */	extsh. r0, r4
/* 807BA0EC  40 81 00 08 */	ble lbl_807BA0F4
/* 807BA0F0  4B B1 4C 4D */	bl __dl__FPv
lbl_807BA0F4:
/* 807BA0F4  7F E3 FB 78 */	mr r3, r31
/* 807BA0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA100  7C 08 03 A6 */	mtlr r0
/* 807BA104  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA108  4E 80 00 20 */	blr 
