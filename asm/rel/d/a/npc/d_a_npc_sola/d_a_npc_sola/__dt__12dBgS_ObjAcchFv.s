lbl_80AEEA04:
/* 80AEEA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEEA08  7C 08 02 A6 */	mflr r0
/* 80AEEA0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEEA10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEEA14  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEEA18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEEA1C  7C 9F 23 78 */	mr r31, r4
/* 80AEEA20  41 82 00 38 */	beq lbl_80AEEA58
/* 80AEEA24  3C 80 80 AF */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AEF324@ha */
/* 80AEEA28  38 84 F3 24 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AEF324@l */
/* 80AEEA2C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AEEA30  38 04 00 0C */	addi r0, r4, 0xc
/* 80AEEA34  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AEEA38  38 04 00 18 */	addi r0, r4, 0x18
/* 80AEEA3C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AEEA40  38 80 00 00 */	li r4, 0
/* 80AEEA44  4B 58 75 51 */	bl __dt__9dBgS_AcchFv
/* 80AEEA48  7F E0 07 35 */	extsh. r0, r31
/* 80AEEA4C  40 81 00 0C */	ble lbl_80AEEA58
/* 80AEEA50  7F C3 F3 78 */	mr r3, r30
/* 80AEEA54  4B 7E 02 E9 */	bl __dl__FPv
lbl_80AEEA58:
/* 80AEEA58  7F C3 F3 78 */	mr r3, r30
/* 80AEEA5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEEA60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEEA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEEA68  7C 08 03 A6 */	mtlr r0
/* 80AEEA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEEA70  4E 80 00 20 */	blr 
