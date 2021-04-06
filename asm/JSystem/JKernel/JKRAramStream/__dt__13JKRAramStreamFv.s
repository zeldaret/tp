lbl_802D3C08:
/* 802D3C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3C0C  7C 08 02 A6 */	mflr r0
/* 802D3C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3C18  93 C1 00 08 */	stw r30, 8(r1)
/* 802D3C1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D3C20  7C 9F 23 78 */	mr r31, r4
/* 802D3C24  41 82 00 28 */	beq lbl_802D3C4C
/* 802D3C28  3C 80 80 3D */	lis r4, __vt__13JKRAramStream@ha /* 0x803CC1B8@ha */
/* 802D3C2C  38 04 C1 B8 */	addi r0, r4, __vt__13JKRAramStream@l /* 0x803CC1B8@l */
/* 802D3C30  90 1E 00 00 */	stw r0, 0(r30)
/* 802D3C34  38 80 00 00 */	li r4, 0
/* 802D3C38  4B FF DB 21 */	bl __dt__9JKRThreadFv
/* 802D3C3C  7F E0 07 35 */	extsh. r0, r31
/* 802D3C40  40 81 00 0C */	ble lbl_802D3C4C
/* 802D3C44  7F C3 F3 78 */	mr r3, r30
/* 802D3C48  4B FF B0 F5 */	bl __dl__FPv
lbl_802D3C4C:
/* 802D3C4C  7F C3 F3 78 */	mr r3, r30
/* 802D3C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3C54  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D3C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3C5C  7C 08 03 A6 */	mtlr r0
/* 802D3C60  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3C64  4E 80 00 20 */	blr 
