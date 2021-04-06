lbl_80BBB700:
/* 80BBB700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB704  7C 08 02 A6 */	mflr r0
/* 80BBB708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBB710  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBB714  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BBB718  7C 9F 23 78 */	mr r31, r4
/* 80BBB71C  41 82 00 38 */	beq lbl_80BBB754
/* 80BBB720  3C 80 80 BC */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BBC5E8@ha */
/* 80BBB724  38 84 C5 E8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BBC5E8@l */
/* 80BBB728  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BBB72C  38 04 00 0C */	addi r0, r4, 0xc
/* 80BBB730  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BBB734  38 04 00 18 */	addi r0, r4, 0x18
/* 80BBB738  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BBB73C  38 80 00 00 */	li r4, 0
/* 80BBB740  4B 4B A8 55 */	bl __dt__9dBgS_AcchFv
/* 80BBB744  7F E0 07 35 */	extsh. r0, r31
/* 80BBB748  40 81 00 0C */	ble lbl_80BBB754
/* 80BBB74C  7F C3 F3 78 */	mr r3, r30
/* 80BBB750  4B 71 35 ED */	bl __dl__FPv
lbl_80BBB754:
/* 80BBB754  7F C3 F3 78 */	mr r3, r30
/* 80BBB758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB75C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBB760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB764  7C 08 03 A6 */	mtlr r0
/* 80BBB768  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB76C  4E 80 00 20 */	blr 
