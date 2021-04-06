lbl_8067BDF8:
/* 8067BDF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BDFC  7C 08 02 A6 */	mflr r0
/* 8067BE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BE08  93 C1 00 08 */	stw r30, 8(r1)
/* 8067BE0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8067BE10  7C 9F 23 78 */	mr r31, r4
/* 8067BE14  41 82 00 38 */	beq lbl_8067BE4C
/* 8067BE18  3C 80 80 68 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8067C654@ha */
/* 8067BE1C  38 84 C6 54 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8067C654@l */
/* 8067BE20  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8067BE24  38 04 00 0C */	addi r0, r4, 0xc
/* 8067BE28  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8067BE2C  38 04 00 18 */	addi r0, r4, 0x18
/* 8067BE30  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8067BE34  38 80 00 00 */	li r4, 0
/* 8067BE38  4B 9F A1 5D */	bl __dt__9dBgS_AcchFv
/* 8067BE3C  7F E0 07 35 */	extsh. r0, r31
/* 8067BE40  40 81 00 0C */	ble lbl_8067BE4C
/* 8067BE44  7F C3 F3 78 */	mr r3, r30
/* 8067BE48  4B C5 2E F5 */	bl __dl__FPv
lbl_8067BE4C:
/* 8067BE4C  7F C3 F3 78 */	mr r3, r30
/* 8067BE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BE54  83 C1 00 08 */	lwz r30, 8(r1)
/* 8067BE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BE5C  7C 08 03 A6 */	mtlr r0
/* 8067BE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BE64  4E 80 00 20 */	blr 
