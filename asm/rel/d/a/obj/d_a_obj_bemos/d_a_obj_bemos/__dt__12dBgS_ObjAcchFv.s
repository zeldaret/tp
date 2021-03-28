lbl_80BB336C:
/* 80BB336C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3370  7C 08 02 A6 */	mflr r0
/* 80BB3374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB337C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB3380  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB3384  7C 9F 23 78 */	mr r31, r4
/* 80BB3388  41 82 00 38 */	beq lbl_80BB33C0
/* 80BB338C  3C 80 80 BB */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BB3390  38 84 3E 1C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BB3394  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BB3398  38 04 00 0C */	addi r0, r4, 0xc
/* 80BB339C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BB33A0  38 04 00 18 */	addi r0, r4, 0x18
/* 80BB33A4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BB33A8  38 80 00 00 */	li r4, 0
/* 80BB33AC  4B 4C 2B E8 */	b __dt__9dBgS_AcchFv
/* 80BB33B0  7F E0 07 35 */	extsh. r0, r31
/* 80BB33B4  40 81 00 0C */	ble lbl_80BB33C0
/* 80BB33B8  7F C3 F3 78 */	mr r3, r30
/* 80BB33BC  4B 71 B9 80 */	b __dl__FPv
lbl_80BB33C0:
/* 80BB33C0  7F C3 F3 78 */	mr r3, r30
/* 80BB33C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB33C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB33CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB33D0  7C 08 03 A6 */	mtlr r0
/* 80BB33D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB33D8  4E 80 00 20 */	blr 
