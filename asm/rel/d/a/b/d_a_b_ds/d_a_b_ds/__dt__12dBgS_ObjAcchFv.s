lbl_805DC750:
/* 805DC750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC754  7C 08 02 A6 */	mflr r0
/* 805DC758  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC760  93 C1 00 08 */	stw r30, 8(r1)
/* 805DC764  7C 7E 1B 79 */	or. r30, r3, r3
/* 805DC768  7C 9F 23 78 */	mr r31, r4
/* 805DC76C  41 82 00 38 */	beq lbl_805DC7A4
/* 805DC770  3C 80 80 5E */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 805DC774  38 84 DA 2C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 805DC778  90 9E 00 10 */	stw r4, 0x10(r30)
/* 805DC77C  38 04 00 0C */	addi r0, r4, 0xc
/* 805DC780  90 1E 00 14 */	stw r0, 0x14(r30)
/* 805DC784  38 04 00 18 */	addi r0, r4, 0x18
/* 805DC788  90 1E 00 24 */	stw r0, 0x24(r30)
/* 805DC78C  38 80 00 00 */	li r4, 0
/* 805DC790  4B A9 98 04 */	b __dt__9dBgS_AcchFv
/* 805DC794  7F E0 07 35 */	extsh. r0, r31
/* 805DC798  40 81 00 0C */	ble lbl_805DC7A4
/* 805DC79C  7F C3 F3 78 */	mr r3, r30
/* 805DC7A0  4B CF 25 9C */	b __dl__FPv
lbl_805DC7A4:
/* 805DC7A4  7F C3 F3 78 */	mr r3, r30
/* 805DC7A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC7AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DC7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC7B4  7C 08 03 A6 */	mtlr r0
/* 805DC7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC7BC  4E 80 00 20 */	blr 
