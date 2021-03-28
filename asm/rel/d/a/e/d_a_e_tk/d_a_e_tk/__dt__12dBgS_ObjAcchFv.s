lbl_807BA154:
/* 807BA154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BA158  7C 08 02 A6 */	mflr r0
/* 807BA15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BA160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BA164  93 C1 00 08 */	stw r30, 8(r1)
/* 807BA168  7C 7E 1B 79 */	or. r30, r3, r3
/* 807BA16C  7C 9F 23 78 */	mr r31, r4
/* 807BA170  41 82 00 38 */	beq lbl_807BA1A8
/* 807BA174  3C 80 80 7C */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 807BA178  38 84 A4 00 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 807BA17C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807BA180  38 04 00 0C */	addi r0, r4, 0xc
/* 807BA184  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807BA188  38 04 00 18 */	addi r0, r4, 0x18
/* 807BA18C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807BA190  38 80 00 00 */	li r4, 0
/* 807BA194  4B 8B BE 00 */	b __dt__9dBgS_AcchFv
/* 807BA198  7F E0 07 35 */	extsh. r0, r31
/* 807BA19C  40 81 00 0C */	ble lbl_807BA1A8
/* 807BA1A0  7F C3 F3 78 */	mr r3, r30
/* 807BA1A4  4B B1 4B 98 */	b __dl__FPv
lbl_807BA1A8:
/* 807BA1A8  7F C3 F3 78 */	mr r3, r30
/* 807BA1AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BA1B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807BA1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BA1B8  7C 08 03 A6 */	mtlr r0
/* 807BA1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 807BA1C0  4E 80 00 20 */	blr 
