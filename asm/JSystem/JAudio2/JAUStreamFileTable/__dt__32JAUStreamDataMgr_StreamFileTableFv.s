lbl_802A74E8:
/* 802A74E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A74EC  7C 08 02 A6 */	mflr r0
/* 802A74F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A74F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A74F8  93 C1 00 08 */	stw r30, 8(r1)
/* 802A74FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A7500  7C 9F 23 78 */	mr r31, r4
/* 802A7504  41 82 00 28 */	beq lbl_802A752C
/* 802A7508  3C 80 80 3D */	lis r4, __vt__32JAUStreamDataMgr_StreamFileTable@ha /* 0x803C9B50@ha */
/* 802A750C  38 04 9B 50 */	addi r0, r4, __vt__32JAUStreamDataMgr_StreamFileTable@l /* 0x803C9B50@l */
/* 802A7510  90 1E 00 00 */	stw r0, 0(r30)
/* 802A7514  38 80 00 00 */	li r4, 0
/* 802A7518  4B FF C5 C1 */	bl __dt__16JAIStreamDataMgrFv
/* 802A751C  7F E0 07 35 */	extsh. r0, r31
/* 802A7520  40 81 00 0C */	ble lbl_802A752C
/* 802A7524  7F C3 F3 78 */	mr r3, r30
/* 802A7528  48 02 78 15 */	bl __dl__FPv
lbl_802A752C:
/* 802A752C  7F C3 F3 78 */	mr r3, r30
/* 802A7530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A7534  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A7538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A753C  7C 08 03 A6 */	mtlr r0
/* 802A7540  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7544  4E 80 00 20 */	blr 
