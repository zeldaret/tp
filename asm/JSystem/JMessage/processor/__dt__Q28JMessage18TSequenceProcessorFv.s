lbl_802A83B8:
/* 802A83B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A83BC  7C 08 02 A6 */	mflr r0
/* 802A83C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A83C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A83C8  93 C1 00 08 */	stw r30, 8(r1)
/* 802A83CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A83D0  7C 9F 23 78 */	mr r31, r4
/* 802A83D4  41 82 00 28 */	beq lbl_802A83FC
/* 802A83D8  3C 80 80 3D */	lis r4, __vt__Q28JMessage18TSequenceProcessor@ha /* 0x803C9BD4@ha */
/* 802A83DC  38 04 9B D4 */	addi r0, r4, __vt__Q28JMessage18TSequenceProcessor@l /* 0x803C9BD4@l */
/* 802A83E0  90 1E 00 00 */	stw r0, 0(r30)
/* 802A83E4  38 80 00 00 */	li r4, 0
/* 802A83E8  4B FF F7 61 */	bl __dt__Q28JMessage10TProcessorFv
/* 802A83EC  7F E0 07 35 */	extsh. r0, r31
/* 802A83F0  40 81 00 0C */	ble lbl_802A83FC
/* 802A83F4  7F C3 F3 78 */	mr r3, r30
/* 802A83F8  48 02 69 45 */	bl __dl__FPv
lbl_802A83FC:
/* 802A83FC  7F C3 F3 78 */	mr r3, r30
/* 802A8400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8404  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A840C  7C 08 03 A6 */	mtlr r0
/* 802A8410  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8414  4E 80 00 20 */	blr 
