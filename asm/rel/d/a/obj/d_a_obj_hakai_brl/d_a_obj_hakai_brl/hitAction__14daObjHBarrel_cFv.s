lbl_80C16E50:
/* 80C16E50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C16E54  7C 08 02 A6 */	mflr r0
/* 80C16E58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C16E5C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C16E60  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C16E64  7C 7F 1B 78 */	mr r31, r3
/* 80C16E68  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C16E6C  4B 46 D5 F5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C16E70  28 03 00 00 */	cmplwi r3, 0
/* 80C16E74  41 82 02 04 */	beq lbl_80C17078
/* 80C16E78  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C16E7C  4B 46 D6 7D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C16E80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C16E84  41 82 01 E0 */	beq lbl_80C17064
/* 80C16E88  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C16E8C  4B 46 D6 F1 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80C16E90  38 80 00 01 */	li r4, 1
/* 80C16E94  4B 46 D7 1D */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80C16E98  7C 64 1B 78 */	mr r4, r3
/* 80C16E9C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C16EA0  38 A0 00 10 */	li r5, 0x10
/* 80C16EA4  38 C0 00 00 */	li r6, 0
/* 80C16EA8  4B 6A 75 FD */	bl startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
/* 80C16EAC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80C16EB0  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80C16EB4  40 82 00 0C */	bne lbl_80C16EC0
/* 80C16EB8  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80C16EBC  41 82 00 CC */	beq lbl_80C16F88
lbl_80C16EC0:
/* 80C16EC0  38 DF 06 88 */	addi r6, r31, 0x688
/* 80C16EC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C16EC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C16ECC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C16ED0  38 80 00 01 */	li r4, 1
/* 80C16ED4  7F E5 FB 78 */	mr r5, r31
/* 80C16ED8  38 E0 00 00 */	li r7, 0
/* 80C16EDC  39 00 00 00 */	li r8, 0
/* 80C16EE0  39 20 00 00 */	li r9, 0
/* 80C16EE4  4B 43 53 35 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80C16EE8  7F E3 FB 78 */	mr r3, r31
/* 80C16EEC  48 00 01 A5 */	bl callEmt__14daObjHBarrel_cFv
/* 80C16EF0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C16EF4  7C 03 07 74 */	extsb r3, r0
/* 80C16EF8  4B 41 61 75 */	bl dComIfGp_getReverb__Fi
/* 80C16EFC  7C 67 1B 78 */	mr r7, r3
/* 80C16F00  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FE@ha */
/* 80C16F04  38 03 01 FE */	addi r0, r3, 0x01FE /* 0x000801FE@l */
/* 80C16F08  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C16F0C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C16F10  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C16F14  80 63 00 00 */	lwz r3, 0(r3)
/* 80C16F18  38 81 00 20 */	addi r4, r1, 0x20
/* 80C16F1C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C16F20  38 C0 00 00 */	li r6, 0
/* 80C16F24  3D 00 80 C1 */	lis r8, lit_3916@ha /* 0x80C17348@ha */
/* 80C16F28  C0 28 73 48 */	lfs f1, lit_3916@l(r8)  /* 0x80C17348@l */
/* 80C16F2C  FC 40 08 90 */	fmr f2, f1
/* 80C16F30  3D 00 80 C1 */	lis r8, lit_3917@ha /* 0x80C1734C@ha */
/* 80C16F34  C0 68 73 4C */	lfs f3, lit_3917@l(r8)  /* 0x80C1734C@l */
/* 80C16F38  FC 80 18 90 */	fmr f4, f3
/* 80C16F3C  39 00 00 00 */	li r8, 0
/* 80C16F40  4B 69 4A 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C16F44  80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 80C16F48  38 00 00 00 */	li r0, 0
/* 80C16F4C  90 01 00 08 */	stw r0, 8(r1)
/* 80C16F50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C16F54  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C16F58  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 80C16F5C  54 A5 C6 3E */	rlwinm r5, r5, 0x18, 0x18, 0x1f
/* 80C16F60  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C16F64  7C 06 07 74 */	extsb r6, r0
/* 80C16F68  38 E0 00 00 */	li r7, 0
/* 80C16F6C  39 00 00 00 */	li r8, 0
/* 80C16F70  39 20 00 00 */	li r9, 0
/* 80C16F74  39 40 00 00 */	li r10, 0
/* 80C16F78  4B 40 4F ED */	bl fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
/* 80C16F7C  7F E3 FB 78 */	mr r3, r31
/* 80C16F80  4B 40 2C FD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C16F84  48 00 00 E0 */	b lbl_80C17064
lbl_80C16F88:
/* 80C16F88  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80C16F8C  40 82 00 0C */	bne lbl_80C16F98
/* 80C16F90  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80C16F94  41 82 00 A8 */	beq lbl_80C1703C
lbl_80C16F98:
/* 80C16F98  3C 60 80 C1 */	lis r3, lit_3916@ha /* 0x80C17348@ha */
/* 80C16F9C  C0 03 73 48 */	lfs f0, lit_3916@l(r3)  /* 0x80C17348@l */
/* 80C16FA0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C16FA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C16FA8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C16FAC  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 80C16FB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C16FB4  A0 1F 04 E8 */	lhz r0, 0x4e8(r31)
/* 80C16FB8  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80C16FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C16FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C16FC4  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80C16FC8  28 05 00 00 */	cmplwi r5, 0
/* 80C16FCC  41 82 00 1C */	beq lbl_80C16FE8
/* 80C16FD0  A8 85 04 E8 */	lha r4, 0x4e8(r5)
/* 80C16FD4  A8 65 04 E6 */	lha r3, 0x4e6(r5)
/* 80C16FD8  A8 05 04 E4 */	lha r0, 0x4e4(r5)
/* 80C16FDC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80C16FE0  B0 61 00 26 */	sth r3, 0x26(r1)
/* 80C16FE4  B0 81 00 28 */	sth r4, 0x28(r1)
lbl_80C16FE8:
/* 80C16FE8  38 DF 06 88 */	addi r6, r31, 0x688
/* 80C16FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C16FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C16FF4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C16FF8  38 80 00 00 */	li r4, 0
/* 80C16FFC  90 81 00 08 */	stw r4, 8(r1)
/* 80C17000  38 00 FF FF */	li r0, -1
/* 80C17004  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C17008  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C1700C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C17010  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C17014  38 80 00 00 */	li r4, 0
/* 80C17018  38 A0 07 52 */	li r5, 0x752
/* 80C1701C  38 E0 00 00 */	li r7, 0
/* 80C17020  39 01 00 24 */	addi r8, r1, 0x24
/* 80C17024  39 21 00 2C */	addi r9, r1, 0x2c
/* 80C17028  39 40 00 FF */	li r10, 0xff
/* 80C1702C  3D 60 80 C1 */	lis r11, lit_3916@ha /* 0x80C17348@ha */
/* 80C17030  C0 2B 73 48 */	lfs f1, lit_3916@l(r11)  /* 0x80C17348@l */
/* 80C17034  4B 43 5A 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C17038  48 00 00 2C */	b lbl_80C17064
lbl_80C1703C:
/* 80C1703C  38 DF 06 88 */	addi r6, r31, 0x688
/* 80C17040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C17044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C17048  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C1704C  38 80 00 09 */	li r4, 9
/* 80C17050  7F E5 FB 78 */	mr r5, r31
/* 80C17054  38 E0 00 00 */	li r7, 0
/* 80C17058  39 00 00 00 */	li r8, 0
/* 80C1705C  39 20 00 00 */	li r9, 0
/* 80C17060  4B 43 51 B9 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_80C17064:
/* 80C17064  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C17068  81 9F 05 F0 */	lwz r12, 0x5f0(r31)
/* 80C1706C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C17070  7D 89 03 A6 */	mtctr r12
/* 80C17074  4E 80 04 21 */	bctrl 
lbl_80C17078:
/* 80C17078  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C1707C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C17080  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C17084  7C 08 03 A6 */	mtlr r0
/* 80C17088  38 21 00 40 */	addi r1, r1, 0x40
/* 80C1708C  4E 80 00 20 */	blr 
