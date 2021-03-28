lbl_80AE5F84:
/* 80AE5F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5F88  7C 08 02 A6 */	mflr r0
/* 80AE5F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5F94  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE5F98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE5F9C  7C 9F 23 78 */	mr r31, r4
/* 80AE5FA0  41 82 00 38 */	beq lbl_80AE5FD8
/* 80AE5FA4  3C 80 80 AE */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AE5FA8  38 84 76 DC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AE5FAC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AE5FB0  38 04 00 0C */	addi r0, r4, 0xc
/* 80AE5FB4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AE5FB8  38 04 00 18 */	addi r0, r4, 0x18
/* 80AE5FBC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AE5FC0  38 80 00 00 */	li r4, 0
/* 80AE5FC4  4B 58 FF D0 */	b __dt__9dBgS_AcchFv
/* 80AE5FC8  7F E0 07 35 */	extsh. r0, r31
/* 80AE5FCC  40 81 00 0C */	ble lbl_80AE5FD8
/* 80AE5FD0  7F C3 F3 78 */	mr r3, r30
/* 80AE5FD4  4B 7E 8D 68 */	b __dl__FPv
lbl_80AE5FD8:
/* 80AE5FD8  7F C3 F3 78 */	mr r3, r30
/* 80AE5FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5FE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE5FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5FE8  7C 08 03 A6 */	mtlr r0
/* 80AE5FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5FF0  4E 80 00 20 */	blr 
