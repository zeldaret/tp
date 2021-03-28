lbl_809E7B04:
/* 809E7B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7B08  7C 08 02 A6 */	mflr r0
/* 809E7B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7B14  93 C1 00 08 */	stw r30, 8(r1)
/* 809E7B18  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E7B1C  7C 9F 23 78 */	mr r31, r4
/* 809E7B20  41 82 00 38 */	beq lbl_809E7B58
/* 809E7B24  3C 60 80 9F */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809E7B28  38 03 81 E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809E7B2C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809E7B30  38 7E 00 14 */	addi r3, r30, 0x14
/* 809E7B34  38 80 FF FF */	li r4, -1
/* 809E7B38  4B 88 73 E0 */	b __dt__8cM3dGCirFv
/* 809E7B3C  7F C3 F3 78 */	mr r3, r30
/* 809E7B40  38 80 00 00 */	li r4, 0
/* 809E7B44  4B 88 05 6C */	b __dt__13cBgS_PolyInfoFv
/* 809E7B48  7F E0 07 35 */	extsh. r0, r31
/* 809E7B4C  40 81 00 0C */	ble lbl_809E7B58
/* 809E7B50  7F C3 F3 78 */	mr r3, r30
/* 809E7B54  4B 8E 71 E8 */	b __dl__FPv
lbl_809E7B58:
/* 809E7B58  7F C3 F3 78 */	mr r3, r30
/* 809E7B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7B60  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E7B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7B68  7C 08 03 A6 */	mtlr r0
/* 809E7B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7B70  4E 80 00 20 */	blr 
