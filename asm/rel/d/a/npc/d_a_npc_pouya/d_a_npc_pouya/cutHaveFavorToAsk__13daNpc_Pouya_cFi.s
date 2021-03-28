lbl_80AAFE08:
/* 80AAFE08  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AAFE0C  7C 08 02 A6 */	mflr r0
/* 80AAFE10  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AAFE14  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AAFE18  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AAFE1C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AAFE20  4B 8B 23 A8 */	b _savegpr_24
/* 80AAFE24  7C 79 1B 78 */	mr r25, r3
/* 80AAFE28  7C 9A 23 78 */	mr r26, r4
/* 80AAFE2C  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha
/* 80AAFE30  3B E3 20 00 */	addi r31, r3, m__19daNpc_Pouya_Param_c@l
/* 80AAFE34  3B C0 00 00 */	li r30, 0
/* 80AAFE38  3B A0 FF FF */	li r29, -1
/* 80AAFE3C  3B 80 00 00 */	li r28, 0
/* 80AAFE40  3B 60 00 00 */	li r27, 0
/* 80AAFE44  C3 FF 00 B8 */	lfs f31, 0xb8(r31)
/* 80AAFE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAFE4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAFE50  3B 03 4F F8 */	addi r24, r3, 0x4ff8
/* 80AAFE54  7F 03 C3 78 */	mr r3, r24
/* 80AAFE58  3C A0 80 AB */	lis r5, struct_80AB2120+0x0@ha
/* 80AAFE5C  38 A5 21 20 */	addi r5, r5, struct_80AB2120+0x0@l
/* 80AAFE60  38 A5 00 BB */	addi r5, r5, 0xbb
/* 80AAFE64  38 C0 00 03 */	li r6, 3
/* 80AAFE68  4B 59 82 84 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AAFE6C  28 03 00 00 */	cmplwi r3, 0
/* 80AAFE70  41 82 00 08 */	beq lbl_80AAFE78
/* 80AAFE74  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80AAFE78:
/* 80AAFE78  7F 03 C3 78 */	mr r3, r24
/* 80AAFE7C  7F 44 D3 78 */	mr r4, r26
/* 80AAFE80  3C A0 80 AB */	lis r5, struct_80AB2120+0x0@ha
/* 80AAFE84  38 A5 21 20 */	addi r5, r5, struct_80AB2120+0x0@l
/* 80AAFE88  38 A5 00 BF */	addi r5, r5, 0xbf
/* 80AAFE8C  38 C0 00 03 */	li r6, 3
/* 80AAFE90  4B 59 82 5C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AAFE94  28 03 00 00 */	cmplwi r3, 0
/* 80AAFE98  41 82 00 08 */	beq lbl_80AAFEA0
/* 80AAFE9C  83 83 00 00 */	lwz r28, 0(r3)
lbl_80AAFEA0:
/* 80AAFEA0  7F 03 C3 78 */	mr r3, r24
/* 80AAFEA4  7F 44 D3 78 */	mr r4, r26
/* 80AAFEA8  3C A0 80 AB */	lis r5, struct_80AB2120+0x0@ha
/* 80AAFEAC  38 A5 21 20 */	addi r5, r5, struct_80AB2120+0x0@l
/* 80AAFEB0  38 A5 00 C5 */	addi r5, r5, 0xc5
/* 80AAFEB4  38 C0 00 03 */	li r6, 3
/* 80AAFEB8  4B 59 82 34 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AAFEBC  28 03 00 00 */	cmplwi r3, 0
/* 80AAFEC0  41 82 00 08 */	beq lbl_80AAFEC8
/* 80AAFEC4  83 63 00 00 */	lwz r27, 0(r3)
lbl_80AAFEC8:
/* 80AAFEC8  7F 03 C3 78 */	mr r3, r24
/* 80AAFECC  7F 44 D3 78 */	mr r4, r26
/* 80AAFED0  3C A0 80 AB */	lis r5, struct_80AB2120+0x0@ha
/* 80AAFED4  38 A5 21 20 */	addi r5, r5, struct_80AB2120+0x0@l
/* 80AAFED8  38 A5 00 CB */	addi r5, r5, 0xcb
/* 80AAFEDC  38 C0 00 00 */	li r6, 0
/* 80AAFEE0  4B 59 82 0C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AAFEE4  28 03 00 00 */	cmplwi r3, 0
/* 80AAFEE8  41 82 00 08 */	beq lbl_80AAFEF0
/* 80AAFEEC  C3 E3 00 00 */	lfs f31, 0(r3)
lbl_80AAFEF0:
/* 80AAFEF0  7F 03 C3 78 */	mr r3, r24
/* 80AAFEF4  7F 44 D3 78 */	mr r4, r26
/* 80AAFEF8  4B 59 7E 54 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AAFEFC  2C 03 00 00 */	cmpwi r3, 0
/* 80AAFF00  41 82 03 2C */	beq lbl_80AB022C
/* 80AAFF04  28 1D 00 0C */	cmplwi r29, 0xc
/* 80AAFF08  41 81 03 24 */	bgt lbl_80AB022C
/* 80AAFF0C  3C 60 80 AB */	lis r3, lit_5333@ha
/* 80AAFF10  38 63 2A E8 */	addi r3, r3, lit_5333@l
/* 80AAFF14  57 A0 10 3A */	slwi r0, r29, 2
/* 80AAFF18  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AAFF1C  7C 09 03 A6 */	mtctr r0
/* 80AAFF20  4E 80 04 20 */	bctr 
lbl_80AAFF24:
/* 80AAFF24  7F 23 CB 78 */	mr r3, r25
/* 80AAFF28  80 99 0A 7C */	lwz r4, 0xa7c(r25)
/* 80AAFF2C  38 A0 00 00 */	li r5, 0
/* 80AAFF30  4B 69 BC C0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AAFF34  38 60 00 04 */	li r3, 4
/* 80AAFF38  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 80AAFF3C  7C 04 07 74 */	extsb r4, r0
/* 80AAFF40  38 A1 00 28 */	addi r5, r1, 0x28
/* 80AAFF44  38 C1 00 20 */	addi r6, r1, 0x20
/* 80AAFF48  4B 69 C5 B8 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80AAFF4C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAFF50  41 82 02 DC */	beq lbl_80AB022C
/* 80AAFF54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAFF58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAFF5C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AAFF60  38 81 00 28 */	addi r4, r1, 0x28
/* 80AAFF64  A8 A1 00 22 */	lha r5, 0x22(r1)
/* 80AAFF68  38 C0 00 00 */	li r6, 0
/* 80AAFF6C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AAFF70  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80AAFF74  7D 89 03 A6 */	mtctr r12
/* 80AAFF78  4E 80 04 21 */	bctrl 
/* 80AAFF7C  48 00 02 B0 */	b lbl_80AB022C
lbl_80AAFF80:
/* 80AAFF80  93 99 0D C4 */	stw r28, 0xdc4(r25)
/* 80AAFF84  48 00 02 A8 */	b lbl_80AB022C
lbl_80AAFF88:
/* 80AAFF88  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80AAFF8C  2C 00 00 06 */	cmpwi r0, 6
/* 80AAFF90  41 82 00 24 */	beq lbl_80AAFFB4
/* 80AAFF94  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 80AAFF98  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80AAFF9C  4B 69 58 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAFFA0  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 80AAFFA4  38 00 00 06 */	li r0, 6
/* 80AAFFA8  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80AAFFAC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80AAFFB0  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80AAFFB4:
/* 80AAFFB4  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80AAFFB8  2C 00 00 04 */	cmpwi r0, 4
/* 80AAFFBC  41 82 00 24 */	beq lbl_80AAFFE0
/* 80AAFFC0  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 80AAFFC4  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AAFFC8  4B 69 58 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAFFCC  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 80AAFFD0  38 00 00 04 */	li r0, 4
/* 80AAFFD4  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80AAFFD8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80AAFFDC  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80AAFFE0:
/* 80AAFFE0  38 00 00 00 */	li r0, 0
/* 80AAFFE4  98 19 0F CF */	stb r0, 0xfcf(r25)
/* 80AAFFE8  38 60 00 04 */	li r3, 4
/* 80AAFFEC  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 80AAFFF0  7C 04 07 74 */	extsb r4, r0
/* 80AAFFF4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80AAFFF8  38 C1 00 20 */	addi r6, r1, 0x20
/* 80AAFFFC  4B 69 C5 04 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80AB0000  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0004  41 82 00 2C */	beq lbl_80AB0030
/* 80AB0008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB000C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB0010  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AB0014  38 81 00 28 */	addi r4, r1, 0x28
/* 80AB0018  A8 A1 00 22 */	lha r5, 0x22(r1)
/* 80AB001C  38 C0 00 00 */	li r6, 0
/* 80AB0020  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AB0024  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80AB0028  7D 89 03 A6 */	mtctr r12
/* 80AB002C  4E 80 04 21 */	bctrl 
lbl_80AB0030:
/* 80AB0030  93 99 0D C4 */	stw r28, 0xdc4(r25)
/* 80AB0034  48 00 01 F8 */	b lbl_80AB022C
lbl_80AB0038:
/* 80AB0038  7F 23 CB 78 */	mr r3, r25
/* 80AB003C  80 99 0A 7C */	lwz r4, 0xa7c(r25)
/* 80AB0040  38 A0 00 00 */	li r5, 0
/* 80AB0044  4B 69 BB AC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80AB0048  48 00 01 E4 */	b lbl_80AB022C
lbl_80AB004C:
/* 80AB004C  38 00 00 01 */	li r0, 1
/* 80AB0050  98 19 0E 25 */	stb r0, 0xe25(r25)
/* 80AB0054  48 00 01 D8 */	b lbl_80AB022C
lbl_80AB0058:
/* 80AB0058  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80AB005C  2C 00 00 07 */	cmpwi r0, 7
/* 80AB0060  41 82 00 24 */	beq lbl_80AB0084
/* 80AB0064  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 80AB0068  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80AB006C  4B 69 58 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB0070  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 80AB0074  38 00 00 07 */	li r0, 7
/* 80AB0078  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80AB007C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80AB0080  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80AB0084:
/* 80AB0084  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 80AB0088  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AB008C  41 82 00 24 */	beq lbl_80AB00B0
/* 80AB0090  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 80AB0094  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AB0098  4B 69 58 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB009C  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 80AB00A0  38 00 00 0A */	li r0, 0xa
/* 80AB00A4  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80AB00A8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80AB00AC  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_80AB00B0:
/* 80AB00B0  38 00 00 00 */	li r0, 0
/* 80AB00B4  98 19 0E 25 */	stb r0, 0xe25(r25)
/* 80AB00B8  38 60 00 04 */	li r3, 4
/* 80AB00BC  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 80AB00C0  7C 04 07 74 */	extsb r4, r0
/* 80AB00C4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80AB00C8  38 C1 00 20 */	addi r6, r1, 0x20
/* 80AB00CC  4B 69 C4 34 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80AB00D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AB00D4  41 82 00 2C */	beq lbl_80AB0100
/* 80AB00D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB00DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB00E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AB00E4  38 81 00 28 */	addi r4, r1, 0x28
/* 80AB00E8  A8 A1 00 22 */	lha r5, 0x22(r1)
/* 80AB00EC  38 C0 00 00 */	li r6, 0
/* 80AB00F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80AB00F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80AB00F8  7D 89 03 A6 */	mtctr r12
/* 80AB00FC  4E 80 04 21 */	bctrl 
lbl_80AB0100:
/* 80AB0100  93 99 0D C4 */	stw r28, 0xdc4(r25)
/* 80AB0104  48 00 01 28 */	b lbl_80AB022C
lbl_80AB0108:
/* 80AB0108  93 99 0D C4 */	stw r28, 0xdc4(r25)
/* 80AB010C  80 19 0D C4 */	lwz r0, 0xdc4(r25)
/* 80AB0110  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0114  40 82 01 18 */	bne lbl_80AB022C
/* 80AB0118  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006007B@ha */
/* 80AB011C  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0006007B@l */
/* 80AB0120  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB0124  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AB0128  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AB012C  80 63 00 00 */	lwz r3, 0(r3)
/* 80AB0130  38 81 00 10 */	addi r4, r1, 0x10
/* 80AB0134  38 A0 00 00 */	li r5, 0
/* 80AB0138  38 C0 00 00 */	li r6, 0
/* 80AB013C  38 E0 00 00 */	li r7, 0
/* 80AB0140  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AB0144  FC 40 08 90 */	fmr f2, f1
/* 80AB0148  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 80AB014C  FC 80 18 90 */	fmr f4, f3
/* 80AB0150  39 00 00 00 */	li r8, 0
/* 80AB0154  4B 7F B8 30 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80AB0158  FC 20 F8 90 */	fmr f1, f31
/* 80AB015C  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha
/* 80AB0160  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l
/* 80AB0164  4B 55 7E C4 */	b fadeOut_f__13mDoGph_gInf_cFfR8_GXColor
/* 80AB0168  48 00 00 C4 */	b lbl_80AB022C
lbl_80AB016C:
/* 80AB016C  FC 20 F8 50 */	fneg f1, f31
/* 80AB0170  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha
/* 80AB0174  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l
/* 80AB0178  4B 55 7E B0 */	b fadeOut_f__13mDoGph_gInf_cFfR8_GXColor
/* 80AB017C  48 00 00 B0 */	b lbl_80AB022C
lbl_80AB0180:
/* 80AB0180  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 80AB0184  2C 00 00 06 */	cmpwi r0, 6
/* 80AB0188  41 82 00 24 */	beq lbl_80AB01AC
/* 80AB018C  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 80AB0190  38 79 0B 50 */	addi r3, r25, 0xb50
/* 80AB0194  4B 69 57 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB0198  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 80AB019C  38 00 00 06 */	li r0, 6
/* 80AB01A0  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 80AB01A4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AB01A8  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_80AB01AC:
/* 80AB01AC  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 80AB01B0  38 79 0B 74 */	addi r3, r25, 0xb74
/* 80AB01B4  4B 69 56 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB01B8  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 80AB01BC  38 00 00 04 */	li r0, 4
/* 80AB01C0  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 80AB01C4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AB01C8  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 80AB01CC  93 99 0D C4 */	stw r28, 0xdc4(r25)
/* 80AB01D0  80 19 0D C4 */	lwz r0, 0xdc4(r25)
/* 80AB01D4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB01D8  40 82 00 54 */	bne lbl_80AB022C
/* 80AB01DC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006007B@ha */
/* 80AB01E0  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0006007B@l */
/* 80AB01E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB01E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AB01EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AB01F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80AB01F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80AB01F8  38 A0 00 00 */	li r5, 0
/* 80AB01FC  38 C0 00 00 */	li r6, 0
/* 80AB0200  38 E0 00 00 */	li r7, 0
/* 80AB0204  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AB0208  FC 40 08 90 */	fmr f2, f1
/* 80AB020C  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 80AB0210  FC 80 18 90 */	fmr f4, f3
/* 80AB0214  39 00 00 00 */	li r8, 0
/* 80AB0218  4B 7F B7 6C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80AB021C  FC 20 F8 90 */	fmr f1, f31
/* 80AB0220  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha
/* 80AB0224  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l
/* 80AB0228  4B 55 7E 00 */	b fadeOut_f__13mDoGph_gInf_cFfR8_GXColor
lbl_80AB022C:
/* 80AB022C  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 80AB0230  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80AB0234  90 61 00 18 */	stw r3, 0x18(r1)
/* 80AB0238  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AB023C  28 1D 00 0C */	cmplwi r29, 0xc
/* 80AB0240  41 81 02 44 */	bgt lbl_80AB0484
/* 80AB0244  3C 60 80 AB */	lis r3, lit_5334@ha
/* 80AB0248  38 63 2A B4 */	addi r3, r3, lit_5334@l
/* 80AB024C  57 A0 10 3A */	slwi r0, r29, 2
/* 80AB0250  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AB0254  7C 09 03 A6 */	mtctr r0
/* 80AB0258  4E 80 04 20 */	bctr 
lbl_80AB025C:
/* 80AB025C  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80AB0260  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0264  41 82 00 24 */	beq lbl_80AB0288
/* 80AB0268  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80AB026C  4B 69 54 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB0270  38 00 00 00 */	li r0, 0
/* 80AB0274  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80AB0278  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AB027C  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80AB0280  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AB0284  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80AB0288:
/* 80AB0288  38 00 00 00 */	li r0, 0
/* 80AB028C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AB0290  93 61 00 18 */	stw r27, 0x18(r1)
/* 80AB0294  7F 23 CB 78 */	mr r3, r25
/* 80AB0298  38 81 00 18 */	addi r4, r1, 0x18
/* 80AB029C  38 A0 00 00 */	li r5, 0
/* 80AB02A0  38 C0 00 00 */	li r6, 0
/* 80AB02A4  38 E0 00 00 */	li r7, 0
/* 80AB02A8  4B 69 B9 D0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80AB02AC  2C 03 00 00 */	cmpwi r3, 0
/* 80AB02B0  41 82 01 D4 */	beq lbl_80AB0484
/* 80AB02B4  2C 1B 00 00 */	cmpwi r27, 0
/* 80AB02B8  40 82 00 9C */	bne lbl_80AB0354
/* 80AB02BC  38 79 09 74 */	addi r3, r25, 0x974
/* 80AB02C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB02C4  4B 79 A2 64 */	b getEventId__10dMsgFlow_cFPi
/* 80AB02C8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80AB02CC  38 00 00 00 */	li r0, 0
/* 80AB02D0  98 19 0F CE */	stb r0, 0xfce(r25)
/* 80AB02D4  2C 03 00 01 */	cmpwi r3, 1
/* 80AB02D8  41 82 00 08 */	beq lbl_80AB02E0
/* 80AB02DC  48 00 00 64 */	b lbl_80AB0340
lbl_80AB02E0:
/* 80AB02E0  80 79 0D 90 */	lwz r3, 0xd90(r25)
/* 80AB02E4  3C 03 00 01 */	addis r0, r3, 1
/* 80AB02E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AB02EC  40 82 00 28 */	bne lbl_80AB0314
/* 80AB02F0  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80AB02F4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AB02F8  38 A0 00 00 */	li r5, 0
/* 80AB02FC  38 C0 FF FF */	li r6, -1
/* 80AB0300  38 E0 FF FF */	li r7, -1
/* 80AB0304  39 00 00 00 */	li r8, 0
/* 80AB0308  39 20 00 00 */	li r9, 0
/* 80AB030C  4B 56 B8 DC */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80AB0310  90 79 0D 90 */	stw r3, 0xd90(r25)
lbl_80AB0314:
/* 80AB0314  80 79 0D 90 */	lwz r3, 0xd90(r25)
/* 80AB0318  4B 57 10 84 */	b fpcEx_IsExist__FUi
/* 80AB031C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0320  41 82 01 64 */	beq lbl_80AB0484
/* 80AB0324  38 00 00 01 */	li r0, 1
/* 80AB0328  98 19 0F CE */	stb r0, 0xfce(r25)
/* 80AB032C  B0 19 0E 22 */	sth r0, 0xe22(r25)
/* 80AB0330  B0 19 0E 30 */	sth r0, 0xe30(r25)
/* 80AB0334  7F 23 CB 78 */	mr r3, r25
/* 80AB0338  4B 69 9E EC */	b evtChange__8daNpcT_cFv
/* 80AB033C  48 00 01 48 */	b lbl_80AB0484
lbl_80AB0340:
/* 80AB0340  88 19 09 9A */	lbz r0, 0x99a(r25)
/* 80AB0344  28 00 00 01 */	cmplwi r0, 1
/* 80AB0348  40 82 01 3C */	bne lbl_80AB0484
/* 80AB034C  3B C0 00 01 */	li r30, 1
/* 80AB0350  48 00 01 34 */	b lbl_80AB0484
lbl_80AB0354:
/* 80AB0354  3B C0 00 01 */	li r30, 1
/* 80AB0358  48 00 01 2C */	b lbl_80AB0484
lbl_80AB035C:
/* 80AB035C  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 80AB0360  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0364  41 82 00 24 */	beq lbl_80AB0388
/* 80AB0368  38 79 0B A8 */	addi r3, r25, 0xba8
/* 80AB036C  4B 69 53 90 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AB0370  38 00 00 00 */	li r0, 0
/* 80AB0374  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 80AB0378  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AB037C  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 80AB0380  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AB0384  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_80AB0388:
/* 80AB0388  38 00 00 00 */	li r0, 0
/* 80AB038C  98 19 0C FF */	stb r0, 0xcff(r25)
/* 80AB0390  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 80AB0394  48 00 1A 49 */	bl func_80AB1DDC
/* 80AB0398  2C 03 00 00 */	cmpwi r3, 0
/* 80AB039C  40 82 00 E8 */	bne lbl_80AB0484
/* 80AB03A0  3B C0 00 01 */	li r30, 1
/* 80AB03A4  48 00 00 E0 */	b lbl_80AB0484
lbl_80AB03A8:
/* 80AB03A8  3B C0 00 01 */	li r30, 1
/* 80AB03AC  48 00 00 D8 */	b lbl_80AB0484
lbl_80AB03B0:
/* 80AB03B0  80 19 0D C4 */	lwz r0, 0xdc4(r25)
/* 80AB03B4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB03B8  41 82 00 68 */	beq lbl_80AB0420
/* 80AB03BC  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 80AB03C0  48 00 1A 1D */	bl func_80AB1DDC
/* 80AB03C4  2C 03 00 00 */	cmpwi r3, 0
/* 80AB03C8  40 82 00 74 */	bne lbl_80AB043C
/* 80AB03CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006007B@ha */
/* 80AB03D0  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0006007B@l */
/* 80AB03D4  90 01 00 08 */	stw r0, 8(r1)
/* 80AB03D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80AB03DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80AB03E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80AB03E4  38 81 00 08 */	addi r4, r1, 8
/* 80AB03E8  38 A0 00 00 */	li r5, 0
/* 80AB03EC  38 C0 00 00 */	li r6, 0
/* 80AB03F0  38 E0 00 00 */	li r7, 0
/* 80AB03F4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AB03F8  FC 40 08 90 */	fmr f2, f1
/* 80AB03FC  C0 7F 00 D0 */	lfs f3, 0xd0(r31)
/* 80AB0400  FC 80 18 90 */	fmr f4, f3
/* 80AB0404  39 00 00 00 */	li r8, 0
/* 80AB0408  4B 7F B5 7C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80AB040C  FC 20 F8 90 */	fmr f1, f31
/* 80AB0410  3C 60 80 45 */	lis r3, g_saftyWhiteColor@ha
/* 80AB0414  38 63 06 0C */	addi r3, r3, g_saftyWhiteColor@l
/* 80AB0418  4B 55 7C 10 */	b fadeOut_f__13mDoGph_gInf_cFfR8_GXColor
/* 80AB041C  48 00 00 20 */	b lbl_80AB043C
lbl_80AB0420:
/* 80AB0420  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AB0424  3C 60 80 45 */	lis r3, mFadeRate__13mDoGph_gInf_c@ha
/* 80AB0428  C0 03 0B DC */	lfs f0, mFadeRate__13mDoGph_gInf_c@l(r3)
/* 80AB042C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB0430  4C 40 13 82 */	cror 2, 0, 2
/* 80AB0434  40 82 00 08 */	bne lbl_80AB043C
/* 80AB0438  3B C0 00 01 */	li r30, 1
lbl_80AB043C:
/* 80AB043C  2C 1D 00 0C */	cmpwi r29, 0xc
/* 80AB0440  40 82 00 44 */	bne lbl_80AB0484
/* 80AB0444  80 79 05 78 */	lwz r3, 0x578(r25)
/* 80AB0448  38 63 00 0C */	addi r3, r3, 0xc
/* 80AB044C  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80AB0450  4B 87 7F DC */	b checkPass__12J3DFrameCtrlFf
/* 80AB0454  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0458  41 82 00 2C */	beq lbl_80AB0484
/* 80AB045C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AB0460  80 79 05 78 */	lwz r3, 0x578(r25)
/* 80AB0464  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80AB0468  D0 19 06 1C */	stfs f0, 0x61c(r25)
/* 80AB046C  48 00 00 18 */	b lbl_80AB0484
lbl_80AB0470:
/* 80AB0470  3C 60 80 45 */	lis r3, struct_80450BE4+0x2@ha
/* 80AB0474  88 03 0B E6 */	lbz r0, struct_80450BE4+0x2@l(r3)
/* 80AB0478  28 00 00 00 */	cmplwi r0, 0
/* 80AB047C  40 82 00 08 */	bne lbl_80AB0484
/* 80AB0480  3B C0 00 01 */	li r30, 1
lbl_80AB0484:
/* 80AB0484  7F C3 F3 78 */	mr r3, r30
/* 80AB0488  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AB048C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AB0490  39 61 00 60 */	addi r11, r1, 0x60
/* 80AB0494  4B 8B 1D 80 */	b _restgpr_24
/* 80AB0498  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AB049C  7C 08 03 A6 */	mtlr r0
/* 80AB04A0  38 21 00 70 */	addi r1, r1, 0x70
/* 80AB04A4  4E 80 00 20 */	blr 
