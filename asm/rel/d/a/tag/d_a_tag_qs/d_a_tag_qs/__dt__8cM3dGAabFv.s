lbl_80D5E1B4:
/* 80D5E1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5E1B8  7C 08 02 A6 */	mflr r0
/* 80D5E1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5E1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5E1C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5E1C8  41 82 00 1C */	beq lbl_80D5E1E4
/* 80D5E1CC  3C A0 80 D6 */	lis r5, __vt__8cM3dGAab@ha
/* 80D5E1D0  38 05 ED D8 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D5E1D4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D5E1D8  7C 80 07 35 */	extsh. r0, r4
/* 80D5E1DC  40 81 00 08 */	ble lbl_80D5E1E4
/* 80D5E1E0  4B 57 0B 5C */	b __dl__FPv
lbl_80D5E1E4:
/* 80D5E1E4  7F E3 FB 78 */	mr r3, r31
/* 80D5E1E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5E1EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5E1F0  7C 08 03 A6 */	mtlr r0
/* 80D5E1F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5E1F8  4E 80 00 20 */	blr 
