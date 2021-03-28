lbl_80B9DBD0:
/* 80B9DBD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B9DBD4  7C 08 02 A6 */	mflr r0
/* 80B9DBD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B9DBDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80B9DBE0  4B 7C 45 FC */	b _savegpr_29
/* 80B9DBE4  7C 7E 1B 78 */	mr r30, r3
/* 80B9DBE8  3C 60 80 BA */	lis r3, lit_3661@ha
/* 80B9DBEC  3B E3 E8 F4 */	addi r31, r3, lit_3661@l
/* 80B9DBF0  80 1E 07 D4 */	lwz r0, 0x7d4(r30)
/* 80B9DBF4  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B9DBF8  40 82 00 3C */	bne lbl_80B9DC34
/* 80B9DBFC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80B9DC00  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B9DC04  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80B9DC08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B9DC0C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B9DC10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DC14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9DC18  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B9DC1C  3C 80 80 BA */	lis r4, l_HIO@ha
/* 80B9DC20  38 84 EB A4 */	addi r4, r4, l_HIO@l
/* 80B9DC24  88 84 00 11 */	lbz r4, 0x11(r4)
/* 80B9DC28  38 A0 00 0F */	li r5, 0xf
/* 80B9DC2C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80B9DC30  4B 4D 1D F4 */	b StartShock__12dVibration_cFii4cXyz
lbl_80B9DC34:
/* 80B9DC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DC38  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80B9DC3C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9DC40  38 80 00 00 */	li r4, 0
/* 80B9DC44  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DC48  38 00 FF FF */	li r0, -1
/* 80B9DC4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DC50  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DC54  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DC58  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DC5C  38 80 00 00 */	li r4, 0
/* 80B9DC60  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A8F@ha */
/* 80B9DC64  38 A5 8A 8F */	addi r5, r5, 0x8A8F /* 0x00008A8F@l */
/* 80B9DC68  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80B9DC6C  38 E0 00 00 */	li r7, 0
/* 80B9DC70  39 00 00 00 */	li r8, 0
/* 80B9DC74  39 20 00 00 */	li r9, 0
/* 80B9DC78  39 40 00 FF */	li r10, 0xff
/* 80B9DC7C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9DC80  4B 4A EE 10 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DC84  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9DC88  38 80 00 00 */	li r4, 0
/* 80B9DC8C  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DC90  38 00 FF FF */	li r0, -1
/* 80B9DC94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DC98  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DC9C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DCA0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DCA4  38 80 00 00 */	li r4, 0
/* 80B9DCA8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A90@ha */
/* 80B9DCAC  38 A5 8A 90 */	addi r5, r5, 0x8A90 /* 0x00008A90@l */
/* 80B9DCB0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80B9DCB4  38 E0 00 00 */	li r7, 0
/* 80B9DCB8  39 00 00 00 */	li r8, 0
/* 80B9DCBC  39 20 00 00 */	li r9, 0
/* 80B9DCC0  39 40 00 FF */	li r10, 0xff
/* 80B9DCC4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9DCC8  4B 4A ED C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DCCC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9DCD0  38 80 00 00 */	li r4, 0
/* 80B9DCD4  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DCD8  38 00 FF FF */	li r0, -1
/* 80B9DCDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DCE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DCE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DCE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DCEC  38 80 00 00 */	li r4, 0
/* 80B9DCF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A91@ha */
/* 80B9DCF4  38 A5 8A 91 */	addi r5, r5, 0x8A91 /* 0x00008A91@l */
/* 80B9DCF8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80B9DCFC  38 E0 00 00 */	li r7, 0
/* 80B9DD00  39 00 00 00 */	li r8, 0
/* 80B9DD04  39 20 00 00 */	li r9, 0
/* 80B9DD08  39 40 00 FF */	li r10, 0xff
/* 80B9DD0C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9DD10  4B 4A ED 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DD14  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9DD18  38 80 00 00 */	li r4, 0
/* 80B9DD1C  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DD20  38 00 FF FF */	li r0, -1
/* 80B9DD24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DD28  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DD2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DD30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DD34  38 80 00 00 */	li r4, 0
/* 80B9DD38  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A92@ha */
/* 80B9DD3C  38 A5 8A 92 */	addi r5, r5, 0x8A92 /* 0x00008A92@l */
/* 80B9DD40  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80B9DD44  38 E0 00 00 */	li r7, 0
/* 80B9DD48  39 00 00 00 */	li r8, 0
/* 80B9DD4C  39 20 00 00 */	li r9, 0
/* 80B9DD50  39 40 00 FF */	li r10, 0xff
/* 80B9DD54  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9DD58  4B 4A ED 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DD5C  38 00 00 01 */	li r0, 1
/* 80B9DD60  98 1E 09 84 */	stb r0, 0x984(r30)
/* 80B9DD64  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80B9DD68  28 04 00 00 */	cmplwi r4, 0
/* 80B9DD6C  41 82 00 14 */	beq lbl_80B9DD80
/* 80B9DD70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DD74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9DD78  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9DD7C  4B 4D 64 D4 */	b Release__4cBgSFP9dBgW_Base
lbl_80B9DD80:
/* 80B9DD80  80 9E 09 80 */	lwz r4, 0x980(r30)
/* 80B9DD84  28 04 00 00 */	cmplwi r4, 0
/* 80B9DD88  41 82 00 20 */	beq lbl_80B9DDA8
/* 80B9DD8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DD90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9DD94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9DD98  7F C5 F3 78 */	mr r5, r30
/* 80B9DD9C  4B 4D 6C 6C */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80B9DDA0  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 80B9DDA4  4B 4D DC 1C */	b Move__4dBgWFv
lbl_80B9DDA8:
/* 80B9DDA8  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80B9DDAC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9DDB0  90 1E 06 34 */	stw r0, 0x634(r30)
/* 80B9DDB4  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 80B9DDB8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9DDBC  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80B9DDC0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B9DDC4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B9DDC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DDCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9DDD0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9DDD4  7C 05 07 74 */	extsb r5, r0
/* 80B9DDD8  4B 49 74 28 */	b onSwitch__10dSv_info_cFii
/* 80B9DDDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B9DDE0  7C 03 07 74 */	extsb r3, r0
/* 80B9DDE4  4B 48 F2 88 */	b dComIfGp_getReverb__Fi
/* 80B9DDE8  7C 67 1B 78 */	mr r7, r3
/* 80B9DDEC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AC@ha */
/* 80B9DDF0  38 03 02 AC */	addi r0, r3, 0x02AC /* 0x000802AC@l */
/* 80B9DDF4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9DDF8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9DDFC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9DE00  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9DE04  38 81 00 20 */	addi r4, r1, 0x20
/* 80B9DE08  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B9DE0C  38 C0 00 00 */	li r6, 0
/* 80B9DE10  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9DE14  FC 40 08 90 */	fmr f2, f1
/* 80B9DE18  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80B9DE1C  FC 80 18 90 */	fmr f4, f3
/* 80B9DE20  39 00 00 00 */	li r8, 0
/* 80B9DE24  4B 70 DB 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9DE28  38 00 00 03 */	li r0, 3
/* 80B9DE2C  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80B9DE30  39 61 00 40 */	addi r11, r1, 0x40
/* 80B9DE34  4B 7C 43 F4 */	b _restgpr_29
/* 80B9DE38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B9DE3C  7C 08 03 A6 */	mtlr r0
/* 80B9DE40  38 21 00 40 */	addi r1, r1, 0x40
/* 80B9DE44  4E 80 00 20 */	blr 
