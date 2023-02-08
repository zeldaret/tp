lbl_804E9AF0:
/* 804E9AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9AF4  7C 08 02 A6 */	mflr r0
/* 804E9AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9B00  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9B04  7C 7E 1B 79 */	or. r30, r3, r3
/* 804E9B08  7C 9F 23 78 */	mr r31, r4
/* 804E9B0C  41 82 00 40 */	beq lbl_804E9B4C
/* 804E9B10  3C 80 80 4F */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x804EEEA8@ha */
/* 804E9B14  38 84 EE A8 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x804EEEA8@l */
/* 804E9B18  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804E9B1C  38 04 00 0C */	addi r0, r4, 0xc
/* 804E9B20  90 1E 00 20 */	stw r0, 0x20(r30)
/* 804E9B24  38 04 00 18 */	addi r0, r4, 0x18
/* 804E9B28  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 804E9B2C  38 04 00 24 */	addi r0, r4, 0x24
/* 804E9B30  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 804E9B34  38 80 00 00 */	li r4, 0
/* 804E9B38  4B B8 DA B9 */	bl __dt__11dBgS_GndChkFv
/* 804E9B3C  7F E0 07 35 */	extsh. r0, r31
/* 804E9B40  40 81 00 0C */	ble lbl_804E9B4C
/* 804E9B44  7F C3 F3 78 */	mr r3, r30
/* 804E9B48  4B DE 51 F5 */	bl __dl__FPv
lbl_804E9B4C:
/* 804E9B4C  7F C3 F3 78 */	mr r3, r30
/* 804E9B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9B5C  7C 08 03 A6 */	mtlr r0
/* 804E9B60  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9B64  4E 80 00 20 */	blr 
