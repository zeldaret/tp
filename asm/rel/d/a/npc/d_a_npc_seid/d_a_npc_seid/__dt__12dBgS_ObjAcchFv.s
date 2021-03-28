lbl_80ACB078:
/* 80ACB078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACB07C  7C 08 02 A6 */	mflr r0
/* 80ACB080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACB084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACB088  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACB08C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ACB090  7C 9F 23 78 */	mr r31, r4
/* 80ACB094  41 82 00 38 */	beq lbl_80ACB0CC
/* 80ACB098  3C 80 80 AD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80ACB09C  38 84 B5 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80ACB0A0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80ACB0A4  38 04 00 0C */	addi r0, r4, 0xc
/* 80ACB0A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80ACB0AC  38 04 00 18 */	addi r0, r4, 0x18
/* 80ACB0B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80ACB0B4  38 80 00 00 */	li r4, 0
/* 80ACB0B8  4B 5A AE DC */	b __dt__9dBgS_AcchFv
/* 80ACB0BC  7F E0 07 35 */	extsh. r0, r31
/* 80ACB0C0  40 81 00 0C */	ble lbl_80ACB0CC
/* 80ACB0C4  7F C3 F3 78 */	mr r3, r30
/* 80ACB0C8  4B 80 3C 74 */	b __dl__FPv
lbl_80ACB0CC:
/* 80ACB0CC  7F C3 F3 78 */	mr r3, r30
/* 80ACB0D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACB0D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACB0D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACB0DC  7C 08 03 A6 */	mtlr r0
/* 80ACB0E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACB0E4  4E 80 00 20 */	blr 
