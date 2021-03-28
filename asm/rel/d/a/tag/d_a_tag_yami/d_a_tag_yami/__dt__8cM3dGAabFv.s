lbl_80D661C0:
/* 80D661C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D661C4  7C 08 02 A6 */	mflr r0
/* 80D661C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D661CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D661D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D661D4  41 82 00 1C */	beq lbl_80D661F0
/* 80D661D8  3C A0 80 D6 */	lis r5, __vt__8cM3dGAab@ha
/* 80D661DC  38 05 62 F4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D661E0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D661E4  7C 80 07 35 */	extsh. r0, r4
/* 80D661E8  40 81 00 08 */	ble lbl_80D661F0
/* 80D661EC  4B 56 8B 50 */	b __dl__FPv
lbl_80D661F0:
/* 80D661F0  7F E3 FB 78 */	mr r3, r31
/* 80D661F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D661F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D661FC  7C 08 03 A6 */	mtlr r0
/* 80D66200  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66204  4E 80 00 20 */	blr 
