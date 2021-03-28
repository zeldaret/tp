lbl_80327E4C:
/* 80327E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80327E50  7C 08 02 A6 */	mflr r0
/* 80327E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80327E58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80327E5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80327E60  7C 7F 1B 78 */	mr r31, r3
/* 80327E64  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80327E68  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80327E6C  93 E3 00 38 */	stw r31, 0x38(r3)
/* 80327E70  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327E74  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80327E78  41 82 00 14 */	beq lbl_80327E8C
/* 80327E7C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80327E80  60 00 00 04 */	ori r0, r0, 4
/* 80327E84  90 03 00 34 */	stw r0, 0x34(r3)
/* 80327E88  48 00 00 10 */	b lbl_80327E98
lbl_80327E8C:
/* 80327E8C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80327E90  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80327E94  90 03 00 34 */	stw r0, 0x34(r3)
lbl_80327E98:
/* 80327E98  80 1F 00 08 */	lwz r0, 8(r31)
/* 80327E9C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80327EA0  41 82 00 1C */	beq lbl_80327EBC
/* 80327EA4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80327EA8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80327EAC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80327EB0  60 00 00 08 */	ori r0, r0, 8
/* 80327EB4  90 03 00 34 */	stw r0, 0x34(r3)
/* 80327EB8  48 00 00 18 */	b lbl_80327ED0
lbl_80327EBC:
/* 80327EBC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80327EC0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80327EC4  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80327EC8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80327ECC  90 03 00 34 */	stw r0, 0x34(r3)
lbl_80327ED0:
/* 80327ED0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80327ED4  4B FF E2 25 */	bl syncJ3DSysFlags__12J3DModelDataCFv
/* 80327ED8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80327EDC  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80327EE0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80327EE4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80327EE8  90 03 00 58 */	stw r0, 0x58(r3)
/* 80327EEC  3B C0 00 00 */	li r30, 0
/* 80327EF0  48 00 00 24 */	b lbl_80327F14
lbl_80327EF4:
/* 80327EF4  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80327EF8  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80327EFC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80327F00  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80327F04  28 00 00 00 */	cmplwi r0, 0
/* 80327F08  41 82 00 08 */	beq lbl_80327F10
/* 80327F0C  48 00 73 49 */	bl entryIn__8J3DJointFv
lbl_80327F10:
/* 80327F10  3B DE 00 01 */	addi r30, r30, 1
lbl_80327F14:
/* 80327F14  80 9F 00 04 */	lwz r4, 4(r31)
/* 80327F18  A0 64 00 2C */	lhz r3, 0x2c(r4)
/* 80327F1C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80327F20  7C 00 18 40 */	cmplw r0, r3
/* 80327F24  41 80 FF D0 */	blt lbl_80327EF4
/* 80327F28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80327F2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80327F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80327F34  7C 08 03 A6 */	mtlr r0
/* 80327F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80327F3C  4E 80 00 20 */	blr 
