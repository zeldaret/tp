lbl_807FC0B0:
/* 807FC0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FC0B4  7C 08 02 A6 */	mflr r0
/* 807FC0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FC0BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FC0C0  93 C1 00 08 */	stw r30, 8(r1)
/* 807FC0C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 807FC0C8  7C 9F 23 78 */	mr r31, r4
/* 807FC0CC  41 82 00 38 */	beq lbl_807FC104
/* 807FC0D0  3C 60 80 80 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 807FC0D4  38 03 CF 98 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 807FC0D8  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807FC0DC  38 7E 00 14 */	addi r3, r30, 0x14
/* 807FC0E0  38 80 FF FF */	li r4, -1
/* 807FC0E4  4B A7 2E 34 */	b __dt__8cM3dGCirFv
/* 807FC0E8  7F C3 F3 78 */	mr r3, r30
/* 807FC0EC  38 80 00 00 */	li r4, 0
/* 807FC0F0  4B A6 BF C0 */	b __dt__13cBgS_PolyInfoFv
/* 807FC0F4  7F E0 07 35 */	extsh. r0, r31
/* 807FC0F8  40 81 00 0C */	ble lbl_807FC104
/* 807FC0FC  7F C3 F3 78 */	mr r3, r30
/* 807FC100  4B AD 2C 3C */	b __dl__FPv
lbl_807FC104:
/* 807FC104  7F C3 F3 78 */	mr r3, r30
/* 807FC108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FC10C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807FC110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FC114  7C 08 03 A6 */	mtlr r0
/* 807FC118  38 21 00 10 */	addi r1, r1, 0x10
/* 807FC11C  4E 80 00 20 */	blr 
