lbl_807EED74:
/* 807EED74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EED78  7C 08 02 A6 */	mflr r0
/* 807EED7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EED80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EED84  93 C1 00 08 */	stw r30, 8(r1)
/* 807EED88  7C 7E 1B 79 */	or. r30, r3, r3
/* 807EED8C  7C 9F 23 78 */	mr r31, r4
/* 807EED90  41 82 00 38 */	beq lbl_807EEDC8
/* 807EED94  3C 80 80 7F */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 807EED98  38 84 FB 0C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 807EED9C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807EEDA0  38 04 00 0C */	addi r0, r4, 0xc
/* 807EEDA4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 807EEDA8  38 04 00 18 */	addi r0, r4, 0x18
/* 807EEDAC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 807EEDB0  38 80 00 00 */	li r4, 0
/* 807EEDB4  4B 88 71 E0 */	b __dt__9dBgS_AcchFv
/* 807EEDB8  7F E0 07 35 */	extsh. r0, r31
/* 807EEDBC  40 81 00 0C */	ble lbl_807EEDC8
/* 807EEDC0  7F C3 F3 78 */	mr r3, r30
/* 807EEDC4  4B AD FF 78 */	b __dl__FPv
lbl_807EEDC8:
/* 807EEDC8  7F C3 F3 78 */	mr r3, r30
/* 807EEDCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EEDD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807EEDD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EEDD8  7C 08 03 A6 */	mtlr r0
/* 807EEDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 807EEDE0  4E 80 00 20 */	blr 
