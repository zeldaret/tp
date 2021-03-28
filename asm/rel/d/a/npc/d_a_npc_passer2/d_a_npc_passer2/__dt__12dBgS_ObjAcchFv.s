lbl_80AA899C:
/* 80AA899C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA89A0  7C 08 02 A6 */	mflr r0
/* 80AA89A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA89A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA89AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA89B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA89B4  7C 9F 23 78 */	mr r31, r4
/* 80AA89B8  41 82 00 38 */	beq lbl_80AA89F0
/* 80AA89BC  3C 80 80 AB */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AA89C0  38 84 8B 50 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AA89C4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AA89C8  38 04 00 0C */	addi r0, r4, 0xc
/* 80AA89CC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AA89D0  38 04 00 18 */	addi r0, r4, 0x18
/* 80AA89D4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AA89D8  38 80 00 00 */	li r4, 0
/* 80AA89DC  4B 5C D5 B8 */	b __dt__9dBgS_AcchFv
/* 80AA89E0  7F E0 07 35 */	extsh. r0, r31
/* 80AA89E4  40 81 00 0C */	ble lbl_80AA89F0
/* 80AA89E8  7F C3 F3 78 */	mr r3, r30
/* 80AA89EC  4B 82 63 50 */	b __dl__FPv
lbl_80AA89F0:
/* 80AA89F0  7F C3 F3 78 */	mr r3, r30
/* 80AA89F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA89F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA89FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8A00  7C 08 03 A6 */	mtlr r0
/* 80AA8A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA8A08  4E 80 00 20 */	blr 
