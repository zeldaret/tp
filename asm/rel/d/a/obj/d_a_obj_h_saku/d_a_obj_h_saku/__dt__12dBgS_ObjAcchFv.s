lbl_80C16178:
/* 80C16178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1617C  7C 08 02 A6 */	mflr r0
/* 80C16180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16188  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1618C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C16190  7C 9F 23 78 */	mr r31, r4
/* 80C16194  41 82 00 38 */	beq lbl_80C161CC
/* 80C16198  3C 80 80 C1 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C1619C  38 84 65 94 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C161A0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C161A4  38 04 00 0C */	addi r0, r4, 0xc
/* 80C161A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C161AC  38 04 00 18 */	addi r0, r4, 0x18
/* 80C161B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C161B4  38 80 00 00 */	li r4, 0
/* 80C161B8  4B 45 FD DC */	b __dt__9dBgS_AcchFv
/* 80C161BC  7F E0 07 35 */	extsh. r0, r31
/* 80C161C0  40 81 00 0C */	ble lbl_80C161CC
/* 80C161C4  7F C3 F3 78 */	mr r3, r30
/* 80C161C8  4B 6B 8B 74 */	b __dl__FPv
lbl_80C161CC:
/* 80C161CC  7F C3 F3 78 */	mr r3, r30
/* 80C161D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C161D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C161D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C161DC  7C 08 03 A6 */	mtlr r0
/* 80C161E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C161E4  4E 80 00 20 */	blr 
