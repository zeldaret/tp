lbl_80BE0148:
/* 80BE0148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE014C  7C 08 02 A6 */	mflr r0
/* 80BE0150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE0154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE0158  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE015C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE0160  7C 9F 23 78 */	mr r31, r4
/* 80BE0164  41 82 00 38 */	beq lbl_80BE019C
/* 80BE0168  3C 80 80 BE */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BE016C  38 84 22 14 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BE0170  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BE0174  38 04 00 0C */	addi r0, r4, 0xc
/* 80BE0178  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BE017C  38 04 00 18 */	addi r0, r4, 0x18
/* 80BE0180  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BE0184  38 80 00 00 */	li r4, 0
/* 80BE0188  4B 49 5E 0C */	b __dt__9dBgS_AcchFv
/* 80BE018C  7F E0 07 35 */	extsh. r0, r31
/* 80BE0190  40 81 00 0C */	ble lbl_80BE019C
/* 80BE0194  7F C3 F3 78 */	mr r3, r30
/* 80BE0198  4B 6E EB A4 */	b __dl__FPv
lbl_80BE019C:
/* 80BE019C  7F C3 F3 78 */	mr r3, r30
/* 80BE01A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE01A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE01A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE01AC  7C 08 03 A6 */	mtlr r0
/* 80BE01B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE01B4  4E 80 00 20 */	blr 
