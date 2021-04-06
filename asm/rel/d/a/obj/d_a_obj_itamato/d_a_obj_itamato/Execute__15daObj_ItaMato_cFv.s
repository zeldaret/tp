lbl_80C29DE0:
/* 80C29DE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C29DE4  7C 08 02 A6 */	mflr r0
/* 80C29DE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C29DEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C29DF0  4B 73 83 DD */	bl _savegpr_25
/* 80C29DF4  7C 7F 1B 78 */	mr r31, r3
/* 80C29DF8  3C 60 80 C3 */	lis r3, m__21daObj_ItaMato_Param_c@ha /* 0x80C2AB70@ha */
/* 80C29DFC  3B C3 AB 70 */	addi r30, r3, m__21daObj_ItaMato_Param_c@l /* 0x80C2AB70@l */
/* 80C29E00  38 7F 07 70 */	addi r3, r31, 0x770
/* 80C29E04  4B 45 9A 2D */	bl Move__10dCcD_GSttsFv
/* 80C29E08  38 00 00 01 */	li r0, 1
/* 80C29E0C  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C29E10  88 1F 0A 18 */	lbz r0, 0xa18(r31)
/* 80C29E14  28 00 00 00 */	cmplwi r0, 0
/* 80C29E18  41 82 00 10 */	beq lbl_80C29E28
/* 80C29E1C  38 00 00 00 */	li r0, 0
/* 80C29E20  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C29E24  48 00 00 48 */	b lbl_80C29E6C
lbl_80C29E28:
/* 80C29E28  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C29E2C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C29E30  28 04 00 FF */	cmplwi r4, 0xff
/* 80C29E34  41 82 00 24 */	beq lbl_80C29E58
/* 80C29E38  41 82 00 34 */	beq lbl_80C29E6C
/* 80C29E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C29E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C29E44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C29E48  7C 05 07 74 */	extsb r5, r0
/* 80C29E4C  4B 40 B5 15 */	bl isSwitch__10dSv_info_cCFii
/* 80C29E50  2C 03 00 00 */	cmpwi r3, 0
/* 80C29E54  41 82 00 18 */	beq lbl_80C29E6C
lbl_80C29E58:
/* 80C29E58  38 60 00 3C */	li r3, 0x3c
/* 80C29E5C  4B 52 2D 11 */	bl daNpcT_chkTmpBit__FUl
/* 80C29E60  7C 60 00 34 */	cntlzw r0, r3
/* 80C29E64  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80C29E68  98 1F 0A 16 */	stb r0, 0xa16(r31)
lbl_80C29E6C:
/* 80C29E6C  38 00 00 00 */	li r0, 0
/* 80C29E70  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80C29E74  98 1F 0A 15 */	stb r0, 0xa15(r31)
/* 80C29E78  80 7F 09 E8 */	lwz r3, 0x9e8(r31)
/* 80C29E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80C29E80  41 82 00 0C */	beq lbl_80C29E8C
/* 80C29E84  38 03 FF FF */	addi r0, r3, -1
/* 80C29E88  90 1F 09 E8 */	stw r0, 0x9e8(r31)
lbl_80C29E8C:
/* 80C29E8C  80 1F 09 E8 */	lwz r0, 0x9e8(r31)
/* 80C29E90  2C 00 00 00 */	cmpwi r0, 0
/* 80C29E94  40 82 02 00 */	bne lbl_80C2A094
/* 80C29E98  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80C29E9C  4B 45 A5 C5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C29EA0  28 03 00 00 */	cmplwi r3, 0
/* 80C29EA4  41 82 01 F0 */	beq lbl_80C2A094
/* 80C29EA8  38 7F 08 A8 */	addi r3, r31, 0x8a8
/* 80C29EAC  4B 45 97 DD */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C29EB0  7C 64 1B 78 */	mr r4, r3
/* 80C29EB4  7F E3 FB 78 */	mr r3, r31
/* 80C29EB8  48 00 07 79 */	bl setSwayParam__15daObj_ItaMato_cFP10fopAc_ac_c
/* 80C29EBC  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80C29EC0  4B 45 A6 39 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C29EC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C29EC8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80C29ECC  40 82 01 C8 */	bne lbl_80C2A094
/* 80C29ED0  38 00 00 01 */	li r0, 1
/* 80C29ED4  98 1F 0A 15 */	stb r0, 0xa15(r31)
/* 80C29ED8  A8 7F 05 62 */	lha r3, 0x562(r31)
/* 80C29EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80C29EE0  41 82 01 B4 */	beq lbl_80C2A094
/* 80C29EE4  38 03 FF FF */	addi r0, r3, -1
/* 80C29EE8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80C29EEC  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80C29EF0  2C 00 00 01 */	cmpwi r0, 1
/* 80C29EF4  40 80 01 44 */	bge lbl_80C2A038
/* 80C29EF8  3B A0 00 04 */	li r29, 4
/* 80C29EFC  88 1F 0A 18 */	lbz r0, 0xa18(r31)
/* 80C29F00  28 00 00 00 */	cmplwi r0, 0
/* 80C29F04  41 82 00 EC */	beq lbl_80C29FF0
/* 80C29F08  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C29F0C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C29F10  28 04 00 FF */	cmplwi r4, 0xff
/* 80C29F14  41 82 00 3C */	beq lbl_80C29F50
/* 80C29F18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C29F1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C29F20  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C29F24  7C 05 07 74 */	extsb r5, r0
/* 80C29F28  4B 40 B4 39 */	bl isSwitch__10dSv_info_cCFii
/* 80C29F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80C29F30  40 82 00 20 */	bne lbl_80C29F50
/* 80C29F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C29F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C29F3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C29F40  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C29F44  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C29F48  7C 05 07 74 */	extsb r5, r0
/* 80C29F4C  4B 40 B2 B5 */	bl onSwitch__10dSv_info_cFii
lbl_80C29F50:
/* 80C29F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C29F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C29F58  3B 23 0D D8 */	addi r25, r3, 0xdd8
/* 80C29F5C  7F 23 CB 78 */	mr r3, r25
/* 80C29F60  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F4FF@ha */
/* 80C29F64  38 84 F4 FF */	addi r4, r4, 0xF4FF /* 0x0000F4FF@l */
/* 80C29F68  4B 40 AA 9D */	bl getEventReg__11dSv_event_cCFUs
/* 80C29F6C  7C 65 1B 78 */	mr r5, r3
/* 80C29F70  7F 23 CB 78 */	mr r3, r25
/* 80C29F74  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F4FF@ha */
/* 80C29F78  38 84 F4 FF */	addi r4, r4, 0xF4FF /* 0x0000F4FF@l */
/* 80C29F7C  38 05 00 01 */	addi r0, r5, 1
/* 80C29F80  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80C29F84  4B 40 AA 5D */	bl setEventReg__11dSv_event_cFUsUc
/* 80C29F88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C29F8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C29F90  3B 43 56 B8 */	addi r26, r3, 0x56b8
/* 80C29F94  7F 43 D3 78 */	mr r3, r26
/* 80C29F98  38 80 00 00 */	li r4, 0
/* 80C29F9C  4B 44 68 A9 */	bl GetLockonList__12dAttention_cFl
/* 80C29FA0  28 03 00 00 */	cmplwi r3, 0
/* 80C29FA4  41 82 00 34 */	beq lbl_80C29FD8
/* 80C29FA8  7F 43 D3 78 */	mr r3, r26
/* 80C29FAC  4B 44 98 39 */	bl LockonTruth__12dAttention_cFv
/* 80C29FB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C29FB4  41 82 00 24 */	beq lbl_80C29FD8
/* 80C29FB8  7F 43 D3 78 */	mr r3, r26
/* 80C29FBC  38 80 00 00 */	li r4, 0
/* 80C29FC0  4B 44 68 85 */	bl GetLockonList__12dAttention_cFl
/* 80C29FC4  4B 44 98 A1 */	bl getActor__10dAttList_cFv
/* 80C29FC8  7C 1F 18 40 */	cmplw r31, r3
/* 80C29FCC  40 82 00 0C */	bne lbl_80C29FD8
/* 80C29FD0  63 A0 00 80 */	ori r0, r29, 0x80
/* 80C29FD4  54 1D 06 3E */	clrlwi r29, r0, 0x18
lbl_80C29FD8:
/* 80C29FD8  7F 23 CB 78 */	mr r3, r25
/* 80C29FDC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F3FF@ha */
/* 80C29FE0  38 84 F3 FF */	addi r4, r4, 0xF3FF /* 0x0000F3FF@l */
/* 80C29FE4  7F A5 EB 78 */	mr r5, r29
/* 80C29FE8  4B 40 A9 F9 */	bl setEventReg__11dSv_event_cFUsUc
/* 80C29FEC  48 00 00 4C */	b lbl_80C2A038
lbl_80C29FF0:
/* 80C29FF0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C29FF4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C29FF8  28 04 00 FF */	cmplwi r4, 0xff
/* 80C29FFC  41 82 00 3C */	beq lbl_80C2A038
/* 80C2A000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2A004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2A008  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C2A00C  7C 05 07 74 */	extsb r5, r0
/* 80C2A010  4B 40 B3 51 */	bl isSwitch__10dSv_info_cCFii
/* 80C2A014  2C 03 00 00 */	cmpwi r3, 0
/* 80C2A018  40 82 00 20 */	bne lbl_80C2A038
/* 80C2A01C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2A020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2A024  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C2A028  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C2A02C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C2A030  7C 05 07 74 */	extsb r5, r0
/* 80C2A034  4B 40 B1 CD */	bl onSwitch__10dSv_info_cFii
lbl_80C2A038:
/* 80C2A038  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C2A03C  7C 03 07 74 */	extsb r3, r0
/* 80C2A040  4B 40 30 2D */	bl dComIfGp_getReverb__Fi
/* 80C2A044  7C 67 1B 78 */	mr r7, r3
/* 80C2A048  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080179@ha */
/* 80C2A04C  38 03 01 79 */	addi r0, r3, 0x0179 /* 0x00080179@l */
/* 80C2A050  90 01 00 08 */	stw r0, 8(r1)
/* 80C2A054  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C2A058  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C2A05C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C2A060  38 81 00 08 */	addi r4, r1, 8
/* 80C2A064  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C2A068  38 C0 00 00 */	li r6, 0
/* 80C2A06C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80C2A070  FC 40 08 90 */	fmr f2, f1
/* 80C2A074  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 80C2A078  FC 80 18 90 */	fmr f4, f3
/* 80C2A07C  39 00 00 00 */	li r8, 0
/* 80C2A080  4B 68 19 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C2A084  7F E3 FB 78 */	mr r3, r31
/* 80C2A088  48 00 07 3D */	bl setPrtcls__15daObj_ItaMato_cFv
/* 80C2A08C  38 00 00 00 */	li r0, 0
/* 80C2A090  98 1F 0A 19 */	stb r0, 0xa19(r31)
lbl_80C2A094:
/* 80C2A094  7F E3 FB 78 */	mr r3, r31
/* 80C2A098  38 9F 07 54 */	addi r4, r31, 0x754
/* 80C2A09C  4B 3F 06 31 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C2A0A0  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C2A0A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2A0A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2A0AC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C2A0B0  4B 44 C9 FD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C2A0B4  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 80C2A0B8  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80C2A0BC  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 80C2A0C0  90 1F 07 D4 */	stw r0, 0x7d4(r31)
/* 80C2A0C4  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80C2A0C8  90 1F 07 D8 */	stw r0, 0x7d8(r31)
/* 80C2A0CC  88 1F 06 64 */	lbz r0, 0x664(r31)
/* 80C2A0D0  98 1F 07 DC */	stb r0, 0x7dc(r31)
/* 80C2A0D4  A0 1F 06 6C */	lhz r0, 0x66c(r31)
/* 80C2A0D8  B0 1F 07 E4 */	sth r0, 0x7e4(r31)
/* 80C2A0DC  A0 1F 06 6E */	lhz r0, 0x66e(r31)
/* 80C2A0E0  B0 1F 07 E6 */	sth r0, 0x7e6(r31)
/* 80C2A0E4  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80C2A0E8  90 1F 07 E8 */	stw r0, 0x7e8(r31)
/* 80C2A0EC  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 80C2A0F0  90 1F 07 EC */	stw r0, 0x7ec(r31)
/* 80C2A0F4  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 80C2A0F8  D0 1F 07 F4 */	stfs f0, 0x7f4(r31)
/* 80C2A0FC  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 80C2A100  D0 1F 07 F8 */	stfs f0, 0x7f8(r31)
/* 80C2A104  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80C2A108  D0 1F 07 FC */	stfs f0, 0x7fc(r31)
/* 80C2A10C  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80C2A110  90 1F 08 00 */	stw r0, 0x800(r31)
/* 80C2A114  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80C2A118  D0 1F 08 04 */	stfs f0, 0x804(r31)
/* 80C2A11C  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80C2A120  90 1F 08 08 */	stw r0, 0x808(r31)
/* 80C2A124  C0 1F 06 14 */	lfs f0, 0x614(r31)
/* 80C2A128  D0 1F 09 EC */	stfs f0, 0x9ec(r31)
/* 80C2A12C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80C2A130  C0 1F 09 EC */	lfs f0, 0x9ec(r31)
/* 80C2A134  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C2A138  41 82 00 14 */	beq lbl_80C2A14C
/* 80C2A13C  7F E3 FB 78 */	mr r3, r31
/* 80C2A140  48 00 07 51 */	bl setEnvTevColor__15daObj_ItaMato_cFv
/* 80C2A144  7F E3 FB 78 */	mr r3, r31
/* 80C2A148  48 00 07 A5 */	bl setRoomNo__15daObj_ItaMato_cFv
lbl_80C2A14C:
/* 80C2A14C  3B 80 00 00 */	li r28, 0
/* 80C2A150  3B 60 00 00 */	li r27, 0
/* 80C2A154  3B 40 00 00 */	li r26, 0
/* 80C2A158  3B 20 00 00 */	li r25, 0
lbl_80C2A15C:
/* 80C2A15C  88 1F 0A 17 */	lbz r0, 0xa17(r31)
/* 80C2A160  28 00 00 00 */	cmplwi r0, 0
/* 80C2A164  41 82 00 84 */	beq lbl_80C2A1E8
/* 80C2A168  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2A16C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2A170  3B B9 09 FC */	addi r29, r25, 0x9fc
/* 80C2A174  7C 9F EA AE */	lhax r4, r31, r29
/* 80C2A178  4B 3E 22 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C2A17C  38 1A 09 F0 */	addi r0, r26, 0x9f0
/* 80C2A180  7C 3F 04 2E */	lfsx f1, r31, r0
/* 80C2A184  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80C2A188  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2A18C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C2A190  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C2A194  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2A198  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2A19C  38 81 00 18 */	addi r4, r1, 0x18
/* 80C2A1A0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C2A1A4  4B 71 CB C9 */	bl PSMTXMultVec
/* 80C2A1A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C2A1AC  FC 00 00 1E */	fctiwz f0, f0
/* 80C2A1B0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C2A1B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2A1B8  7C 7F DA 14 */	add r3, r31, r27
/* 80C2A1BC  B0 03 09 D0 */	sth r0, 0x9d0(r3)
/* 80C2A1C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C2A1C4  FC 00 00 50 */	fneg f0, f0
/* 80C2A1C8  FC 00 00 1E */	fctiwz f0, f0
/* 80C2A1CC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C2A1D0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C2A1D4  B0 03 09 D4 */	sth r0, 0x9d4(r3)
/* 80C2A1D8  7C 7F EA AE */	lhax r3, r31, r29
/* 80C2A1DC  38 03 E0 00 */	addi r0, r3, -8192
/* 80C2A1E0  7C 1F EB 2E */	sthx r0, r31, r29
/* 80C2A1E4  48 00 00 98 */	b lbl_80C2A27C
lbl_80C2A1E8:
/* 80C2A1E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2A1EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2A1F0  A8 9F 0A 02 */	lha r4, 0xa02(r31)
/* 80C2A1F4  4B 3E 21 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C2A1F8  3B B9 09 FC */	addi r29, r25, 0x9fc
/* 80C2A1FC  7C 1F EA AE */	lhax r0, r31, r29
/* 80C2A200  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C2A204  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C2A208  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C2A20C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C2A210  38 1A 09 F0 */	addi r0, r26, 0x9f0
/* 80C2A214  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80C2A218  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C2A21C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80C2A220  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C2A224  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C2A228  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C2A22C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C2A230  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C2A234  38 81 00 18 */	addi r4, r1, 0x18
/* 80C2A238  38 A1 00 0C */	addi r5, r1, 0xc
/* 80C2A23C  4B 71 CB 31 */	bl PSMTXMultVec
/* 80C2A240  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C2A244  FC 00 00 1E */	fctiwz f0, f0
/* 80C2A248  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80C2A24C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80C2A250  7C 7F DA 14 */	add r3, r31, r27
/* 80C2A254  B0 03 09 D0 */	sth r0, 0x9d0(r3)
/* 80C2A258  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C2A25C  FC 00 00 50 */	fneg f0, f0
/* 80C2A260  FC 00 00 1E */	fctiwz f0, f0
/* 80C2A264  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C2A268  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2A26C  B0 03 09 D4 */	sth r0, 0x9d4(r3)
/* 80C2A270  7C 7F EA AE */	lhax r3, r31, r29
/* 80C2A274  38 03 20 00 */	addi r0, r3, 0x2000
/* 80C2A278  7C 1F EB 2E */	sthx r0, r31, r29
lbl_80C2A27C:
/* 80C2A27C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C2A280  2C 1C 00 03 */	cmpwi r28, 3
/* 80C2A284  3B 7B 00 06 */	addi r27, r27, 6
/* 80C2A288  3B 5A 00 04 */	addi r26, r26, 4
/* 80C2A28C  3B 39 00 02 */	addi r25, r25, 2
/* 80C2A290  41 80 FE CC */	blt lbl_80C2A15C
/* 80C2A294  38 7F 09 F0 */	addi r3, r31, 0x9f0
/* 80C2A298  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C2A29C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80C2A2A0  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80C2A2A4  4B 64 57 99 */	bl cLib_addCalc2__FPffff
/* 80C2A2A8  38 7F 09 F4 */	addi r3, r31, 0x9f4
/* 80C2A2AC  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C2A2B0  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80C2A2B4  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80C2A2B8  4B 64 57 85 */	bl cLib_addCalc2__FPffff
/* 80C2A2BC  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80C2A2C0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80C2A2C4  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80C2A2C8  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80C2A2CC  4B 64 57 71 */	bl cLib_addCalc2__FPffff
/* 80C2A2D0  7F E3 FB 78 */	mr r3, r31
/* 80C2A2D4  48 00 06 5D */	bl setMtx__15daObj_ItaMato_cFv
/* 80C2A2D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C2A2DC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C2A2E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C2A2E4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C2A2E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C2A2EC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C2A2F0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80C2A2F4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C2A2F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2A2FC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C2A300  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 80C2A304  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C2A308  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 80C2A30C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C2A310  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 80C2A314  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C2A318  88 1F 0A 16 */	lbz r0, 0xa16(r31)
/* 80C2A31C  28 00 00 00 */	cmplwi r0, 0
/* 80C2A320  40 82 00 E8 */	bne lbl_80C2A408
/* 80C2A324  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80C2A328  3B 23 FD FF */	addi r25, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80C2A32C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C2A330  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C2A334  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C2A338  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2A33C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C2A340  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C2A344  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80C2A348  2C 00 00 00 */	cmpwi r0, 0
/* 80C2A34C  40 82 00 3C */	bne lbl_80C2A388
/* 80C2A350  80 1F 08 24 */	lwz r0, 0x824(r31)
/* 80C2A354  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C2A358  90 1F 08 24 */	stw r0, 0x824(r31)
/* 80C2A35C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80C2A360  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80C2A364  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2A368  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2A36C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80C2A370  38 81 00 24 */	addi r4, r1, 0x24
/* 80C2A374  4B 64 52 D5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C2A378  38 7F 09 30 */	addi r3, r31, 0x930
/* 80C2A37C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80C2A380  4B 64 53 89 */	bl SetR__8cM3dGSphFf
/* 80C2A384  48 00 00 70 */	b lbl_80C2A3F4
lbl_80C2A388:
/* 80C2A388  38 60 00 3C */	li r3, 0x3c
/* 80C2A38C  4B 52 27 E1 */	bl daNpcT_chkTmpBit__FUl
/* 80C2A390  2C 03 00 00 */	cmpwi r3, 0
/* 80C2A394  41 82 00 18 */	beq lbl_80C2A3AC
/* 80C2A398  88 1F 0A 19 */	lbz r0, 0xa19(r31)
/* 80C2A39C  28 00 00 00 */	cmplwi r0, 0
/* 80C2A3A0  40 82 00 0C */	bne lbl_80C2A3AC
/* 80C2A3A4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBDDFF@ha */
/* 80C2A3A8  3B 23 DD FF */	addi r25, r3, 0xDDFF /* 0xD8FBDDFF@l */
lbl_80C2A3AC:
/* 80C2A3AC  93 3F 08 34 */	stw r25, 0x834(r31)
/* 80C2A3B0  88 1F 0A 19 */	lbz r0, 0xa19(r31)
/* 80C2A3B4  28 00 00 00 */	cmplwi r0, 0
/* 80C2A3B8  41 82 00 14 */	beq lbl_80C2A3CC
/* 80C2A3BC  38 7F 09 30 */	addi r3, r31, 0x930
/* 80C2A3C0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80C2A3C4  4B 64 53 45 */	bl SetR__8cM3dGSphFf
/* 80C2A3C8  48 00 00 10 */	b lbl_80C2A3D8
lbl_80C2A3CC:
/* 80C2A3CC  38 7F 09 30 */	addi r3, r31, 0x930
/* 80C2A3D0  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80C2A3D4  4B 64 53 35 */	bl SetR__8cM3dGSphFf
lbl_80C2A3D8:
/* 80C2A3D8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80C2A3DC  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80C2A3E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2A3E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C2A3E8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80C2A3EC  38 81 00 24 */	addi r4, r1, 0x24
/* 80C2A3F0  4B 64 52 59 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_80C2A3F4:
/* 80C2A3F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2A3F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2A3FC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C2A400  38 9F 08 0C */	addi r4, r31, 0x80c
/* 80C2A404  4B 63 A7 A5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80C2A408:
/* 80C2A408  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80C2A40C  81 9F 08 48 */	lwz r12, 0x848(r31)
/* 80C2A410  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C2A414  7D 89 03 A6 */	mtctr r12
/* 80C2A418  4E 80 04 21 */	bctrl 
/* 80C2A41C  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80C2A420  81 9F 08 48 */	lwz r12, 0x848(r31)
/* 80C2A424  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C2A428  7D 89 03 A6 */	mtctr r12
/* 80C2A42C  4E 80 04 21 */	bctrl 
/* 80C2A430  38 60 00 01 */	li r3, 1
/* 80C2A434  39 61 00 60 */	addi r11, r1, 0x60
/* 80C2A438  4B 73 7D E1 */	bl _restgpr_25
/* 80C2A43C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C2A440  7C 08 03 A6 */	mtlr r0
/* 80C2A444  38 21 00 60 */	addi r1, r1, 0x60
/* 80C2A448  4E 80 00 20 */	blr 
