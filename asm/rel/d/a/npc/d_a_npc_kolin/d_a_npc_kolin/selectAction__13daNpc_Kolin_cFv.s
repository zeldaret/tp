lbl_80555E38:
/* 80555E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555E3C  7C 08 02 A6 */	mflr r0
/* 80555E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555E48  93 C1 00 08 */	stw r30, 8(r1)
/* 80555E4C  7C 7F 1B 78 */	mr r31, r3
/* 80555E50  3C 60 80 56 */	lis r3, cNullVec__6Z2Calc@ha
/* 80555E54  3B C3 A8 C8 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80555E58  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80555E5C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80555E60  80 64 00 00 */	lwz r3, 0(r4)
/* 80555E64  80 04 00 04 */	lwz r0, 4(r4)
/* 80555E68  90 7F 0F D8 */	stw r3, 0xfd8(r31)
/* 80555E6C  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 80555E70  80 04 00 08 */	lwz r0, 8(r4)
/* 80555E74  90 1F 0F E0 */	stw r0, 0xfe0(r31)
/* 80555E78  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80555E7C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80555E80  41 82 00 58 */	beq lbl_80555ED8
/* 80555E84  40 80 00 70 */	bge lbl_80555EF4
/* 80555E88  2C 00 00 00 */	cmpwi r0, 0
/* 80555E8C  41 82 00 08 */	beq lbl_80555E94
/* 80555E90  48 00 00 64 */	b lbl_80555EF4
lbl_80555E94:
/* 80555E94  80 7E 08 C4 */	lwz r3, 0x8c4(r30)
/* 80555E98  80 1E 08 C8 */	lwz r0, 0x8c8(r30)
/* 80555E9C  90 7F 0F D8 */	stw r3, 0xfd8(r31)
/* 80555EA0  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 80555EA4  80 1E 08 CC */	lwz r0, 0x8cc(r30)
/* 80555EA8  90 1F 0F E0 */	stw r0, 0xfe0(r31)
/* 80555EAC  38 60 00 16 */	li r3, 0x16
/* 80555EB0  4B BF 6C BC */	b daNpcT_chkTmpBit__FUl
/* 80555EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80555EB8  41 82 00 54 */	beq lbl_80555F0C
/* 80555EBC  80 7E 08 D0 */	lwz r3, 0x8d0(r30)
/* 80555EC0  80 1E 08 D4 */	lwz r0, 0x8d4(r30)
/* 80555EC4  90 7F 0F D8 */	stw r3, 0xfd8(r31)
/* 80555EC8  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 80555ECC  80 1E 08 D8 */	lwz r0, 0x8d8(r30)
/* 80555ED0  90 1F 0F E0 */	stw r0, 0xfe0(r31)
/* 80555ED4  48 00 00 38 */	b lbl_80555F0C
lbl_80555ED8:
/* 80555ED8  80 7E 08 DC */	lwz r3, 0x8dc(r30)
/* 80555EDC  80 1E 08 E0 */	lwz r0, 0x8e0(r30)
/* 80555EE0  90 7F 0F D8 */	stw r3, 0xfd8(r31)
/* 80555EE4  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 80555EE8  80 1E 08 E4 */	lwz r0, 0x8e4(r30)
/* 80555EEC  90 1F 0F E0 */	stw r0, 0xfe0(r31)
/* 80555EF0  48 00 00 1C */	b lbl_80555F0C
lbl_80555EF4:
/* 80555EF4  80 7E 08 E8 */	lwz r3, 0x8e8(r30)
/* 80555EF8  80 1E 08 EC */	lwz r0, 0x8ec(r30)
/* 80555EFC  90 7F 0F D8 */	stw r3, 0xfd8(r31)
/* 80555F00  90 1F 0F DC */	stw r0, 0xfdc(r31)
/* 80555F04  80 1E 08 F0 */	lwz r0, 0x8f0(r30)
/* 80555F08  90 1F 0F E0 */	stw r0, 0xfe0(r31)
lbl_80555F0C:
/* 80555F0C  38 60 00 01 */	li r3, 1
/* 80555F10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555F14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555F1C  7C 08 03 A6 */	mtlr r0
/* 80555F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80555F24  4E 80 00 20 */	blr 
