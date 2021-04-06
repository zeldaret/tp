lbl_80D66378:
/* 80D66378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6637C  7C 08 02 A6 */	mflr r0
/* 80D66380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D66388  93 C1 00 08 */	stw r30, 8(r1)
/* 80D6638C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D66390  7C 9F 23 78 */	mr r31, r4
/* 80D66394  41 82 00 34 */	beq lbl_80D663C8
/* 80D66398  38 60 FF FF */	li r3, -1
/* 80D6639C  4B 4D 1D ED */	bl setProcessID__12dMsgObject_cFUi
/* 80D663A0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D663A4  38 80 FF FF */	li r4, -1
/* 80D663A8  4B 4E 3B A1 */	bl __dt__10dMsgFlow_cFv
/* 80D663AC  7F C3 F3 78 */	mr r3, r30
/* 80D663B0  38 80 00 00 */	li r4, 0
/* 80D663B4  4B 2B 28 D9 */	bl __dt__10fopAc_ac_cFv
/* 80D663B8  7F E0 07 35 */	extsh. r0, r31
/* 80D663BC  40 81 00 0C */	ble lbl_80D663C8
/* 80D663C0  7F C3 F3 78 */	mr r3, r30
/* 80D663C4  4B 56 89 79 */	bl __dl__FPv
lbl_80D663C8:
/* 80D663C8  7F C3 F3 78 */	mr r3, r30
/* 80D663CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D663D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D663D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D663D8  7C 08 03 A6 */	mtlr r0
/* 80D663DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D663E0  4E 80 00 20 */	blr 
