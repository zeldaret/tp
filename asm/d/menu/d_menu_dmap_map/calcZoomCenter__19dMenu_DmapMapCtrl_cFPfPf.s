lbl_801C1B14:
/* 801C1B14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C1B18  7C 08 02 A6 */	mflr r0
/* 801C1B1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C1B20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C1B24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C1B28  7C 9E 23 78 */	mr r30, r4
/* 801C1B2C  7C BF 2B 78 */	mr r31, r5
/* 801C1B30  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C1B34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C1B38  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C1B3C  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha
/* 801C1B40  38 84 60 94 */	addi r4, r4, mStatus__20dStage_roomControl_c@l
/* 801C1B44  88 63 00 E6 */	lbz r3, 0xe6(r3)
/* 801C1B48  7C 63 07 74 */	extsb r3, r3
/* 801C1B4C  1C 03 04 04 */	mulli r0, r3, 0x404
/* 801C1B50  7C 84 02 14 */	add r4, r4, r0
/* 801C1B54  80 04 00 20 */	lwz r0, 0x20(r4)
/* 801C1B58  28 00 00 00 */	cmplwi r0, 0
/* 801C1B5C  41 82 00 10 */	beq lbl_801C1B6C
/* 801C1B60  38 81 00 0C */	addi r4, r1, 0xc
/* 801C1B64  38 A1 00 08 */	addi r5, r1, 8
/* 801C1B68  4B E7 D6 35 */	bl getRoomCenter__10dMapInfo_nFiPfPf
lbl_801C1B6C:
/* 801C1B6C  28 1E 00 00 */	cmplwi r30, 0
/* 801C1B70  41 82 00 0C */	beq lbl_801C1B7C
/* 801C1B74  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801C1B78  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_801C1B7C:
/* 801C1B7C  28 1F 00 00 */	cmplwi r31, 0
/* 801C1B80  41 82 00 0C */	beq lbl_801C1B8C
/* 801C1B84  C0 01 00 08 */	lfs f0, 8(r1)
/* 801C1B88  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_801C1B8C:
/* 801C1B8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C1B90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C1B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C1B98  7C 08 03 A6 */	mtlr r0
/* 801C1B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C1BA0  4E 80 00 20 */	blr 
