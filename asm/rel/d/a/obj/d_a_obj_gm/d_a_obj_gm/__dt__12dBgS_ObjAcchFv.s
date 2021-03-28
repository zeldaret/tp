lbl_80BFD158:
/* 80BFD158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD15C  7C 08 02 A6 */	mflr r0
/* 80BFD160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD168  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFD16C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BFD170  7C 9F 23 78 */	mr r31, r4
/* 80BFD174  41 82 00 38 */	beq lbl_80BFD1AC
/* 80BFD178  3C 80 80 C0 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BFD17C  38 84 D5 60 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BFD180  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BFD184  38 04 00 0C */	addi r0, r4, 0xc
/* 80BFD188  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BFD18C  38 04 00 18 */	addi r0, r4, 0x18
/* 80BFD190  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BFD194  38 80 00 00 */	li r4, 0
/* 80BFD198  4B 47 8D FC */	b __dt__9dBgS_AcchFv
/* 80BFD19C  7F E0 07 35 */	extsh. r0, r31
/* 80BFD1A0  40 81 00 0C */	ble lbl_80BFD1AC
/* 80BFD1A4  7F C3 F3 78 */	mr r3, r30
/* 80BFD1A8  4B 6D 1B 94 */	b __dl__FPv
lbl_80BFD1AC:
/* 80BFD1AC  7F C3 F3 78 */	mr r3, r30
/* 80BFD1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD1B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFD1B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD1BC  7C 08 03 A6 */	mtlr r0
/* 80BFD1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD1C4  4E 80 00 20 */	blr 
