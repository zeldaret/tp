lbl_80480020:
/* 80480020  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80480024  7C 08 02 A6 */	mflr r0
/* 80480028  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048002C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80480030  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80480034  7C 7F 1B 78 */	mr r31, r3
/* 80480038  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8048003C  3B C3 0F 28 */	addi r30, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 80480040  38 C0 00 00 */	li r6, 0
/* 80480044  80 1F 08 A0 */	lwz r0, 0x8a0(r31)
/* 80480048  2C 00 00 00 */	cmpwi r0, 0
/* 8048004C  41 80 00 38 */	blt lbl_80480084
/* 80480050  1C 80 00 70 */	mulli r4, r0, 0x70
/* 80480054  3C 60 80 48 */	lis r3, M_wall_work__Q212daObjMovebox5Bgc_c@ha /* 0x804820CC@ha */
/* 80480058  38 03 20 CC */	addi r0, r3, M_wall_work__Q212daObjMovebox5Bgc_c@l /* 0x804820CC@l */
/* 8048005C  7C 60 22 14 */	add r3, r0, r4
/* 80480060  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 80480064  2C 00 00 00 */	cmpwi r0, 0
/* 80480068  41 80 00 1C */	blt lbl_80480084
/* 8048006C  2C 00 01 00 */	cmpwi r0, 0x100
/* 80480070  40 80 00 14 */	bge lbl_80480084
/* 80480074  38 63 00 14 */	addi r3, r3, 0x14
/* 80480078  4B D2 B4 49 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8048007C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80480080  7C 06 03 78 */	mr r6, r0
lbl_80480084:
/* 80480084  88 FF 08 FF */	lbz r7, 0x8ff(r31)
/* 80480088  80 1F 08 AC */	lwz r0, 0x8ac(r31)
/* 8048008C  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 80480090  38 7E 02 40 */	addi r3, r30, 0x240
/* 80480094  38 04 00 80 */	addi r0, r4, 0x80
/* 80480098  7C 03 00 2E */	lwzx r0, r3, r0
/* 8048009C  90 01 00 08 */	stw r0, 8(r1)
/* 804800A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804800A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804800A8  80 63 00 00 */	lwz r3, 0(r3)
/* 804800AC  38 81 00 08 */	addi r4, r1, 8
/* 804800B0  38 BF 05 38 */	addi r5, r31, 0x538
/* 804800B4  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 804800B8  FC 40 08 90 */	fmr f2, f1
/* 804800BC  C0 7E 07 60 */	lfs f3, 0x760(r30)
/* 804800C0  FC 80 18 90 */	fmr f4, f3
/* 804800C4  39 00 00 00 */	li r8, 0
/* 804800C8  4B E2 B8 BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804800CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804800D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804800D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804800D8  7C 08 03 A6 */	mtlr r0
/* 804800DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804800E0  4E 80 00 20 */	blr 
