lbl_80022158:
/* 80022158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002215C  7C 08 02 A6 */	mflr r0
/* 80022160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022168  93 C1 00 08 */	stw r30, 8(r1)
/* 8002216C  7C 7E 1B 78 */	mr r30, r3
/* 80022170  7C 9F 23 78 */	mr r31, r4
/* 80022174  48 24 EC D9 */	bl MtxInit__Fv
/* 80022178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8002217C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80022180  3C 63 00 02 */	addis r3, r3, 2
/* 80022184  38 63 C0 F4 */	addi r3, r3, -16140
/* 80022188  48 03 3E F9 */	bl peekData__13dDlst_peekZ_cFv
/* 8002218C  48 07 B6 05 */	bl execute__19dShutdownErrorMsg_cFv
/* 80022190  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80022194  40 82 01 0C */	bne lbl_800222A0
/* 80022198  88 0D 87 B9 */	lbz r0, struct_80450D38+0x1(r13)
/* 8002219C  7C 00 07 75 */	extsb. r0, r0
/* 800221A0  40 82 00 14 */	bne lbl_800221B4
/* 800221A4  38 00 00 00 */	li r0, 0
/* 800221A8  98 0D 87 B8 */	stb r0, struct_80450D38+0x0(r13)
/* 800221AC  38 00 00 01 */	li r0, 1
/* 800221B0  98 0D 87 B9 */	stb r0, struct_80450D38+0x1(r13)
lbl_800221B4:
/* 800221B4  48 07 B1 A1 */	bl execute__14dDvdErrorMsg_cFv
/* 800221B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800221BC  40 82 00 AC */	bne lbl_80022268
/* 800221C0  88 0D 87 B8 */	lbz r0, struct_80450D38+0x0(r13)
/* 800221C4  28 00 00 00 */	cmplwi r0, 0
/* 800221C8  41 82 00 1C */	beq lbl_800221E4
/* 800221CC  48 01 06 F1 */	bl startTime__11dLib_time_cFv
/* 800221D0  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 800221D4  38 80 00 00 */	li r4, 0
/* 800221D8  48 28 84 D9 */	bl pauseAllGameSound__10Z2SoundMgrFb
/* 800221DC  38 00 00 00 */	li r0, 0
/* 800221E0  98 0D 87 B8 */	stb r0, struct_80450D38+0x0(r13)
lbl_800221E4:
/* 800221E4  48 24 10 E5 */	bl cAPIGph_Painter__Fv
/* 800221E8  88 6D 89 44 */	lbz r3, data_80450EC4(r13)
/* 800221EC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800221F0  40 82 00 0C */	bne lbl_800221FC
/* 800221F4  4B FF EE E1 */	bl fpcDt_Handler__Fv
/* 800221F8  48 00 00 0C */	b lbl_80022204
lbl_800221FC:
/* 800221FC  54 60 06 3C */	rlwinm r0, r3, 0, 0x18, 0x1e
/* 80022200  98 0D 89 44 */	stb r0, data_80450EC4(r13)
lbl_80022204:
/* 80022204  48 00 12 25 */	bl fpcPi_Handler__Fv
/* 80022208  4B FF ED 09 */	bl fpcCt_Handler__Fv
/* 8002220C  28 1E 00 00 */	cmplwi r30, 0
/* 80022210  41 82 00 10 */	beq lbl_80022220
/* 80022214  7F CC F3 78 */	mr r12, r30
/* 80022218  7D 89 03 A6 */	mtctr r12
/* 8002221C  4E 80 04 21 */	bctrl 
lbl_80022220:
/* 80022220  3C 60 80 02 */	lis r3, fpcM_Execute__FPv@ha
/* 80022224  38 63 20 F8 */	addi r3, r3, fpcM_Execute__FPv@l
/* 80022228  4B FF F3 41 */	bl fpcEx_Handler__FPFPvPv_i
/* 8002222C  3C 60 80 02 */	lis r3, fpcM_DrawIterater__FPFPvPv_i@ha
/* 80022230  38 63 20 C0 */	addi r3, r3, fpcM_DrawIterater__FPFPvPv_i@l
/* 80022234  3C 80 80 02 */	lis r4, fpcM_Draw__FPv@ha
/* 80022238  38 84 20 A0 */	addi r4, r4, fpcM_Draw__FPv@l
/* 8002223C  48 00 17 B9 */	bl fpcDw_Handler__FPFPFPvPv_i_iPFPvPv_i
/* 80022240  28 1F 00 00 */	cmplwi r31, 0
/* 80022244  41 82 00 10 */	beq lbl_80022254
/* 80022248  7F EC FB 78 */	mr r12, r31
/* 8002224C  7D 89 03 A6 */	mtctr r12
/* 80022250  4E 80 04 21 */	bctrl 
lbl_80022254:
/* 80022254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80022258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002225C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80022260  48 00 A8 65 */	bl drawSimpleModel__14dComIfG_play_cFv
/* 80022264  48 00 00 3C */	b lbl_800222A0
lbl_80022268:
/* 80022268  88 0D 87 B8 */	lbz r0, struct_80450D38+0x0(r13)
/* 8002226C  28 00 00 00 */	cmplwi r0, 0
/* 80022270  40 82 00 30 */	bne lbl_800222A0
/* 80022274  48 01 06 0D */	bl stopTime__11dLib_time_cFv
/* 80022278  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 8002227C  38 80 00 01 */	li r4, 1
/* 80022280  48 28 84 31 */	bl pauseAllGameSound__10Z2SoundMgrFb
/* 80022284  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 80022288  80 83 D2 D8 */	lwz r4, m_gamePad__8mDoCPd_c@l(r3)
/* 8002228C  38 64 00 68 */	addi r3, r4, 0x68
/* 80022290  A8 84 00 7C */	lha r4, 0x7c(r4)
/* 80022294  48 2B F6 B5 */	bl stopPatternedRumble__Q210JUTGamePad7CRumbleFs
/* 80022298  38 00 00 01 */	li r0, 1
/* 8002229C  98 0D 87 B8 */	stb r0, struct_80450D38+0x0(r13)
lbl_800222A0:
/* 800222A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800222A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800222A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800222AC  7C 08 03 A6 */	mtlr r0
/* 800222B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800222B4  4E 80 00 20 */	blr 
