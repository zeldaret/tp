lbl_804E2B08:
/* 804E2B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2B0C  7C 08 02 A6 */	mflr r0
/* 804E2B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2B18  93 C1 00 08 */	stw r30, 8(r1)
/* 804E2B1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804E2B20  7C 9F 23 78 */	mr r31, r4
/* 804E2B24  41 82 00 38 */	beq lbl_804E2B5C
/* 804E2B28  3C 80 80 4E */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804E2B2C  38 84 50 74 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804E2B30  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804E2B34  38 04 00 0C */	addi r0, r4, 0xc
/* 804E2B38  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804E2B3C  38 04 00 18 */	addi r0, r4, 0x18
/* 804E2B40  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804E2B44  38 80 00 00 */	li r4, 0
/* 804E2B48  4B B9 34 4C */	b __dt__9dBgS_AcchFv
/* 804E2B4C  7F E0 07 35 */	extsh. r0, r31
/* 804E2B50  40 81 00 0C */	ble lbl_804E2B5C
/* 804E2B54  7F C3 F3 78 */	mr r3, r30
/* 804E2B58  4B DE C1 E4 */	b __dl__FPv
lbl_804E2B5C:
/* 804E2B5C  7F C3 F3 78 */	mr r3, r30
/* 804E2B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2B64  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E2B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2B6C  7C 08 03 A6 */	mtlr r0
/* 804E2B70  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2B74  4E 80 00 20 */	blr 
