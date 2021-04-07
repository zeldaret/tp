lbl_80A27F08:
/* 80A27F08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A27F0C  7C 08 02 A6 */	mflr r0
/* 80A27F10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A27F14  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A27F18  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A27F1C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A27F20  4B 93 A2 B9 */	bl _savegpr_28
/* 80A27F24  7C 7D 1B 78 */	mr r29, r3
/* 80A27F28  3C 80 80 A3 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A2A2B4@ha */
/* 80A27F2C  3B C4 A2 B4 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A2A2B4@l */
/* 80A27F30  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A27F34  3B E4 A0 4C */	addi r31, r4, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A27F38  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A27F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80A27F40  41 82 00 18 */	beq lbl_80A27F58
/* 80A27F44  40 80 00 08 */	bge lbl_80A27F4C
/* 80A27F48  48 00 03 48 */	b lbl_80A28290
lbl_80A27F4C:
/* 80A27F4C  2C 00 00 02 */	cmpwi r0, 2
/* 80A27F50  40 80 03 40 */	bge lbl_80A28290
/* 80A27F54  48 00 00 70 */	b lbl_80A27FC4
lbl_80A27F58:
/* 80A27F58  88 1D 14 64 */	lbz r0, 0x1464(r29)
/* 80A27F5C  7C 00 07 75 */	extsb. r0, r0
/* 80A27F60  40 82 00 30 */	bne lbl_80A27F90
/* 80A27F64  88 1D 14 65 */	lbz r0, 0x1465(r29)
/* 80A27F68  7C 00 07 75 */	extsb. r0, r0
/* 80A27F6C  40 82 00 24 */	bne lbl_80A27F90
/* 80A27F70  38 80 00 0B */	li r4, 0xb
/* 80A27F74  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A27F78  38 A0 00 00 */	li r5, 0
/* 80A27F7C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A27F80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A27F84  7D 89 03 A6 */	mtctr r12
/* 80A27F88  4E 80 04 21 */	bctrl 
/* 80A27F8C  48 00 00 24 */	b lbl_80A27FB0
lbl_80A27F90:
/* 80A27F90  7F A3 EB 78 */	mr r3, r29
/* 80A27F94  38 80 00 04 */	li r4, 4
/* 80A27F98  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A27F9C  38 A0 00 00 */	li r5, 0
/* 80A27FA0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A27FA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A27FA8  7D 89 03 A6 */	mtctr r12
/* 80A27FAC  4E 80 04 21 */	bctrl 
lbl_80A27FB0:
/* 80A27FB0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A27FB4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A27FB8  38 00 00 01 */	li r0, 1
/* 80A27FBC  B0 1D 14 04 */	sth r0, 0x1404(r29)
/* 80A27FC0  48 00 02 D0 */	b lbl_80A28290
lbl_80A27FC4:
/* 80A27FC4  4B FF FE 61 */	bl chkFindPlayer__15daNpcKasiMich_cFv
/* 80A27FC8  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A27FCC  4B 72 87 21 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A27FD0  28 03 00 00 */	cmplwi r3, 0
/* 80A27FD4  41 82 00 14 */	beq lbl_80A27FE8
/* 80A27FD8  7F A3 EB 78 */	mr r3, r29
/* 80A27FDC  38 80 00 02 */	li r4, 2
/* 80A27FE0  4B FF FB 4D */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A27FE4  48 00 00 CC */	b lbl_80A280B0
lbl_80A27FE8:
/* 80A27FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A27FEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A27FF0  38 80 00 0C */	li r4, 0xc
/* 80A27FF4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80A27FF8  7C 05 07 74 */	extsb r5, r0
/* 80A27FFC  4B 60 D3 65 */	bl isSwitch__10dSv_info_cCFii
/* 80A28000  2C 03 00 00 */	cmpwi r3, 0
/* 80A28004  40 82 00 AC */	bne lbl_80A280B0
/* 80A28008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2800C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A28010  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A28014  28 00 00 00 */	cmplwi r0, 0
/* 80A28018  40 82 00 98 */	bne lbl_80A280B0
/* 80A2801C  7F A3 EB 78 */	mr r3, r29
/* 80A28020  38 80 00 00 */	li r4, 0
/* 80A28024  4B FF FB 09 */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A28028  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80A2802C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A28030  7C 04 00 00 */	cmpw r4, r0
/* 80A28034  41 82 00 7C */	beq lbl_80A280B0
/* 80A28038  7F A3 EB 78 */	mr r3, r29
/* 80A2803C  38 A0 00 01 */	li r5, 1
/* 80A28040  4B FF FC F1 */	bl step__15daNpcKasiMich_cFsi
/* 80A28044  2C 03 00 00 */	cmpwi r3, 0
/* 80A28048  41 82 00 68 */	beq lbl_80A280B0
/* 80A2804C  88 1D 14 64 */	lbz r0, 0x1464(r29)
/* 80A28050  7C 00 07 75 */	extsb. r0, r0
/* 80A28054  40 82 00 34 */	bne lbl_80A28088
/* 80A28058  88 1D 14 65 */	lbz r0, 0x1465(r29)
/* 80A2805C  7C 00 07 75 */	extsb. r0, r0
/* 80A28060  40 82 00 28 */	bne lbl_80A28088
/* 80A28064  7F A3 EB 78 */	mr r3, r29
/* 80A28068  38 80 00 0B */	li r4, 0xb
/* 80A2806C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A28070  38 A0 00 00 */	li r5, 0
/* 80A28074  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A28078  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A2807C  7D 89 03 A6 */	mtctr r12
/* 80A28080  4E 80 04 21 */	bctrl 
/* 80A28084  48 00 00 24 */	b lbl_80A280A8
lbl_80A28088:
/* 80A28088  7F A3 EB 78 */	mr r3, r29
/* 80A2808C  38 80 00 04 */	li r4, 4
/* 80A28090  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A28094  38 A0 00 00 */	li r5, 0
/* 80A28098  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A2809C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A280A0  7D 89 03 A6 */	mtctr r12
/* 80A280A4  4E 80 04 21 */	bctrl 
lbl_80A280A8:
/* 80A280A8  38 00 00 00 */	li r0, 0
/* 80A280AC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A280B0:
/* 80A280B0  38 60 01 22 */	li r3, 0x122
/* 80A280B4  4B 72 D5 81 */	bl daNpcF_chkEvtBit__FUl
/* 80A280B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A280BC  41 82 00 CC */	beq lbl_80A28188
/* 80A280C0  88 1D 14 65 */	lbz r0, 0x1465(r29)
/* 80A280C4  7C 00 07 75 */	extsb. r0, r0
/* 80A280C8  41 82 00 C0 */	beq lbl_80A28188
/* 80A280CC  88 1D 14 64 */	lbz r0, 0x1464(r29)
/* 80A280D0  7C 00 07 75 */	extsb. r0, r0
/* 80A280D4  40 82 00 B4 */	bne lbl_80A28188
/* 80A280D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A280DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A280E0  38 80 00 0C */	li r4, 0xc
/* 80A280E4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80A280E8  7C 05 07 74 */	extsb r5, r0
/* 80A280EC  4B 60 D2 75 */	bl isSwitch__10dSv_info_cCFii
/* 80A280F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A280F4  41 82 00 94 */	beq lbl_80A28188
/* 80A280F8  7F A3 EB 78 */	mr r3, r29
/* 80A280FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A28100  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A28104  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A28108  48 00 13 F9 */	bl actor_front_check__15daNpcKasiMich_cFP10fopAc_ac_c
/* 80A2810C  2C 03 00 00 */	cmpwi r3, 0
/* 80A28110  41 82 00 4C */	beq lbl_80A2815C
/* 80A28114  7F A3 EB 78 */	mr r3, r29
/* 80A28118  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A2811C  4B 5F 28 49 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A28120  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80A28124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A28128  4C 41 13 82 */	cror 2, 1, 2
/* 80A2812C  40 82 00 5C */	bne lbl_80A28188
/* 80A28130  80 7E 02 EC */	lwz r3, 0x2ec(r30)
/* 80A28134  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 80A28138  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A2813C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A28140  80 1E 02 F4 */	lwz r0, 0x2f4(r30)
/* 80A28144  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A28148  7F A3 EB 78 */	mr r3, r29
/* 80A2814C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A28150  4B FF F9 35 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
/* 80A28154  38 60 00 01 */	li r3, 1
/* 80A28158  48 00 01 3C */	b lbl_80A28294
lbl_80A2815C:
/* 80A2815C  80 7E 02 F8 */	lwz r3, 0x2f8(r30)
/* 80A28160  80 1E 02 FC */	lwz r0, 0x2fc(r30)
/* 80A28164  90 61 00 08 */	stw r3, 8(r1)
/* 80A28168  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2816C  80 1E 03 00 */	lwz r0, 0x300(r30)
/* 80A28170  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A28174  7F A3 EB 78 */	mr r3, r29
/* 80A28178  38 81 00 08 */	addi r4, r1, 8
/* 80A2817C  4B FF F9 09 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
/* 80A28180  38 60 00 01 */	li r3, 1
/* 80A28184  48 00 01 10 */	b lbl_80A28294
lbl_80A28188:
/* 80A28188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2818C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A28190  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 80A28194  28 00 00 00 */	cmplwi r0, 0
/* 80A28198  41 82 00 58 */	beq lbl_80A281F0
/* 80A2819C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A281A0  28 00 00 01 */	cmplwi r0, 1
/* 80A281A4  40 82 00 EC */	bne lbl_80A28290
/* 80A281A8  38 00 00 00 */	li r0, 0
/* 80A281AC  88 7C 4F B5 */	lbz r3, 0x4fb5(r28)
/* 80A281B0  28 03 00 01 */	cmplwi r3, 1
/* 80A281B4  41 82 00 0C */	beq lbl_80A281C0
/* 80A281B8  28 03 00 02 */	cmplwi r3, 2
/* 80A281BC  40 82 00 08 */	bne lbl_80A281C4
lbl_80A281C0:
/* 80A281C0  38 00 00 01 */	li r0, 1
lbl_80A281C4:
/* 80A281C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A281C8  41 82 00 14 */	beq lbl_80A281DC
/* 80A281CC  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 80A281D0  4B 62 06 21 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A281D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A281D8  41 82 00 B8 */	beq lbl_80A28290
lbl_80A281DC:
/* 80A281DC  38 00 00 01 */	li r0, 1
/* 80A281E0  98 1D 14 66 */	stb r0, 0x1466(r29)
/* 80A281E4  38 7C 4E C8 */	addi r3, r28, 0x4ec8
/* 80A281E8  4B 61 A2 81 */	bl reset__14dEvt_control_cFv
/* 80A281EC  48 00 00 A4 */	b lbl_80A28290
lbl_80A281F0:
/* 80A281F0  4B 78 43 8D */	bl dKy_darkworld_check__Fv
/* 80A281F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A281F8  40 82 00 54 */	bne lbl_80A2824C
/* 80A281FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A28200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A28204  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A28208  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A2820C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A28210  41 82 00 3C */	beq lbl_80A2824C
/* 80A28214  C8 3F 02 28 */	lfd f1, 0x228(r31)
/* 80A28218  C8 5F 02 30 */	lfd f2, 0x230(r31)
/* 80A2821C  4B 94 45 65 */	bl pow
/* 80A28220  FF E0 08 18 */	frsp f31, f1
/* 80A28224  7F A3 EB 78 */	mr r3, r29
/* 80A28228  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2822C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A28230  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A28234  4B 5F 28 61 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A28238  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A2823C  40 80 00 10 */	bge lbl_80A2824C
/* 80A28240  38 00 00 01 */	li r0, 1
/* 80A28244  98 1D 14 67 */	stb r0, 0x1467(r29)
/* 80A28248  48 00 00 48 */	b lbl_80A28290
lbl_80A2824C:
/* 80A2824C  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A28250  28 00 00 00 */	cmplwi r0, 0
/* 80A28254  41 82 00 0C */	beq lbl_80A28260
/* 80A28258  80 1E 00 EC */	lwz r0, 0xec(r30)
/* 80A2825C  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A28260:
/* 80A28260  7F A3 EB 78 */	mr r3, r29
/* 80A28264  88 9D 14 69 */	lbz r4, 0x1469(r29)
/* 80A28268  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A2826C  54 00 10 3A */	slwi r0, r0, 2
/* 80A28270  38 BE 00 F8 */	addi r5, r30, 0xf8
/* 80A28274  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A28278  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A2827C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A28280  38 E0 00 28 */	li r7, 0x28
/* 80A28284  39 00 00 FF */	li r8, 0xff
/* 80A28288  39 20 00 01 */	li r9, 1
/* 80A2828C  4B 72 B5 F1 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A28290:
/* 80A28290  38 60 00 01 */	li r3, 1
lbl_80A28294:
/* 80A28294  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A28298  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A2829C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A282A0  4B 93 9F 85 */	bl _restgpr_28
/* 80A282A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A282A8  7C 08 03 A6 */	mtlr r0
/* 80A282AC  38 21 00 40 */	addi r1, r1, 0x40
/* 80A282B0  4E 80 00 20 */	blr 
