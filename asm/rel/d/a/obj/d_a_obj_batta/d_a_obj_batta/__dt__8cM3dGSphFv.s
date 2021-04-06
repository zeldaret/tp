lbl_80BAC6A0:
/* 80BAC6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAC6A4  7C 08 02 A6 */	mflr r0
/* 80BAC6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAC6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAC6B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAC6B4  41 82 00 1C */	beq lbl_80BAC6D0
/* 80BAC6B8  3C A0 80 BB */	lis r5, __vt__8cM3dGSph@ha /* 0x80BACC1C@ha */
/* 80BAC6BC  38 05 CC 1C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BACC1C@l */
/* 80BAC6C0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BAC6C4  7C 80 07 35 */	extsh. r0, r4
/* 80BAC6C8  40 81 00 08 */	ble lbl_80BAC6D0
/* 80BAC6CC  4B 72 26 71 */	bl __dl__FPv
lbl_80BAC6D0:
/* 80BAC6D0  7F E3 FB 78 */	mr r3, r31
/* 80BAC6D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAC6D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC6DC  7C 08 03 A6 */	mtlr r0
/* 80BAC6E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC6E4  4E 80 00 20 */	blr 
