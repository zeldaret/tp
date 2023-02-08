lbl_807F7160:
/* 807F7160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7164  7C 08 02 A6 */	mflr r0
/* 807F7168  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F716C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F7170  93 C1 00 08 */	stw r30, 8(r1)
/* 807F7174  7C 7E 1B 79 */	or. r30, r3, r3
/* 807F7178  7C 9F 23 78 */	mr r31, r4
/* 807F717C  41 82 00 38 */	beq lbl_807F71B4
/* 807F7180  3C 80 80 7F */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x807F7CF8@ha */
/* 807F7184  38 84 7C F8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x807F7CF8@l */
/* 807F7188  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807F718C  38 04 00 0C */	addi r0, r4, 0xc
/* 807F7190  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807F7194  38 04 00 18 */	addi r0, r4, 0x18
/* 807F7198  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807F719C  38 80 00 00 */	li r4, 0
/* 807F71A0  4B 87 ED F5 */	bl __dt__9dBgS_AcchFv
/* 807F71A4  7F E0 07 35 */	extsh. r0, r31
/* 807F71A8  40 81 00 0C */	ble lbl_807F71B4
/* 807F71AC  7F C3 F3 78 */	mr r3, r30
/* 807F71B0  4B AD 7B 8D */	bl __dl__FPv
lbl_807F71B4:
/* 807F71B4  7F C3 F3 78 */	mr r3, r30
/* 807F71B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F71BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807F71C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F71C4  7C 08 03 A6 */	mtlr r0
/* 807F71C8  38 21 00 10 */	addi r1, r1, 0x10
/* 807F71CC  4E 80 00 20 */	blr 
