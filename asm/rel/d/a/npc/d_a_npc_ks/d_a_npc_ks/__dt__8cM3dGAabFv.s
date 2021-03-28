lbl_80A5D8C4:
/* 80A5D8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5D8C8  7C 08 02 A6 */	mflr r0
/* 80A5D8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5D8D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5D8D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A5D8D8  41 82 00 1C */	beq lbl_80A5D8F4
/* 80A5D8DC  3C A0 80 A6 */	lis r5, __vt__8cM3dGAab@ha
/* 80A5D8E0  38 05 FD F4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A5D8E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A5D8E8  7C 80 07 35 */	extsh. r0, r4
/* 80A5D8EC  40 81 00 08 */	ble lbl_80A5D8F4
/* 80A5D8F0  4B 87 14 4C */	b __dl__FPv
lbl_80A5D8F4:
/* 80A5D8F4  7F E3 FB 78 */	mr r3, r31
/* 80A5D8F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5D8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5D900  7C 08 03 A6 */	mtlr r0
/* 80A5D904  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5D908  4E 80 00 20 */	blr 
