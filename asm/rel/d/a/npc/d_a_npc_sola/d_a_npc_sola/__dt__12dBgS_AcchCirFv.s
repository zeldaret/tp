lbl_80AEE938:
/* 80AEE938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEE93C  7C 08 02 A6 */	mflr r0
/* 80AEE940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEE944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEE948  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEE94C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEE950  7C 9F 23 78 */	mr r31, r4
/* 80AEE954  41 82 00 38 */	beq lbl_80AEE98C
/* 80AEE958  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AEF348@ha */
/* 80AEE95C  38 03 F3 48 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AEF348@l */
/* 80AEE960  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AEE964  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AEE968  38 80 FF FF */	li r4, -1
/* 80AEE96C  4B 78 05 AD */	bl __dt__8cM3dGCirFv
/* 80AEE970  7F C3 F3 78 */	mr r3, r30
/* 80AEE974  38 80 00 00 */	li r4, 0
/* 80AEE978  4B 77 97 39 */	bl __dt__13cBgS_PolyInfoFv
/* 80AEE97C  7F E0 07 35 */	extsh. r0, r31
/* 80AEE980  40 81 00 0C */	ble lbl_80AEE98C
/* 80AEE984  7F C3 F3 78 */	mr r3, r30
/* 80AEE988  4B 7E 03 B5 */	bl __dl__FPv
lbl_80AEE98C:
/* 80AEE98C  7F C3 F3 78 */	mr r3, r30
/* 80AEE990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE994  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEE998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE99C  7C 08 03 A6 */	mtlr r0
/* 80AEE9A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE9A4  4E 80 00 20 */	blr 
