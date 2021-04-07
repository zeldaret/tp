lbl_802D38CC:
/* 802D38CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D38D0  7C 08 02 A6 */	mflr r0
/* 802D38D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D38D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D38DC  7C 7F 1B 78 */	mr r31, r3
/* 802D38E0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 802D38E4  2C 00 00 01 */	cmpwi r0, 1
/* 802D38E8  40 82 00 14 */	bne lbl_802D38FC
/* 802D38EC  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 802D38F0  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D38F4  48 06 7C 8D */	bl DCInvalidateRange
/* 802D38F8  48 00 00 10 */	b lbl_802D3908
lbl_802D38FC:
/* 802D38FC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802D3900  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802D3904  48 06 7C D9 */	bl DCStoreRange
lbl_802D3908:
/* 802D3908  7F E3 FB 78 */	mr r3, r31
/* 802D390C  38 80 00 00 */	li r4, 0
/* 802D3910  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 802D3914  38 C0 00 00 */	li r6, 0
/* 802D3918  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 802D391C  81 1F 00 4C */	lwz r8, 0x4c(r31)
/* 802D3920  81 3F 00 44 */	lwz r9, 0x44(r31)
/* 802D3924  3D 40 80 2D */	lis r10, doneDMA__12JKRAramPieceFUl@ha /* 0x802D3944@ha */
/* 802D3928  39 4A 39 44 */	addi r10, r10, doneDMA__12JKRAramPieceFUl@l /* 0x802D3944@l */
/* 802D392C  48 07 E9 A9 */	bl ARQPostRequest
/* 802D3930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3938  7C 08 03 A6 */	mtlr r0
/* 802D393C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3940  4E 80 00 20 */	blr 
