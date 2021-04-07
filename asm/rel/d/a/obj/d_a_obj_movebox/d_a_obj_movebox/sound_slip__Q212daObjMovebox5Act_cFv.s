lbl_8047FF5C:
/* 8047FF5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047FF60  7C 08 02 A6 */	mflr r0
/* 8047FF64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047FF68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047FF6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8047FF70  7C 7F 1B 78 */	mr r31, r3
/* 8047FF74  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8047FF78  3B C3 0F 28 */	addi r30, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 8047FF7C  38 C0 00 00 */	li r6, 0
/* 8047FF80  80 1F 07 84 */	lwz r0, 0x784(r31)
/* 8047FF84  2C 00 00 00 */	cmpwi r0, 0
/* 8047FF88  41 80 00 38 */	blt lbl_8047FFC0
/* 8047FF8C  1C 80 00 54 */	mulli r4, r0, 0x54
/* 8047FF90  3C 60 80 48 */	lis r3, M_gnd_work__Q212daObjMovebox5Bgc_c@ha /* 0x804818D4@ha */
/* 8047FF94  38 03 18 D4 */	addi r0, r3, M_gnd_work__Q212daObjMovebox5Bgc_c@l /* 0x804818D4@l */
/* 8047FF98  7C 60 22 14 */	add r3, r0, r4
/* 8047FF9C  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 8047FFA0  2C 00 00 00 */	cmpwi r0, 0
/* 8047FFA4  41 80 00 1C */	blt lbl_8047FFC0
/* 8047FFA8  2C 00 01 00 */	cmpwi r0, 0x100
/* 8047FFAC  40 80 00 14 */	bge lbl_8047FFC0
/* 8047FFB0  38 63 00 14 */	addi r3, r3, 0x14
/* 8047FFB4  4B D2 B5 0D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8047FFB8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8047FFBC  7C 06 03 78 */	mr r6, r0
lbl_8047FFC0:
/* 8047FFC0  88 FF 08 FF */	lbz r7, 0x8ff(r31)
/* 8047FFC4  80 1F 08 AC */	lwz r0, 0x8ac(r31)
/* 8047FFC8  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 8047FFCC  38 7E 02 40 */	addi r3, r30, 0x240
/* 8047FFD0  38 04 00 7C */	addi r0, r4, 0x7c
/* 8047FFD4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8047FFD8  90 01 00 08 */	stw r0, 8(r1)
/* 8047FFDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8047FFE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8047FFE4  80 63 00 00 */	lwz r3, 0(r3)
/* 8047FFE8  38 81 00 08 */	addi r4, r1, 8
/* 8047FFEC  38 BF 05 38 */	addi r5, r31, 0x538
/* 8047FFF0  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 8047FFF4  FC 40 08 90 */	fmr f2, f1
/* 8047FFF8  C0 7E 07 60 */	lfs f3, 0x760(r30)
/* 8047FFFC  FC 80 18 90 */	fmr f4, f3
/* 80480000  39 00 00 00 */	li r8, 0
/* 80480004  4B E2 C5 09 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80480008  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048000C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80480010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80480014  7C 08 03 A6 */	mtlr r0
/* 80480018  38 21 00 20 */	addi r1, r1, 0x20
/* 8048001C  4E 80 00 20 */	blr 
