lbl_80AB55EC:
/* 80AB55EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB55F0  7C 08 02 A6 */	mflr r0
/* 80AB55F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB55F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB55FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB5600  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB5604  7C 9F 23 78 */	mr r31, r4
/* 80AB5608  41 82 00 38 */	beq lbl_80AB5640
/* 80AB560C  3C 80 80 AB */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AB5610  38 84 5B 1C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AB5614  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AB5618  38 04 00 0C */	addi r0, r4, 0xc
/* 80AB561C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AB5620  38 04 00 18 */	addi r0, r4, 0x18
/* 80AB5624  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AB5628  38 80 00 00 */	li r4, 0
/* 80AB562C  4B 5C 09 68 */	b __dt__9dBgS_AcchFv
/* 80AB5630  7F E0 07 35 */	extsh. r0, r31
/* 80AB5634  40 81 00 0C */	ble lbl_80AB5640
/* 80AB5638  7F C3 F3 78 */	mr r3, r30
/* 80AB563C  4B 81 97 00 */	b __dl__FPv
lbl_80AB5640:
/* 80AB5640  7F C3 F3 78 */	mr r3, r30
/* 80AB5644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB5648  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB564C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5650  7C 08 03 A6 */	mtlr r0
/* 80AB5654  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB5658  4E 80 00 20 */	blr 
