lbl_80CE715C:
/* 80CE715C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7160  7C 08 02 A6 */	mflr r0
/* 80CE7164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE716C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE7170  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE7174  7C 9F 23 78 */	mr r31, r4
/* 80CE7178  41 82 00 38 */	beq lbl_80CE71B0
/* 80CE717C  3C 60 80 CF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CE7180  38 03 80 40 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CE7184  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CE7188  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CE718C  38 80 FF FF */	li r4, -1
/* 80CE7190  4B 58 7D 88 */	b __dt__8cM3dGCirFv
/* 80CE7194  7F C3 F3 78 */	mr r3, r30
/* 80CE7198  38 80 00 00 */	li r4, 0
/* 80CE719C  4B 58 0F 14 */	b __dt__13cBgS_PolyInfoFv
/* 80CE71A0  7F E0 07 35 */	extsh. r0, r31
/* 80CE71A4  40 81 00 0C */	ble lbl_80CE71B0
/* 80CE71A8  7F C3 F3 78 */	mr r3, r30
/* 80CE71AC  4B 5E 7B 90 */	b __dl__FPv
lbl_80CE71B0:
/* 80CE71B0  7F C3 F3 78 */	mr r3, r30
/* 80CE71B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE71B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE71BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE71C0  7C 08 03 A6 */	mtlr r0
/* 80CE71C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE71C8  4E 80 00 20 */	blr 
