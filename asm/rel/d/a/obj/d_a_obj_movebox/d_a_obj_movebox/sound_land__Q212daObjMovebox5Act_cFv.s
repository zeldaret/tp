lbl_804800E4:
/* 804800E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804800E8  7C 08 02 A6 */	mflr r0
/* 804800EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804800F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804800F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804800F8  7C 7F 1B 78 */	mr r31, r3
/* 804800FC  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 80480100  3B C3 0F 28 */	addi r30, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 80480104  38 C0 00 00 */	li r6, 0
/* 80480108  80 1F 07 84 */	lwz r0, 0x784(r31)
/* 8048010C  2C 00 00 00 */	cmpwi r0, 0
/* 80480110  41 80 00 38 */	blt lbl_80480148
/* 80480114  1C 80 00 54 */	mulli r4, r0, 0x54
/* 80480118  3C 60 80 48 */	lis r3, M_gnd_work__Q212daObjMovebox5Bgc_c@ha /* 0x804818D4@ha */
/* 8048011C  38 03 18 D4 */	addi r0, r3, M_gnd_work__Q212daObjMovebox5Bgc_c@l /* 0x804818D4@l */
/* 80480120  7C 60 22 14 */	add r3, r0, r4
/* 80480124  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 80480128  2C 00 00 00 */	cmpwi r0, 0
/* 8048012C  41 80 00 1C */	blt lbl_80480148
/* 80480130  2C 00 01 00 */	cmpwi r0, 0x100
/* 80480134  40 80 00 14 */	bge lbl_80480148
/* 80480138  38 63 00 14 */	addi r3, r3, 0x14
/* 8048013C  4B D2 B3 85 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80480140  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80480144  7C 06 03 78 */	mr r6, r0
lbl_80480148:
/* 80480148  88 FF 08 FF */	lbz r7, 0x8ff(r31)
/* 8048014C  80 1F 08 AC */	lwz r0, 0x8ac(r31)
/* 80480150  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 80480154  38 7E 02 40 */	addi r3, r30, 0x240
/* 80480158  38 04 00 84 */	addi r0, r4, 0x84
/* 8048015C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80480160  90 01 00 08 */	stw r0, 8(r1)
/* 80480164  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80480168  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8048016C  80 63 00 00 */	lwz r3, 0(r3)
/* 80480170  38 81 00 08 */	addi r4, r1, 8
/* 80480174  38 BF 05 38 */	addi r5, r31, 0x538
/* 80480178  C0 3E 01 D4 */	lfs f1, 0x1d4(r30)
/* 8048017C  FC 40 08 90 */	fmr f2, f1
/* 80480180  C0 7E 07 60 */	lfs f3, 0x760(r30)
/* 80480184  FC 80 18 90 */	fmr f4, f3
/* 80480188  39 00 00 00 */	li r8, 0
/* 8048018C  4B E2 B7 F9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80480190  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80480194  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80480198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048019C  7C 08 03 A6 */	mtlr r0
/* 804801A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804801A4  4E 80 00 20 */	blr 
