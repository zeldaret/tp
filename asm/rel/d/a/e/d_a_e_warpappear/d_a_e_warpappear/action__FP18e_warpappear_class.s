lbl_807CFFD4:
/* 807CFFD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807CFFD8  7C 08 02 A6 */	mflr r0
/* 807CFFDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 807CFFE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807CFFE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807CFFE8  39 61 00 40 */	addi r11, r1, 0x40
/* 807CFFEC  4B B9 21 EC */	b _savegpr_28
/* 807CFFF0  7C 7D 1B 78 */	mr r29, r3
/* 807CFFF4  3C 60 80 7D */	lis r3, lit_3864@ha
/* 807CFFF8  3B C3 20 88 */	addi r30, r3, lit_3864@l
/* 807CFFFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D0000  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807D0004  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807D0008  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 807D000C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807D0010  EC 41 00 28 */	fsubs f2, f1, f0
/* 807D0014  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807D0018  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807D001C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807D0020  EC 22 00 B2 */	fmuls f1, f2, f2
/* 807D0024  EC 00 00 32 */	fmuls f0, f0, f0
/* 807D0028  EF E1 00 2A */	fadds f31, f1, f0
/* 807D002C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 807D0030  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807D0034  40 81 00 0C */	ble lbl_807D0040
/* 807D0038  FC 00 F8 34 */	frsqrte f0, f31
/* 807D003C  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_807D0040:
/* 807D0040  3B 80 00 00 */	li r28, 0
/* 807D0044  A8 1D 05 96 */	lha r0, 0x596(r29)
/* 807D0048  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D004C  41 82 01 78 */	beq lbl_807D01C4
/* 807D0050  40 80 00 1C */	bge lbl_807D006C
/* 807D0054  2C 00 00 01 */	cmpwi r0, 1
/* 807D0058  41 82 01 88 */	beq lbl_807D01E0
/* 807D005C  40 80 01 84 */	bge lbl_807D01E0
/* 807D0060  2C 00 00 00 */	cmpwi r0, 0
/* 807D0064  40 80 00 14 */	bge lbl_807D0078
/* 807D0068  48 00 01 78 */	b lbl_807D01E0
lbl_807D006C:
/* 807D006C  2C 00 00 14 */	cmpwi r0, 0x14
/* 807D0070  41 82 01 68 */	beq lbl_807D01D8
/* 807D0074  48 00 01 6C */	b lbl_807D01E0
lbl_807D0078:
/* 807D0078  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 807D007C  28 00 00 35 */	cmplwi r0, 0x35
/* 807D0080  40 82 00 84 */	bne lbl_807D0104
/* 807D0084  80 1D 06 4C */	lwz r0, 0x64c(r29)
/* 807D0088  2C 00 00 00 */	cmpwi r0, 0
/* 807D008C  40 82 00 20 */	bne lbl_807D00AC
/* 807D0090  38 00 00 00 */	li r0, 0
/* 807D0094  3C 60 80 7D */	lis r3, entry_no@ha
/* 807D0098  90 03 23 84 */	stw r0, entry_no@l(r3)
/* 807D009C  3C 60 80 7D */	lis r3, s_s1entry_sub__FPvPv@ha
/* 807D00A0  38 63 FB C4 */	addi r3, r3, s_s1entry_sub__FPvPv@l
/* 807D00A4  7F A4 EB 78 */	mr r4, r29
/* 807D00A8  4B 85 12 90 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_807D00AC:
/* 807D00AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D00B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D00B4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 807D00B8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 807D00BC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 807D00C0  A0 84 00 80 */	lhz r4, 0x80(r4)
/* 807D00C4  4B 86 48 F8 */	b isEventBit__11dSv_event_cCFUs
/* 807D00C8  2C 03 00 00 */	cmpwi r3, 0
/* 807D00CC  41 82 01 14 */	beq lbl_807D01E0
/* 807D00D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D00D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D00D8  38 80 00 12 */	li r4, 0x12
/* 807D00DC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807D00E0  7C 05 07 74 */	extsb r5, r0
/* 807D00E4  4B 86 52 7C */	b isSwitch__10dSv_info_cCFii
/* 807D00E8  2C 03 00 00 */	cmpwi r3, 0
/* 807D00EC  41 82 00 F4 */	beq lbl_807D01E0
/* 807D00F0  38 00 00 01 */	li r0, 1
/* 807D00F4  B0 1D 05 96 */	sth r0, 0x596(r29)
/* 807D00F8  38 00 00 14 */	li r0, 0x14
/* 807D00FC  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 807D0100  48 00 00 E0 */	b lbl_807D01E0
lbl_807D0104:
/* 807D0104  28 00 00 FF */	cmplwi r0, 0xff
/* 807D0108  40 82 00 30 */	bne lbl_807D0138
/* 807D010C  3C 60 80 7D */	lis r3, s_s1_sub__FPvPv@ha
/* 807D0110  38 63 F8 BC */	addi r3, r3, s_s1_sub__FPvPv@l
/* 807D0114  7F A4 EB 78 */	mr r4, r29
/* 807D0118  4B 85 12 20 */	b fpcEx_Search__FPFPvPv_PvPv
/* 807D011C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807D0120  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807D0124  40 80 00 BC */	bge lbl_807D01E0
/* 807D0128  38 00 00 01 */	li r0, 1
/* 807D012C  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 807D0130  B0 1D 05 96 */	sth r0, 0x596(r29)
/* 807D0134  48 00 00 AC */	b lbl_807D01E0
lbl_807D0138:
/* 807D0138  38 00 00 00 */	li r0, 0
/* 807D013C  3C 60 80 7D */	lis r3, entry_no@ha
/* 807D0140  90 03 23 84 */	stw r0, entry_no@l(r3)
/* 807D0144  3C 60 80 7D */	lis r3, s_s1entry_sub__FPvPv@ha
/* 807D0148  38 63 FB C4 */	addi r3, r3, s_s1entry_sub__FPvPv@l
/* 807D014C  7F A4 EB 78 */	mr r4, r29
/* 807D0150  4B 85 11 E8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 807D0154  80 1D 06 4C */	lwz r0, 0x64c(r29)
/* 807D0158  2C 00 00 00 */	cmpwi r0, 0
/* 807D015C  41 82 00 84 */	beq lbl_807D01E0
/* 807D0160  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807D0164  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 807D0168  2C 04 00 FF */	cmpwi r4, 0xff
/* 807D016C  41 82 00 20 */	beq lbl_807D018C
/* 807D0170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D0174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D0178  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807D017C  7C 05 07 74 */	extsb r5, r0
/* 807D0180  4B 86 51 E0 */	b isSwitch__10dSv_info_cCFii
/* 807D0184  2C 03 00 00 */	cmpwi r3, 0
/* 807D0188  41 82 01 84 */	beq lbl_807D030C
lbl_807D018C:
/* 807D018C  A8 1D 05 9A */	lha r0, 0x59a(r29)
/* 807D0190  2C 00 00 00 */	cmpwi r0, 0
/* 807D0194  40 82 00 4C */	bne lbl_807D01E0
/* 807D0198  7F A3 EB 78 */	mr r3, r29
/* 807D019C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807D01A0  4B 84 A7 C4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D01A4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807D01A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D01AC  40 80 00 34 */	bge lbl_807D01E0
/* 807D01B0  38 00 00 0A */	li r0, 0xa
/* 807D01B4  B0 1D 05 9E */	sth r0, 0x59e(r29)
/* 807D01B8  38 00 00 01 */	li r0, 1
/* 807D01BC  B0 1D 05 96 */	sth r0, 0x596(r29)
/* 807D01C0  48 00 00 20 */	b lbl_807D01E0
lbl_807D01C4:
/* 807D01C4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807D01C8  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 807D01CC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807D01D0  3B 80 00 01 */	li r28, 1
/* 807D01D4  48 00 00 0C */	b lbl_807D01E0
lbl_807D01D8:
/* 807D01D8  38 00 00 01 */	li r0, 1
/* 807D01DC  90 1D 05 84 */	stw r0, 0x584(r29)
lbl_807D01E0:
/* 807D01E0  7F 80 07 75 */	extsb. r0, r28
/* 807D01E4  41 82 01 28 */	beq lbl_807D030C
/* 807D01E8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 807D01EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807D01F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807D01F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807D01F8  A8 7D 05 98 */	lha r3, 0x598(r29)
/* 807D01FC  2C 03 00 00 */	cmpwi r3, 0
/* 807D0200  40 82 00 5C */	bne lbl_807D025C
/* 807D0204  38 03 00 01 */	addi r0, r3, 1
/* 807D0208  B0 1D 05 98 */	sth r0, 0x598(r29)
/* 807D020C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D0210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D0214  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807D0218  38 80 00 00 */	li r4, 0
/* 807D021C  90 81 00 08 */	stw r4, 8(r1)
/* 807D0220  38 00 FF FF */	li r0, -1
/* 807D0224  90 01 00 0C */	stw r0, 0xc(r1)
/* 807D0228  90 81 00 10 */	stw r4, 0x10(r1)
/* 807D022C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807D0230  90 81 00 18 */	stw r4, 0x18(r1)
/* 807D0234  38 80 00 00 */	li r4, 0
/* 807D0238  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A4@ha */
/* 807D023C  38 A5 84 A4 */	addi r5, r5, 0x84A4 /* 0x000084A4@l */
/* 807D0240  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 807D0244  38 E0 00 00 */	li r7, 0
/* 807D0248  39 00 00 00 */	li r8, 0
/* 807D024C  39 21 00 20 */	addi r9, r1, 0x20
/* 807D0250  39 40 00 FF */	li r10, 0xff
/* 807D0254  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D0258  4B 87 C8 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_807D025C:
/* 807D025C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D0260  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 807D0264  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807D0268  38 00 00 FF */	li r0, 0xff
/* 807D026C  90 01 00 08 */	stw r0, 8(r1)
/* 807D0270  38 80 00 00 */	li r4, 0
/* 807D0274  90 81 00 0C */	stw r4, 0xc(r1)
/* 807D0278  38 00 FF FF */	li r0, -1
/* 807D027C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D0280  90 81 00 14 */	stw r4, 0x14(r1)
/* 807D0284  90 81 00 18 */	stw r4, 0x18(r1)
/* 807D0288  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807D028C  80 9D 05 8C */	lwz r4, 0x58c(r29)
/* 807D0290  38 A0 00 00 */	li r5, 0
/* 807D0294  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084A6@ha */
/* 807D0298  38 C6 84 A6 */	addi r6, r6, 0x84A6 /* 0x000084A6@l */
/* 807D029C  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 807D02A0  39 00 00 00 */	li r8, 0
/* 807D02A4  39 20 00 00 */	li r9, 0
/* 807D02A8  39 41 00 20 */	addi r10, r1, 0x20
/* 807D02AC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D02B0  4B 87 D2 1C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807D02B4  90 7D 05 8C */	stw r3, 0x58c(r29)
/* 807D02B8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 807D02BC  38 00 00 FF */	li r0, 0xff
/* 807D02C0  90 01 00 08 */	stw r0, 8(r1)
/* 807D02C4  38 80 00 00 */	li r4, 0
/* 807D02C8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807D02CC  38 00 FF FF */	li r0, -1
/* 807D02D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807D02D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 807D02D8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807D02DC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807D02E0  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 807D02E4  38 A0 00 00 */	li r5, 0
/* 807D02E8  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084A7@ha */
/* 807D02EC  38 C6 84 A7 */	addi r6, r6, 0x84A7 /* 0x000084A7@l */
/* 807D02F0  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 807D02F4  39 00 00 00 */	li r8, 0
/* 807D02F8  39 20 00 00 */	li r9, 0
/* 807D02FC  39 41 00 20 */	addi r10, r1, 0x20
/* 807D0300  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807D0304  4B 87 D1 C8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807D0308  90 7D 05 90 */	stw r3, 0x590(r29)
lbl_807D030C:
/* 807D030C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807D0310  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807D0314  39 61 00 40 */	addi r11, r1, 0x40
/* 807D0318  4B B9 1F 0C */	b _restgpr_28
/* 807D031C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807D0320  7C 08 03 A6 */	mtlr r0
/* 807D0324  38 21 00 50 */	addi r1, r1, 0x50
/* 807D0328  4E 80 00 20 */	blr 
