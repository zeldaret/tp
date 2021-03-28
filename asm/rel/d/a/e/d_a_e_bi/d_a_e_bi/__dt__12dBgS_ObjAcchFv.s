lbl_8068D080:
/* 8068D080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D084  7C 08 02 A6 */	mflr r0
/* 8068D088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D090  93 C1 00 08 */	stw r30, 8(r1)
/* 8068D094  7C 7E 1B 79 */	or. r30, r3, r3
/* 8068D098  7C 9F 23 78 */	mr r31, r4
/* 8068D09C  41 82 00 38 */	beq lbl_8068D0D4
/* 8068D0A0  3C 80 80 69 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8068D0A4  38 84 DA 50 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8068D0A8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8068D0AC  38 04 00 0C */	addi r0, r4, 0xc
/* 8068D0B0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8068D0B4  38 04 00 18 */	addi r0, r4, 0x18
/* 8068D0B8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8068D0BC  38 80 00 00 */	li r4, 0
/* 8068D0C0  4B 9E 8E D4 */	b __dt__9dBgS_AcchFv
/* 8068D0C4  7F E0 07 35 */	extsh. r0, r31
/* 8068D0C8  40 81 00 0C */	ble lbl_8068D0D4
/* 8068D0CC  7F C3 F3 78 */	mr r3, r30
/* 8068D0D0  4B C4 1C 6C */	b __dl__FPv
lbl_8068D0D4:
/* 8068D0D4  7F C3 F3 78 */	mr r3, r30
/* 8068D0D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D0DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8068D0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D0E4  7C 08 03 A6 */	mtlr r0
/* 8068D0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D0EC  4E 80 00 20 */	blr 
