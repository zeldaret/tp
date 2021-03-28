lbl_80756B04:
/* 80756B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756B08  7C 08 02 A6 */	mflr r0
/* 80756B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80756B18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80756B1C  7C 9F 23 78 */	mr r31, r4
/* 80756B20  41 82 00 3C */	beq lbl_80756B5C
/* 80756B24  3C 80 80 75 */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80756B28  38 04 7D 74 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80756B2C  90 1E 00 00 */	stw r0, 0(r30)
/* 80756B30  81 83 00 00 */	lwz r12, 0(r3)
/* 80756B34  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80756B38  7D 89 03 A6 */	mtctr r12
/* 80756B3C  4E 80 04 21 */	bctrl 
/* 80756B40  7F C3 F3 78 */	mr r3, r30
/* 80756B44  38 80 00 00 */	li r4, 0
/* 80756B48  4B B2 7B 5C */	b __dt__18JPAEmitterCallBackFv
/* 80756B4C  7F E0 07 35 */	extsh. r0, r31
/* 80756B50  40 81 00 0C */	ble lbl_80756B5C
/* 80756B54  7F C3 F3 78 */	mr r3, r30
/* 80756B58  4B B7 81 E4 */	b __dl__FPv
lbl_80756B5C:
/* 80756B5C  7F C3 F3 78 */	mr r3, r30
/* 80756B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756B64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80756B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756B6C  7C 08 03 A6 */	mtlr r0
/* 80756B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80756B74  4E 80 00 20 */	blr 
