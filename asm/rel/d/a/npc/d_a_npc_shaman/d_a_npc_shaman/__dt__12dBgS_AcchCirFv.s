lbl_80AE5EB8:
/* 80AE5EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE5EBC  7C 08 02 A6 */	mflr r0
/* 80AE5EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE5EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE5EC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE5ECC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE5ED0  7C 9F 23 78 */	mr r31, r4
/* 80AE5ED4  41 82 00 38 */	beq lbl_80AE5F0C
/* 80AE5ED8  3C 60 80 AE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AE5EDC  38 03 77 00 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AE5EE0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AE5EE4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AE5EE8  38 80 FF FF */	li r4, -1
/* 80AE5EEC  4B 78 90 2C */	b __dt__8cM3dGCirFv
/* 80AE5EF0  7F C3 F3 78 */	mr r3, r30
/* 80AE5EF4  38 80 00 00 */	li r4, 0
/* 80AE5EF8  4B 78 21 B8 */	b __dt__13cBgS_PolyInfoFv
/* 80AE5EFC  7F E0 07 35 */	extsh. r0, r31
/* 80AE5F00  40 81 00 0C */	ble lbl_80AE5F0C
/* 80AE5F04  7F C3 F3 78 */	mr r3, r30
/* 80AE5F08  4B 7E 8E 34 */	b __dl__FPv
lbl_80AE5F0C:
/* 80AE5F0C  7F C3 F3 78 */	mr r3, r30
/* 80AE5F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE5F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE5F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE5F1C  7C 08 03 A6 */	mtlr r0
/* 80AE5F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE5F24  4E 80 00 20 */	blr 
