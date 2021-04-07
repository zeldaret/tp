lbl_80BDC1E8:
/* 80BDC1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC1EC  7C 08 02 A6 */	mflr r0
/* 80BDC1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC1F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDC1FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BDC200  7C 9F 23 78 */	mr r31, r4
/* 80BDC204  41 82 00 38 */	beq lbl_80BDC23C
/* 80BDC208  3C 80 80 BE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80BDC4FC@ha */
/* 80BDC20C  38 84 C4 FC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80BDC4FC@l */
/* 80BDC210  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BDC214  38 04 00 0C */	addi r0, r4, 0xc
/* 80BDC218  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BDC21C  38 04 00 18 */	addi r0, r4, 0x18
/* 80BDC220  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BDC224  38 80 00 00 */	li r4, 0
/* 80BDC228  4B 49 9D 6D */	bl __dt__9dBgS_AcchFv
/* 80BDC22C  7F E0 07 35 */	extsh. r0, r31
/* 80BDC230  40 81 00 0C */	ble lbl_80BDC23C
/* 80BDC234  7F C3 F3 78 */	mr r3, r30
/* 80BDC238  4B 6F 2B 05 */	bl __dl__FPv
lbl_80BDC23C:
/* 80BDC23C  7F C3 F3 78 */	mr r3, r30
/* 80BDC240  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC244  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDC248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC24C  7C 08 03 A6 */	mtlr r0
/* 80BDC250  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC254  4E 80 00 20 */	blr 
