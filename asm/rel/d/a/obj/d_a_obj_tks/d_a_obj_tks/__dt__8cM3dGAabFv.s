lbl_80D0F438:
/* 80D0F438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0F43C  7C 08 02 A6 */	mflr r0
/* 80D0F440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0F444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0F448  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0F44C  41 82 00 1C */	beq lbl_80D0F468
/* 80D0F450  3C A0 80 D1 */	lis r5, __vt__8cM3dGAab@ha
/* 80D0F454  38 05 2A CC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D0F458  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D0F45C  7C 80 07 35 */	extsh. r0, r4
/* 80D0F460  40 81 00 08 */	ble lbl_80D0F468
/* 80D0F464  4B 5B F8 D8 */	b __dl__FPv
lbl_80D0F468:
/* 80D0F468  7F E3 FB 78 */	mr r3, r31
/* 80D0F46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0F470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0F474  7C 08 03 A6 */	mtlr r0
/* 80D0F478  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0F47C  4E 80 00 20 */	blr 
