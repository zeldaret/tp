lbl_80BF32B8:
/* 80BF32B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF32BC  7C 08 02 A6 */	mflr r0
/* 80BF32C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF32C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF32C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF32CC  41 82 00 1C */	beq lbl_80BF32E8
/* 80BF32D0  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha
/* 80BF32D4  38 05 4B 54 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BF32D8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BF32DC  7C 80 07 35 */	extsh. r0, r4
/* 80BF32E0  40 81 00 08 */	ble lbl_80BF32E8
/* 80BF32E4  4B 6D BA 58 */	b __dl__FPv
lbl_80BF32E8:
/* 80BF32E8  7F E3 FB 78 */	mr r3, r31
/* 80BF32EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF32F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF32F4  7C 08 03 A6 */	mtlr r0
/* 80BF32F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF32FC  4E 80 00 20 */	blr 
