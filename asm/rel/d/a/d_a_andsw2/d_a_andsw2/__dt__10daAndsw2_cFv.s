lbl_804D60CC:
/* 804D60CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D60D0  7C 08 02 A6 */	mflr r0
/* 804D60D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D60D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D60DC  93 C1 00 08 */	stw r30, 8(r1)
/* 804D60E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D60E4  7C 9F 23 78 */	mr r31, r4
/* 804D60E8  41 82 00 1C */	beq lbl_804D6104
/* 804D60EC  38 80 00 00 */	li r4, 0
/* 804D60F0  4B B4 2B 9D */	bl __dt__10fopAc_ac_cFv
/* 804D60F4  7F E0 07 35 */	extsh. r0, r31
/* 804D60F8  40 81 00 0C */	ble lbl_804D6104
/* 804D60FC  7F C3 F3 78 */	mr r3, r30
/* 804D6100  4B DF 8C 3D */	bl __dl__FPv
lbl_804D6104:
/* 804D6104  7F C3 F3 78 */	mr r3, r30
/* 804D6108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D610C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6114  7C 08 03 A6 */	mtlr r0
/* 804D6118  38 21 00 10 */	addi r1, r1, 0x10
/* 804D611C  4E 80 00 20 */	blr 
