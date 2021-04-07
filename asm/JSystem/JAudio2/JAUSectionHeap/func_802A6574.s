lbl_802A6574:
/* 802A6574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A6578  7C 08 02 A6 */	mflr r0
/* 802A657C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A6580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A6584  93 C1 00 08 */	stw r30, 8(r1)
/* 802A6588  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A658C  7C 9F 23 78 */	mr r31, r4
/* 802A6590  41 82 00 28 */	beq lbl_802A65B8
/* 802A6594  3C 80 80 3D */	lis r4, data_803C9B14@ha /* 0x803C9B14@ha */
/* 802A6598  38 04 9B 14 */	addi r0, r4, data_803C9B14@l /* 0x803C9B14@l */
/* 802A659C  90 1E 00 00 */	stw r0, 0(r30)
/* 802A65A0  38 80 00 00 */	li r4, 0
/* 802A65A4  4B FF D5 35 */	bl __dt__16JAIStreamDataMgrFv
/* 802A65A8  7F E0 07 35 */	extsh. r0, r31
/* 802A65AC  40 81 00 0C */	ble lbl_802A65B8
/* 802A65B0  7F C3 F3 78 */	mr r3, r30
/* 802A65B4  48 02 87 89 */	bl __dl__FPv
lbl_802A65B8:
/* 802A65B8  7F C3 F3 78 */	mr r3, r30
/* 802A65BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A65C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A65C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A65C8  7C 08 03 A6 */	mtlr r0
/* 802A65CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A65D0  4E 80 00 20 */	blr 
