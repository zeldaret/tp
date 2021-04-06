lbl_80AE1E04:
/* 80AE1E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1E08  7C 08 02 A6 */	mflr r0
/* 80AE1E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE1E18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE1E1C  7C 9F 23 78 */	mr r31, r4
/* 80AE1E20  41 82 00 38 */	beq lbl_80AE1E58
/* 80AE1E24  3C 80 80 AE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AE2C2C@ha */
/* 80AE1E28  38 84 2C 2C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AE2C2C@l */
/* 80AE1E2C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AE1E30  38 04 00 0C */	addi r0, r4, 0xc
/* 80AE1E34  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AE1E38  38 04 00 18 */	addi r0, r4, 0x18
/* 80AE1E3C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AE1E40  38 80 00 00 */	li r4, 0
/* 80AE1E44  4B 59 41 51 */	bl __dt__9dBgS_AcchFv
/* 80AE1E48  7F E0 07 35 */	extsh. r0, r31
/* 80AE1E4C  40 81 00 0C */	ble lbl_80AE1E58
/* 80AE1E50  7F C3 F3 78 */	mr r3, r30
/* 80AE1E54  4B 7E CE E9 */	bl __dl__FPv
lbl_80AE1E58:
/* 80AE1E58  7F C3 F3 78 */	mr r3, r30
/* 80AE1E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE1E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1E68  7C 08 03 A6 */	mtlr r0
/* 80AE1E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1E70  4E 80 00 20 */	blr 
