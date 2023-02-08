lbl_80AE1D38:
/* 80AE1D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1D3C  7C 08 02 A6 */	mflr r0
/* 80AE1D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1D48  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE1D4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE1D50  7C 9F 23 78 */	mr r31, r4
/* 80AE1D54  41 82 00 38 */	beq lbl_80AE1D8C
/* 80AE1D58  3C 60 80 AE */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AE2C68@ha */
/* 80AE1D5C  38 03 2C 68 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AE2C68@l */
/* 80AE1D60  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AE1D64  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AE1D68  38 80 FF FF */	li r4, -1
/* 80AE1D6C  4B 78 D1 AD */	bl __dt__8cM3dGCirFv
/* 80AE1D70  7F C3 F3 78 */	mr r3, r30
/* 80AE1D74  38 80 00 00 */	li r4, 0
/* 80AE1D78  4B 78 63 39 */	bl __dt__13cBgS_PolyInfoFv
/* 80AE1D7C  7F E0 07 35 */	extsh. r0, r31
/* 80AE1D80  40 81 00 0C */	ble lbl_80AE1D8C
/* 80AE1D84  7F C3 F3 78 */	mr r3, r30
/* 80AE1D88  4B 7E CF B5 */	bl __dl__FPv
lbl_80AE1D8C:
/* 80AE1D8C  7F C3 F3 78 */	mr r3, r30
/* 80AE1D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE1D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1D9C  7C 08 03 A6 */	mtlr r0
/* 80AE1DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1DA4  4E 80 00 20 */	blr 
