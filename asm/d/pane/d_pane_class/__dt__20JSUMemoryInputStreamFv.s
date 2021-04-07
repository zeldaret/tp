lbl_802552B8:
/* 802552B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802552BC  7C 08 02 A6 */	mflr r0
/* 802552C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802552C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802552C8  93 C1 00 08 */	stw r30, 8(r1)
/* 802552CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802552D0  7C 9F 23 78 */	mr r31, r4
/* 802552D4  41 82 00 38 */	beq lbl_8025530C
/* 802552D8  3C 80 80 3D */	lis r4, __vt__20JSUMemoryInputStream@ha /* 0x803CC4F0@ha */
/* 802552DC  38 04 C4 F0 */	addi r0, r4, __vt__20JSUMemoryInputStream@l /* 0x803CC4F0@l */
/* 802552E0  90 1E 00 00 */	stw r0, 0(r30)
/* 802552E4  41 82 00 18 */	beq lbl_802552FC
/* 802552E8  3C 80 80 3D */	lis r4, __vt__20JSURandomInputStream@ha /* 0x803CC4B0@ha */
/* 802552EC  38 04 C4 B0 */	addi r0, r4, __vt__20JSURandomInputStream@l /* 0x803CC4B0@l */
/* 802552F0  90 1E 00 00 */	stw r0, 0(r30)
/* 802552F4  38 80 00 00 */	li r4, 0
/* 802552F8  48 08 6F 45 */	bl __dt__14JSUInputStreamFv
lbl_802552FC:
/* 802552FC  7F E0 07 35 */	extsh. r0, r31
/* 80255300  40 81 00 0C */	ble lbl_8025530C
/* 80255304  7F C3 F3 78 */	mr r3, r30
/* 80255308  48 07 9A 35 */	bl __dl__FPv
lbl_8025530C:
/* 8025530C  7F C3 F3 78 */	mr r3, r30
/* 80255310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255314  83 C1 00 08 */	lwz r30, 8(r1)
/* 80255318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025531C  7C 08 03 A6 */	mtlr r0
/* 80255320  38 21 00 10 */	addi r1, r1, 0x10
/* 80255324  4E 80 00 20 */	blr 
