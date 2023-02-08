lbl_80BDC75C:
/* 80BDC75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC760  7C 08 02 A6 */	mflr r0
/* 80BDC764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC76C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDC770  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BDC774  7C 9F 23 78 */	mr r31, r4
/* 80BDC778  41 82 00 1C */	beq lbl_80BDC794
/* 80BDC77C  38 80 00 00 */	li r4, 0
/* 80BDC780  4B 43 C5 0D */	bl __dt__10fopAc_ac_cFv
/* 80BDC784  7F E0 07 35 */	extsh. r0, r31
/* 80BDC788  40 81 00 0C */	ble lbl_80BDC794
/* 80BDC78C  7F C3 F3 78 */	mr r3, r30
/* 80BDC790  4B 6F 25 AD */	bl __dl__FPv
lbl_80BDC794:
/* 80BDC794  7F C3 F3 78 */	mr r3, r30
/* 80BDC798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC79C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDC7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC7A4  7C 08 03 A6 */	mtlr r0
/* 80BDC7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC7AC  4E 80 00 20 */	blr 
