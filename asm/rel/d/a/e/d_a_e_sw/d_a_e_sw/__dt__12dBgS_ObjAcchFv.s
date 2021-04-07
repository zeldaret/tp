lbl_807AC940:
/* 807AC940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC944  7C 08 02 A6 */	mflr r0
/* 807AC948  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC94C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AC950  93 C1 00 08 */	stw r30, 8(r1)
/* 807AC954  7C 7E 1B 79 */	or. r30, r3, r3
/* 807AC958  7C 9F 23 78 */	mr r31, r4
/* 807AC95C  41 82 00 38 */	beq lbl_807AC994
/* 807AC960  3C 80 80 7B */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807B0180@ha */
/* 807AC964  38 84 01 80 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807B0180@l */
/* 807AC968  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807AC96C  38 04 00 0C */	addi r0, r4, 0xc
/* 807AC970  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807AC974  38 04 00 18 */	addi r0, r4, 0x18
/* 807AC978  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807AC97C  38 80 00 00 */	li r4, 0
/* 807AC980  4B 8C 96 15 */	bl __dt__9dBgS_AcchFv
/* 807AC984  7F E0 07 35 */	extsh. r0, r31
/* 807AC988  40 81 00 0C */	ble lbl_807AC994
/* 807AC98C  7F C3 F3 78 */	mr r3, r30
/* 807AC990  4B B2 23 AD */	bl __dl__FPv
lbl_807AC994:
/* 807AC994  7F C3 F3 78 */	mr r3, r30
/* 807AC998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AC99C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AC9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC9A4  7C 08 03 A6 */	mtlr r0
/* 807AC9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC9AC  4E 80 00 20 */	blr 
