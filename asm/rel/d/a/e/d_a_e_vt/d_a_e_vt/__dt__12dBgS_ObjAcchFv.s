lbl_807CE15C:
/* 807CE15C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CE160  7C 08 02 A6 */	mflr r0
/* 807CE164  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CE168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CE16C  93 C1 00 08 */	stw r30, 8(r1)
/* 807CE170  7C 7E 1B 79 */	or. r30, r3, r3
/* 807CE174  7C 9F 23 78 */	mr r31, r4
/* 807CE178  41 82 00 38 */	beq lbl_807CE1B0
/* 807CE17C  3C 80 80 7D */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 807CE180  38 84 F4 04 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 807CE184  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807CE188  38 04 00 0C */	addi r0, r4, 0xc
/* 807CE18C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807CE190  38 04 00 18 */	addi r0, r4, 0x18
/* 807CE194  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807CE198  38 80 00 00 */	li r4, 0
/* 807CE19C  4B 8A 7D F8 */	b __dt__9dBgS_AcchFv
/* 807CE1A0  7F E0 07 35 */	extsh. r0, r31
/* 807CE1A4  40 81 00 0C */	ble lbl_807CE1B0
/* 807CE1A8  7F C3 F3 78 */	mr r3, r30
/* 807CE1AC  4B B0 0B 90 */	b __dl__FPv
lbl_807CE1B0:
/* 807CE1B0  7F C3 F3 78 */	mr r3, r30
/* 807CE1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CE1B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CE1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CE1C0  7C 08 03 A6 */	mtlr r0
/* 807CE1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 807CE1C8  4E 80 00 20 */	blr 
