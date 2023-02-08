lbl_80770FFC:
/* 80770FFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80771000  7C 08 02 A6 */	mflr r0
/* 80771004  90 01 00 34 */	stw r0, 0x34(r1)
/* 80771008  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8077100C  7C 7F 1B 78 */	mr r31, r3
/* 80771010  80 63 05 CC */	lwz r3, 0x5cc(r3)
/* 80771014  80 63 00 04 */	lwz r3, 4(r3)
/* 80771018  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077101C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80771020  38 63 02 10 */	addi r3, r3, 0x210
/* 80771024  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80771028  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8077102C  80 84 00 00 */	lwz r4, 0(r4)
/* 80771030  4B BD 54 81 */	bl PSMTXCopy
/* 80771034  3C 60 80 78 */	lis r3, lit_4019@ha /* 0x80779E00@ha */
/* 80771038  C0 03 9E 00 */	lfs f0, lit_4019@l(r3)  /* 0x80779E00@l */
/* 8077103C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80771040  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80771044  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80771048  38 61 00 14 */	addi r3, r1, 0x14
/* 8077104C  38 81 00 08 */	addi r4, r1, 8
/* 80771050  4B AF FE 9D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80771054  7F E3 FB 78 */	mr r3, r31
/* 80771058  38 81 00 08 */	addi r4, r1, 8
/* 8077105C  38 A0 00 0A */	li r5, 0xa
/* 80771060  38 C0 00 01 */	li r6, 1
/* 80771064  38 E0 00 0C */	li r7, 0xc
/* 80771068  4B 8A BA 71 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8077106C  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80771070  28 00 00 0C */	cmplwi r0, 0xc
/* 80771074  40 82 00 28 */	bne lbl_8077109C
/* 80771078  38 00 00 32 */	li r0, 0x32
/* 8077107C  98 1F 0B CB */	stb r0, 0xbcb(r31)
/* 80771080  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80771084  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80771088  80 63 00 00 */	lwz r3, 0(r3)
/* 8077108C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80771090  38 80 00 01 */	li r4, 1
/* 80771094  4B B4 30 D1 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 80771098  48 00 00 0C */	b lbl_807710A4
lbl_8077109C:
/* 8077109C  7F E3 FB 78 */	mr r3, r31
/* 807710A0  4B 8A 8B DD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807710A4:
/* 807710A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807710A8  54 04 46 3E */	srwi r4, r0, 0x18
/* 807710AC  2C 04 00 FF */	cmpwi r4, 0xff
/* 807710B0  41 82 00 18 */	beq lbl_807710C8
/* 807710B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807710B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807710BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807710C0  7C 05 07 74 */	extsb r5, r0
/* 807710C4  4B 8C 41 3D */	bl onSwitch__10dSv_info_cFii
lbl_807710C8:
/* 807710C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807710CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807710D0  7C 08 03 A6 */	mtlr r0
/* 807710D4  38 21 00 30 */	addi r1, r1, 0x30
/* 807710D8  4E 80 00 20 */	blr 
