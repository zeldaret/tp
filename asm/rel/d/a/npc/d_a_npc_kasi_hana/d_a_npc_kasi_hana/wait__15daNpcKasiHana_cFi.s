lbl_80A1DC00:
/* 80A1DC00  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A1DC04  7C 08 02 A6 */	mflr r0
/* 80A1DC08  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A1DC0C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80A1DC10  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80A1DC14  39 61 00 80 */	addi r11, r1, 0x80
/* 80A1DC18  4B 94 45 BD */	bl _savegpr_27
/* 80A1DC1C  7C 7B 1B 78 */	mr r27, r3
/* 80A1DC20  3C 80 80 A2 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A213D4@ha */
/* 80A1DC24  3B A4 13 D4 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x80A213D4@l */
/* 80A1DC28  3C 80 80 A2 */	lis r4, lit_3908@ha /* 0x80A21080@ha */
/* 80A1DC2C  3B C4 10 80 */	addi r30, r4, lit_3908@l /* 0x80A21080@l */
/* 80A1DC30  A8 03 14 06 */	lha r0, 0x1406(r3)
/* 80A1DC34  2C 00 00 00 */	cmpwi r0, 0
/* 80A1DC38  41 82 00 18 */	beq lbl_80A1DC50
/* 80A1DC3C  40 80 00 08 */	bge lbl_80A1DC44
/* 80A1DC40  48 00 05 20 */	b lbl_80A1E160
lbl_80A1DC44:
/* 80A1DC44  2C 00 00 02 */	cmpwi r0, 2
/* 80A1DC48  40 80 05 18 */	bge lbl_80A1E160
/* 80A1DC4C  48 00 00 70 */	b lbl_80A1DCBC
lbl_80A1DC50:
/* 80A1DC50  88 1B 14 04 */	lbz r0, 0x1404(r27)
/* 80A1DC54  7C 00 07 75 */	extsb. r0, r0
/* 80A1DC58  40 82 00 30 */	bne lbl_80A1DC88
/* 80A1DC5C  88 1B 14 45 */	lbz r0, 0x1445(r27)
/* 80A1DC60  28 00 00 00 */	cmplwi r0, 0
/* 80A1DC64  40 82 00 24 */	bne lbl_80A1DC88
/* 80A1DC68  38 80 00 0B */	li r4, 0xb
/* 80A1DC6C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80A1DC70  38 A0 00 00 */	li r5, 0
/* 80A1DC74  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1DC78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1DC7C  7D 89 03 A6 */	mtctr r12
/* 80A1DC80  4E 80 04 21 */	bctrl 
/* 80A1DC84  48 00 00 24 */	b lbl_80A1DCA8
lbl_80A1DC88:
/* 80A1DC88  7F 63 DB 78 */	mr r3, r27
/* 80A1DC8C  38 80 00 04 */	li r4, 4
/* 80A1DC90  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A1DC94  38 A0 00 00 */	li r5, 0
/* 80A1DC98  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A1DC9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1DCA0  7D 89 03 A6 */	mtctr r12
/* 80A1DCA4  4E 80 04 21 */	bctrl 
lbl_80A1DCA8:
/* 80A1DCA8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A1DCAC  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A1DCB0  38 00 00 01 */	li r0, 1
/* 80A1DCB4  B0 1B 14 06 */	sth r0, 0x1406(r27)
/* 80A1DCB8  48 00 04 A8 */	b lbl_80A1E160
lbl_80A1DCBC:
/* 80A1DCBC  3B 80 00 00 */	li r28, 0
/* 80A1DCC0  4B FF FE 5D */	bl chkFindPlayer__15daNpcKasiHana_cFv
/* 80A1DCC4  38 7B 0C 8C */	addi r3, r27, 0xc8c
/* 80A1DCC8  4B 73 2A 25 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1DCCC  28 03 00 00 */	cmplwi r3, 0
/* 80A1DCD0  41 82 00 18 */	beq lbl_80A1DCE8
/* 80A1DCD4  7F 63 DB 78 */	mr r3, r27
/* 80A1DCD8  38 80 00 02 */	li r4, 2
/* 80A1DCDC  4B FF FB 49 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1DCE0  3B 80 00 01 */	li r28, 1
/* 80A1DCE4  48 00 00 BC */	b lbl_80A1DDA0
lbl_80A1DCE8:
/* 80A1DCE8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80A1DCEC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A1DCF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1DCF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1DCF8  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80A1DCFC  7C 05 07 74 */	extsb r5, r0
/* 80A1DD00  4B 61 76 61 */	bl isSwitch__10dSv_info_cCFii
/* 80A1DD04  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DD08  40 82 00 98 */	bne lbl_80A1DDA0
/* 80A1DD0C  7F 63 DB 78 */	mr r3, r27
/* 80A1DD10  38 80 00 00 */	li r4, 0
/* 80A1DD14  4B FF FB 11 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1DD18  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80A1DD1C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80A1DD20  7C 04 00 00 */	cmpw r4, r0
/* 80A1DD24  41 82 00 7C */	beq lbl_80A1DDA0
/* 80A1DD28  7F 63 DB 78 */	mr r3, r27
/* 80A1DD2C  38 A0 00 01 */	li r5, 1
/* 80A1DD30  4B FF FC F9 */	bl step__15daNpcKasiHana_cFsi
/* 80A1DD34  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DD38  41 82 00 68 */	beq lbl_80A1DDA0
/* 80A1DD3C  88 1B 14 04 */	lbz r0, 0x1404(r27)
/* 80A1DD40  7C 00 07 75 */	extsb. r0, r0
/* 80A1DD44  40 82 00 34 */	bne lbl_80A1DD78
/* 80A1DD48  88 1B 14 45 */	lbz r0, 0x1445(r27)
/* 80A1DD4C  28 00 00 00 */	cmplwi r0, 0
/* 80A1DD50  40 82 00 28 */	bne lbl_80A1DD78
/* 80A1DD54  7F 63 DB 78 */	mr r3, r27
/* 80A1DD58  38 80 00 0B */	li r4, 0xb
/* 80A1DD5C  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 80A1DD60  38 A0 00 00 */	li r5, 0
/* 80A1DD64  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A1DD68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1DD6C  7D 89 03 A6 */	mtctr r12
/* 80A1DD70  4E 80 04 21 */	bctrl 
/* 80A1DD74  48 00 00 24 */	b lbl_80A1DD98
lbl_80A1DD78:
/* 80A1DD78  7F 63 DB 78 */	mr r3, r27
/* 80A1DD7C  38 80 00 04 */	li r4, 4
/* 80A1DD80  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A1DD84  38 A0 00 00 */	li r5, 0
/* 80A1DD88  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80A1DD8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1DD90  7D 89 03 A6 */	mtctr r12
/* 80A1DD94  4E 80 04 21 */	bctrl 
lbl_80A1DD98:
/* 80A1DD98  38 00 00 00 */	li r0, 0
/* 80A1DD9C  90 1B 09 6C */	stw r0, 0x96c(r27)
lbl_80A1DDA0:
/* 80A1DDA0  88 7B 14 04 */	lbz r3, 0x1404(r27)
/* 80A1DDA4  7C 60 07 75 */	extsb. r0, r3
/* 80A1DDA8  40 82 01 C4 */	bne lbl_80A1DF6C
/* 80A1DDAC  38 60 01 22 */	li r3, 0x122
/* 80A1DDB0  4B 73 78 85 */	bl daNpcF_chkEvtBit__FUl
/* 80A1DDB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DDB8  41 82 01 FC */	beq lbl_80A1DFB4
/* 80A1DDBC  7F 63 DB 78 */	mr r3, r27
/* 80A1DDC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1DDC4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1DDC8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A1DDCC  4B 5F CB 99 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1DDD0  FF E0 08 90 */	fmr f31, f1
/* 80A1DDD4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80A1DDD8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A1DDDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1DDE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1DDE4  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80A1DDE8  7C 05 07 74 */	extsb r5, r0
/* 80A1DDEC  4B 61 75 75 */	bl isSwitch__10dSv_info_cCFii
/* 80A1DDF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DDF4  40 82 00 1C */	bne lbl_80A1DE10
/* 80A1DDF8  C0 1E 02 48 */	lfs f0, 0x248(r30)
/* 80A1DDFC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A1DE00  40 80 01 B4 */	bge lbl_80A1DFB4
/* 80A1DE04  38 00 00 01 */	li r0, 1
/* 80A1DE08  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80A1DE0C  48 00 01 A8 */	b lbl_80A1DFB4
lbl_80A1DE10:
/* 80A1DE10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1DE14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1DE18  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A1DE1C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A1DE20  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A1DE24  40 82 01 90 */	bne lbl_80A1DFB4
/* 80A1DE28  88 1B 14 41 */	lbz r0, 0x1441(r27)
/* 80A1DE2C  7C 00 07 75 */	extsb. r0, r0
/* 80A1DE30  40 82 00 B4 */	bne lbl_80A1DEE4
/* 80A1DE34  2C 1C 00 00 */	cmpwi r28, 0
/* 80A1DE38  41 82 00 44 */	beq lbl_80A1DE7C
/* 80A1DE3C  38 00 00 01 */	li r0, 1
/* 80A1DE40  98 1B 14 41 */	stb r0, 0x1441(r27)
/* 80A1DE44  80 1B 14 68 */	lwz r0, 0x1468(r27)
/* 80A1DE48  60 00 02 00 */	ori r0, r0, 0x200
/* 80A1DE4C  90 1B 14 68 */	stw r0, 0x1468(r27)
/* 80A1DE50  80 7D 01 E0 */	lwz r3, 0x1e0(r29)
/* 80A1DE54  80 1D 01 E4 */	lwz r0, 0x1e4(r29)
/* 80A1DE58  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80A1DE5C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80A1DE60  80 1D 01 E8 */	lwz r0, 0x1e8(r29)
/* 80A1DE64  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A1DE68  7F 63 DB 78 */	mr r3, r27
/* 80A1DE6C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A1DE70  4B FF F9 0D */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1DE74  38 60 00 01 */	li r3, 1
/* 80A1DE78  48 00 02 EC */	b lbl_80A1E164
lbl_80A1DE7C:
/* 80A1DE7C  38 7B 14 48 */	addi r3, r27, 0x1448
/* 80A1DE80  4B FF D3 49 */	bl getDistFromCenter__15daNpcKasi_Mng_cFv
/* 80A1DE84  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80A1DE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1DE8C  4C 41 13 82 */	cror 2, 1, 2
/* 80A1DE90  40 82 01 24 */	bne lbl_80A1DFB4
/* 80A1DE94  38 7E 00 48 */	addi r3, r30, 0x48
/* 80A1DE98  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A1DE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A1DEA0  40 80 01 14 */	bge lbl_80A1DFB4
/* 80A1DEA4  38 00 00 01 */	li r0, 1
/* 80A1DEA8  98 1B 14 41 */	stb r0, 0x1441(r27)
/* 80A1DEAC  80 1B 14 68 */	lwz r0, 0x1468(r27)
/* 80A1DEB0  60 00 02 00 */	ori r0, r0, 0x200
/* 80A1DEB4  90 1B 14 68 */	stw r0, 0x1468(r27)
/* 80A1DEB8  80 7D 01 EC */	lwz r3, 0x1ec(r29)
/* 80A1DEBC  80 1D 01 F0 */	lwz r0, 0x1f0(r29)
/* 80A1DEC0  90 61 00 50 */	stw r3, 0x50(r1)
/* 80A1DEC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A1DEC8  80 1D 01 F4 */	lwz r0, 0x1f4(r29)
/* 80A1DECC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80A1DED0  7F 63 DB 78 */	mr r3, r27
/* 80A1DED4  38 81 00 50 */	addi r4, r1, 0x50
/* 80A1DED8  4B FF F8 A5 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1DEDC  38 60 00 01 */	li r3, 1
/* 80A1DEE0  48 00 02 84 */	b lbl_80A1E164
lbl_80A1DEE4:
/* 80A1DEE4  7F 63 DB 78 */	mr r3, r27
/* 80A1DEE8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A1DEEC  48 00 13 55 */	bl actor_front_check__15daNpcKasiHana_cFP10fopAc_ac_c
/* 80A1DEF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DEF4  41 82 00 4C */	beq lbl_80A1DF40
/* 80A1DEF8  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 80A1DEFC  38 7E 00 48 */	addi r3, r30, 0x48
/* 80A1DF00  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80A1DF04  EC 01 00 2A */	fadds f0, f1, f0
/* 80A1DF08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A1DF0C  4C 41 13 82 */	cror 2, 1, 2
/* 80A1DF10  40 82 00 A4 */	bne lbl_80A1DFB4
/* 80A1DF14  80 7D 01 F8 */	lwz r3, 0x1f8(r29)
/* 80A1DF18  80 1D 01 FC */	lwz r0, 0x1fc(r29)
/* 80A1DF1C  90 61 00 44 */	stw r3, 0x44(r1)
/* 80A1DF20  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A1DF24  80 1D 02 00 */	lwz r0, 0x200(r29)
/* 80A1DF28  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A1DF2C  7F 63 DB 78 */	mr r3, r27
/* 80A1DF30  38 81 00 44 */	addi r4, r1, 0x44
/* 80A1DF34  4B FF F8 49 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1DF38  38 60 00 01 */	li r3, 1
/* 80A1DF3C  48 00 02 28 */	b lbl_80A1E164
lbl_80A1DF40:
/* 80A1DF40  80 7D 02 04 */	lwz r3, 0x204(r29)
/* 80A1DF44  80 1D 02 08 */	lwz r0, 0x208(r29)
/* 80A1DF48  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A1DF4C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A1DF50  80 1D 02 0C */	lwz r0, 0x20c(r29)
/* 80A1DF54  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A1DF58  7F 63 DB 78 */	mr r3, r27
/* 80A1DF5C  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1DF60  4B FF F8 1D */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1DF64  38 60 00 01 */	li r3, 1
/* 80A1DF68  48 00 01 FC */	b lbl_80A1E164
lbl_80A1DF6C:
/* 80A1DF6C  7C 60 07 74 */	extsb r0, r3
/* 80A1DF70  2C 00 00 01 */	cmpwi r0, 1
/* 80A1DF74  40 82 00 40 */	bne lbl_80A1DFB4
/* 80A1DF78  38 7B 14 48 */	addi r3, r27, 0x1448
/* 80A1DF7C  4B FF DC 21 */	bl isMiniGamePlaying__15daNpcKasi_Mng_cFv
/* 80A1DF80  2C 03 00 00 */	cmpwi r3, 0
/* 80A1DF84  41 82 00 30 */	beq lbl_80A1DFB4
/* 80A1DF88  80 7D 02 10 */	lwz r3, 0x210(r29)
/* 80A1DF8C  80 1D 02 14 */	lwz r0, 0x214(r29)
/* 80A1DF90  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A1DF94  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A1DF98  80 1D 02 18 */	lwz r0, 0x218(r29)
/* 80A1DF9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1DFA0  7F 63 DB 78 */	mr r3, r27
/* 80A1DFA4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A1DFA8  4B FF F7 D5 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1DFAC  38 60 00 01 */	li r3, 1
/* 80A1DFB0  48 00 01 B4 */	b lbl_80A1E164
lbl_80A1DFB4:
/* 80A1DFB4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A1DFB8  D0 1B 14 6C */	stfs f0, 0x146c(r27)
/* 80A1DFBC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80A1DFC0  D0 1B 14 70 */	stfs f0, 0x1470(r27)
/* 80A1DFC4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A1DFC8  D0 1B 14 74 */	stfs f0, 0x1474(r27)
/* 80A1DFCC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A1DFD0  D0 1B 14 78 */	stfs f0, 0x1478(r27)
/* 80A1DFD4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80A1DFD8  D0 1B 14 7C */	stfs f0, 0x147c(r27)
/* 80A1DFDC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A1DFE0  D0 1B 14 80 */	stfs f0, 0x1480(r27)
/* 80A1DFE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1DFE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1DFEC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A1DFF0  28 00 00 00 */	cmplwi r0, 0
/* 80A1DFF4  41 82 00 B0 */	beq lbl_80A1E0A4
/* 80A1DFF8  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80A1DFFC  28 00 00 01 */	cmplwi r0, 1
/* 80A1E000  40 82 00 60 */	bne lbl_80A1E060
/* 80A1E004  38 00 00 00 */	li r0, 0
/* 80A1E008  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A1E00C  28 04 00 01 */	cmplwi r4, 1
/* 80A1E010  41 82 00 0C */	beq lbl_80A1E01C
/* 80A1E014  28 04 00 02 */	cmplwi r4, 2
/* 80A1E018  40 82 00 08 */	bne lbl_80A1E020
lbl_80A1E01C:
/* 80A1E01C  38 00 00 01 */	li r0, 1
lbl_80A1E020:
/* 80A1E020  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A1E024  41 82 00 14 */	beq lbl_80A1E038
/* 80A1E028  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A1E02C  4B 62 A7 C5 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A1E030  2C 03 00 00 */	cmpwi r3, 0
/* 80A1E034  41 82 01 2C */	beq lbl_80A1E160
lbl_80A1E038:
/* 80A1E038  80 7D 02 1C */	lwz r3, 0x21c(r29)
/* 80A1E03C  80 1D 02 20 */	lwz r0, 0x220(r29)
/* 80A1E040  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A1E044  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1E048  80 1D 02 24 */	lwz r0, 0x224(r29)
/* 80A1E04C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1E050  7F 63 DB 78 */	mr r3, r27
/* 80A1E054  38 81 00 20 */	addi r4, r1, 0x20
/* 80A1E058  4B FF F7 25 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1E05C  48 00 01 04 */	b lbl_80A1E160
lbl_80A1E060:
/* 80A1E060  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A1E064  80 9D 01 04 */	lwz r4, 0x104(r29)
/* 80A1E068  38 A0 00 00 */	li r5, 0
/* 80A1E06C  38 C0 00 00 */	li r6, 0
/* 80A1E070  4B 62 9A AD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A1E074  2C 03 FF FF */	cmpwi r3, -1
/* 80A1E078  41 82 00 E8 */	beq lbl_80A1E160
/* 80A1E07C  80 7D 02 28 */	lwz r3, 0x228(r29)
/* 80A1E080  80 1D 02 2C */	lwz r0, 0x22c(r29)
/* 80A1E084  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A1E088  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1E08C  80 1D 02 30 */	lwz r0, 0x230(r29)
/* 80A1E090  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A1E094  7F 63 DB 78 */	mr r3, r27
/* 80A1E098  38 81 00 14 */	addi r4, r1, 0x14
/* 80A1E09C  4B FF F6 E1 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1E0A0  48 00 00 C0 */	b lbl_80A1E160
lbl_80A1E0A4:
/* 80A1E0A4  4B 78 E4 D9 */	bl dKy_darkworld_check__Fv
/* 80A1E0A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A1E0AC  40 82 00 70 */	bne lbl_80A1E11C
/* 80A1E0B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1E0B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1E0B8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A1E0BC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A1E0C0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A1E0C4  41 82 00 58 */	beq lbl_80A1E11C
/* 80A1E0C8  C8 3E 02 50 */	lfd f1, 0x250(r30)
/* 80A1E0CC  C8 5E 02 58 */	lfd f2, 0x258(r30)
/* 80A1E0D0  4B 94 E6 B1 */	bl pow
/* 80A1E0D4  FF E0 08 18 */	frsp f31, f1
/* 80A1E0D8  7F 63 DB 78 */	mr r3, r27
/* 80A1E0DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1E0E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1E0E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A1E0E8  4B 5F C9 AD */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A1E0EC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A1E0F0  40 80 00 2C */	bge lbl_80A1E11C
/* 80A1E0F4  80 7D 02 34 */	lwz r3, 0x234(r29)
/* 80A1E0F8  80 1D 02 38 */	lwz r0, 0x238(r29)
/* 80A1E0FC  90 61 00 08 */	stw r3, 8(r1)
/* 80A1E100  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1E104  80 1D 02 3C */	lwz r0, 0x23c(r29)
/* 80A1E108  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1E10C  7F 63 DB 78 */	mr r3, r27
/* 80A1E110  38 81 00 08 */	addi r4, r1, 8
/* 80A1E114  4B FF F6 69 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1E118  48 00 00 48 */	b lbl_80A1E160
lbl_80A1E11C:
/* 80A1E11C  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80A1E120  28 00 00 00 */	cmplwi r0, 0
/* 80A1E124  41 82 00 0C */	beq lbl_80A1E130
/* 80A1E128  80 1D 00 E0 */	lwz r0, 0xe0(r29)
/* 80A1E12C  90 1B 01 00 */	stw r0, 0x100(r27)
lbl_80A1E130:
/* 80A1E130  7F 63 DB 78 */	mr r3, r27
/* 80A1E134  88 9B 14 44 */	lbz r4, 0x1444(r27)
/* 80A1E138  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80A1E13C  54 00 10 3A */	slwi r0, r0, 2
/* 80A1E140  38 BD 00 EC */	addi r5, r29, 0xec
/* 80A1E144  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A1E148  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A1E14C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A1E150  38 E0 00 04 */	li r7, 4
/* 80A1E154  39 00 00 FF */	li r8, 0xff
/* 80A1E158  39 20 00 02 */	li r9, 2
/* 80A1E15C  4B 73 57 21 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A1E160:
/* 80A1E160  38 60 00 01 */	li r3, 1
lbl_80A1E164:
/* 80A1E164  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80A1E168  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80A1E16C  39 61 00 80 */	addi r11, r1, 0x80
/* 80A1E170  4B 94 40 B1 */	bl _restgpr_27
/* 80A1E174  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A1E178  7C 08 03 A6 */	mtlr r0
/* 80A1E17C  38 21 00 90 */	addi r1, r1, 0x90
/* 80A1E180  4E 80 00 20 */	blr 
