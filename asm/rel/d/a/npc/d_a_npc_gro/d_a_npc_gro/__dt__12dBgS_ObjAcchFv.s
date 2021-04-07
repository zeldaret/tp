lbl_809DED64:
/* 809DED64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DED68  7C 08 02 A6 */	mflr r0
/* 809DED6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DED70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DED74  93 C1 00 08 */	stw r30, 8(r1)
/* 809DED78  7C 7E 1B 79 */	or. r30, r3, r3
/* 809DED7C  7C 9F 23 78 */	mr r31, r4
/* 809DED80  41 82 00 38 */	beq lbl_809DEDB8
/* 809DED84  3C 80 80 9E */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809DF674@ha */
/* 809DED88  38 84 F6 74 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809DF674@l */
/* 809DED8C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809DED90  38 04 00 0C */	addi r0, r4, 0xc
/* 809DED94  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809DED98  38 04 00 18 */	addi r0, r4, 0x18
/* 809DED9C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809DEDA0  38 80 00 00 */	li r4, 0
/* 809DEDA4  4B 69 71 F1 */	bl __dt__9dBgS_AcchFv
/* 809DEDA8  7F E0 07 35 */	extsh. r0, r31
/* 809DEDAC  40 81 00 0C */	ble lbl_809DEDB8
/* 809DEDB0  7F C3 F3 78 */	mr r3, r30
/* 809DEDB4  4B 8E FF 89 */	bl __dl__FPv
lbl_809DEDB8:
/* 809DEDB8  7F C3 F3 78 */	mr r3, r30
/* 809DEDBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEDC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DEDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEDC8  7C 08 03 A6 */	mtlr r0
/* 809DEDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEDD0  4E 80 00 20 */	blr 
