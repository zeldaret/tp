lbl_80BC56CC:
/* 80BC56CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC56D0  7C 08 02 A6 */	mflr r0
/* 80BC56D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC56D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC56DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC56E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BC56E4  7C 9F 23 78 */	mr r31, r4
/* 80BC56E8  41 82 00 38 */	beq lbl_80BC5720
/* 80BC56EC  3C 80 80 BC */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BC56F0  38 84 58 BC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BC56F4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BC56F8  38 04 00 0C */	addi r0, r4, 0xc
/* 80BC56FC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BC5700  38 04 00 18 */	addi r0, r4, 0x18
/* 80BC5704  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BC5708  38 80 00 00 */	li r4, 0
/* 80BC570C  4B 4B 08 88 */	b __dt__9dBgS_AcchFv
/* 80BC5710  7F E0 07 35 */	extsh. r0, r31
/* 80BC5714  40 81 00 0C */	ble lbl_80BC5720
/* 80BC5718  7F C3 F3 78 */	mr r3, r30
/* 80BC571C  4B 70 96 20 */	b __dl__FPv
lbl_80BC5720:
/* 80BC5720  7F C3 F3 78 */	mr r3, r30
/* 80BC5724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC5728  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC572C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC5730  7C 08 03 A6 */	mtlr r0
/* 80BC5734  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5738  4E 80 00 20 */	blr 
