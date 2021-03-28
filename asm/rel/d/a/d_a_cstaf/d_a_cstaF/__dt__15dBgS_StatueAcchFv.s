lbl_804DE1B0:
/* 804DE1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE1B4  7C 08 02 A6 */	mflr r0
/* 804DE1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE1C0  93 C1 00 08 */	stw r30, 8(r1)
/* 804DE1C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DE1C8  7C 9F 23 78 */	mr r31, r4
/* 804DE1CC  41 82 00 38 */	beq lbl_804DE204
/* 804DE1D0  3C 80 80 4E */	lis r4, __vt__15dBgS_StatueAcch@ha
/* 804DE1D4  38 84 FA 7C */	addi r4, r4, __vt__15dBgS_StatueAcch@l
/* 804DE1D8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804DE1DC  38 04 00 0C */	addi r0, r4, 0xc
/* 804DE1E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804DE1E4  38 04 00 18 */	addi r0, r4, 0x18
/* 804DE1E8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804DE1EC  38 80 00 00 */	li r4, 0
/* 804DE1F0  4B B9 7D A4 */	b __dt__9dBgS_AcchFv
/* 804DE1F4  7F E0 07 35 */	extsh. r0, r31
/* 804DE1F8  40 81 00 0C */	ble lbl_804DE204
/* 804DE1FC  7F C3 F3 78 */	mr r3, r30
/* 804DE200  4B DF 0B 3C */	b __dl__FPv
lbl_804DE204:
/* 804DE204  7F C3 F3 78 */	mr r3, r30
/* 804DE208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE20C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DE210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE214  7C 08 03 A6 */	mtlr r0
/* 804DE218  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE21C  4E 80 00 20 */	blr 
