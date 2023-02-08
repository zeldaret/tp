lbl_809FCDC4:
/* 809FCDC4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 809FCDC8  7C 08 02 A6 */	mflr r0
/* 809FCDCC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 809FCDD0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809FCDD4  4B 96 53 F5 */	bl _savegpr_24
/* 809FCDD8  7C 7B 1B 78 */	mr r27, r3
/* 809FCDDC  7C 98 23 78 */	mr r24, r4
/* 809FCDE0  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FCDE4  3B C3 06 00 */	addi r30, r3, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FCDE8  3B A0 00 00 */	li r29, 0
/* 809FCDEC  3B 80 FF FF */	li r28, -1
/* 809FCDF0  3B 20 00 00 */	li r25, 0
/* 809FCDF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FCDF8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FCDFC  3B 5F 4F F8 */	addi r26, r31, 0x4ff8
/* 809FCE00  7F 43 D3 78 */	mr r3, r26
/* 809FCE04  3C A0 80 A0 */	lis r5, d_a_npc_hanjo__stringBase0@ha /* 0x80A007F8@ha */
/* 809FCE08  38 A5 07 F8 */	addi r5, r5, d_a_npc_hanjo__stringBase0@l /* 0x80A007F8@l */
/* 809FCE0C  38 A5 01 1D */	addi r5, r5, 0x11d
/* 809FCE10  38 C0 00 03 */	li r6, 3
/* 809FCE14  4B 64 B2 D9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FCE18  28 03 00 00 */	cmplwi r3, 0
/* 809FCE1C  41 82 00 08 */	beq lbl_809FCE24
/* 809FCE20  83 83 00 00 */	lwz r28, 0(r3)
lbl_809FCE24:
/* 809FCE24  7F 43 D3 78 */	mr r3, r26
/* 809FCE28  7F 04 C3 78 */	mr r4, r24
/* 809FCE2C  3C A0 80 A0 */	lis r5, d_a_npc_hanjo__stringBase0@ha /* 0x80A007F8@ha */
/* 809FCE30  38 A5 07 F8 */	addi r5, r5, d_a_npc_hanjo__stringBase0@l /* 0x80A007F8@l */
/* 809FCE34  38 A5 01 31 */	addi r5, r5, 0x131
/* 809FCE38  38 C0 00 03 */	li r6, 3
/* 809FCE3C  4B 64 B2 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FCE40  28 03 00 00 */	cmplwi r3, 0
/* 809FCE44  41 82 00 08 */	beq lbl_809FCE4C
/* 809FCE48  83 23 00 00 */	lwz r25, 0(r3)
lbl_809FCE4C:
/* 809FCE4C  7F 43 D3 78 */	mr r3, r26
/* 809FCE50  7F 04 C3 78 */	mr r4, r24
/* 809FCE54  4B 64 AE F9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809FCE58  2C 03 00 00 */	cmpwi r3, 0
/* 809FCE5C  41 82 02 74 */	beq lbl_809FD0D0
/* 809FCE60  2C 1C 00 04 */	cmpwi r28, 4
/* 809FCE64  41 82 01 A8 */	beq lbl_809FD00C
/* 809FCE68  40 80 00 28 */	bge lbl_809FCE90
/* 809FCE6C  2C 1C 00 01 */	cmpwi r28, 1
/* 809FCE70  41 82 01 6C */	beq lbl_809FCFDC
/* 809FCE74  40 80 00 10 */	bge lbl_809FCE84
/* 809FCE78  2C 1C 00 00 */	cmpwi r28, 0
/* 809FCE7C  40 80 00 30 */	bge lbl_809FCEAC
/* 809FCE80  48 00 02 50 */	b lbl_809FD0D0
lbl_809FCE84:
/* 809FCE84  2C 1C 00 03 */	cmpwi r28, 3
/* 809FCE88  40 80 01 70 */	bge lbl_809FCFF8
/* 809FCE8C  48 00 01 58 */	b lbl_809FCFE4
lbl_809FCE90:
/* 809FCE90  2C 1C 00 63 */	cmpwi r28, 0x63
/* 809FCE94  41 82 01 D4 */	beq lbl_809FD068
/* 809FCE98  40 80 02 38 */	bge lbl_809FD0D0
/* 809FCE9C  2C 1C 00 06 */	cmpwi r28, 6
/* 809FCEA0  41 82 01 A4 */	beq lbl_809FD044
/* 809FCEA4  40 80 02 2C */	bge lbl_809FD0D0
/* 809FCEA8  48 00 01 94 */	b lbl_809FD03C
lbl_809FCEAC:
/* 809FCEAC  38 60 00 27 */	li r3, 0x27
/* 809FCEB0  4B 74 FC 7D */	bl daNpcT_offTmpBit__FUl
/* 809FCEB4  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 809FCEB8  2C 00 00 07 */	cmpwi r0, 7
/* 809FCEBC  41 82 00 24 */	beq lbl_809FCEE0
/* 809FCEC0  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 809FCEC4  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 809FCEC8  4B 74 89 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FCECC  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 809FCED0  38 00 00 07 */	li r0, 7
/* 809FCED4  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 809FCED8  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FCEDC  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_809FCEE0:
/* 809FCEE0  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FCEE4  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FCEE8  4B 74 89 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FCEEC  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FCEF0  38 00 00 0B */	li r0, 0xb
/* 809FCEF4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FCEF8  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FCEFC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 809FCF00  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FCF04  2C 00 00 00 */	cmpwi r0, 0
/* 809FCF08  41 82 00 24 */	beq lbl_809FCF2C
/* 809FCF0C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FCF10  4B 74 87 ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FCF14  38 00 00 00 */	li r0, 0
/* 809FCF18  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FCF1C  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FCF20  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FCF24  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FCF28  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FCF2C:
/* 809FCF2C  38 00 00 00 */	li r0, 0
/* 809FCF30  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 809FCF34  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 809FCF38  38 00 00 01 */	li r0, 1
/* 809FCF3C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FCF40  A8 7B 04 B6 */	lha r3, 0x4b6(r27)
/* 809FCF44  3C 63 00 01 */	addis r3, r3, 1
/* 809FCF48  38 03 80 00 */	addi r0, r3, -32768
/* 809FCF4C  B0 1B 04 B6 */	sth r0, 0x4b6(r27)
/* 809FCF50  7F 63 DB 78 */	mr r3, r27
/* 809FCF54  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 809FCF58  4B 74 DA C1 */	bl setAngle__8daNpcT_cFs
/* 809FCF5C  7F 63 DB 78 */	mr r3, r27
/* 809FCF60  38 80 00 CF */	li r4, 0xcf
/* 809FCF64  38 A0 00 00 */	li r5, 0
/* 809FCF68  4B 74 EC 89 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809FCF6C  38 61 00 18 */	addi r3, r1, 0x18
/* 809FCF70  3C 80 80 A0 */	lis r4, l_evtList@ha /* 0x80A00980@ha */
/* 809FCF74  38 84 09 80 */	addi r4, r4, l_evtList@l /* 0x80A00980@l */
/* 809FCF78  80 84 00 48 */	lwz r4, 0x48(r4)
/* 809FCF7C  4B 96 BB B1 */	bl strcpy
/* 809FCF80  38 61 00 18 */	addi r3, r1, 0x18
/* 809FCF84  3C 80 80 A0 */	lis r4, d_a_npc_hanjo__stringBase0@ha /* 0x80A007F8@ha */
/* 809FCF88  38 84 07 F8 */	addi r4, r4, d_a_npc_hanjo__stringBase0@l /* 0x80A007F8@l */
/* 809FCF8C  38 84 01 37 */	addi r4, r4, 0x137
/* 809FCF90  4B 96 BB 2D */	bl strcat
/* 809FCF94  3B 5F 4E C8 */	addi r26, r31, 0x4ec8
/* 809FCF98  7F 43 D3 78 */	mr r3, r26
/* 809FCF9C  7F 64 DB 78 */	mr r4, r27
/* 809FCFA0  38 A1 00 18 */	addi r5, r1, 0x18
/* 809FCFA4  4B 64 59 B5 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 809FCFA8  7F 43 D3 78 */	mr r3, r26
/* 809FCFAC  4B 64 59 FD */	bl onSkipFade__14dEvt_control_cFv
/* 809FCFB0  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 809FCFB4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809FCFB8  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 809FCFBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FCFC0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809FCFC4  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 809FCFC8  38 80 00 09 */	li r4, 9
/* 809FCFCC  38 A0 00 0F */	li r5, 0xf
/* 809FCFD0  38 C1 00 0C */	addi r6, r1, 0xc
/* 809FCFD4  4B 67 2A 51 */	bl StartShock__12dVibration_cFii4cXyz
/* 809FCFD8  48 00 00 F8 */	b lbl_809FD0D0
lbl_809FCFDC:
/* 809FCFDC  93 3B 0D C4 */	stw r25, 0xdc4(r27)
/* 809FCFE0  48 00 00 F0 */	b lbl_809FD0D0
lbl_809FCFE4:
/* 809FCFE4  7F 63 DB 78 */	mr r3, r27
/* 809FCFE8  38 80 00 CF */	li r4, 0xcf
/* 809FCFEC  38 A0 00 00 */	li r5, 0
/* 809FCFF0  4B 74 EC 01 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809FCFF4  48 00 00 DC */	b lbl_809FD0D0
lbl_809FCFF8:
/* 809FCFF8  2C 19 00 01 */	cmpwi r25, 1
/* 809FCFFC  40 80 00 08 */	bge lbl_809FD004
/* 809FD000  3B 20 00 01 */	li r25, 1
lbl_809FD004:
/* 809FD004  93 3B 0D C4 */	stw r25, 0xdc4(r27)
/* 809FD008  48 00 00 C8 */	b lbl_809FD0D0
lbl_809FD00C:
/* 809FD00C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 809FD010  2C 00 00 0D */	cmpwi r0, 0xd
/* 809FD014  41 82 00 BC */	beq lbl_809FD0D0
/* 809FD018  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FD01C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FD020  4B 74 88 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD024  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FD028  38 00 00 0D */	li r0, 0xd
/* 809FD02C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FD030  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 809FD034  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 809FD038  48 00 00 98 */	b lbl_809FD0D0
lbl_809FD03C:
/* 809FD03C  93 3B 0D C4 */	stw r25, 0xdc4(r27)
/* 809FD040  48 00 00 90 */	b lbl_809FD0D0
lbl_809FD044:
/* 809FD044  93 3B 0D C4 */	stw r25, 0xdc4(r27)
/* 809FD048  38 7B 10 D8 */	addi r3, r27, 0x10d8
/* 809FD04C  4B 74 86 BD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FD050  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 809FD054  60 00 00 10 */	ori r0, r0, 0x10
/* 809FD058  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 809FD05C  38 00 00 01 */	li r0, 1
/* 809FD060  98 1B 17 22 */	stb r0, 0x1722(r27)
/* 809FD064  48 00 00 6C */	b lbl_809FD0D0
lbl_809FD068:
/* 809FD068  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FD06C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FD070  4B 74 88 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD074  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FD078  38 00 00 0D */	li r0, 0xd
/* 809FD07C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FD080  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FD084  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 809FD088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809FD08C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809FD090  38 63 09 58 */	addi r3, r3, 0x958
/* 809FD094  38 80 00 2B */	li r4, 0x2b
/* 809FD098  4B 63 77 79 */	bl onSwitch__12dSv_memBit_cFi
/* 809FD09C  38 7B 10 D8 */	addi r3, r27, 0x10d8
/* 809FD0A0  4B 74 86 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FD0A4  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 809FD0A8  60 00 02 00 */	ori r0, r0, 0x200
/* 809FD0AC  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 809FD0B0  38 00 00 01 */	li r0, 1
/* 809FD0B4  98 1B 17 22 */	stb r0, 0x1722(r27)
/* 809FD0B8  38 60 00 27 */	li r3, 0x27
/* 809FD0BC  4B 74 FA 31 */	bl daNpcT_onTmpBit__FUl
/* 809FD0C0  38 60 00 CF */	li r3, 0xcf
/* 809FD0C4  4B 74 F9 69 */	bl daNpcT_onEvtBit__FUl
/* 809FD0C8  38 7B 09 74 */	addi r3, r27, 0x974
/* 809FD0CC  4B 84 D3 F9 */	bl remove__10dMsgFlow_cFv
lbl_809FD0D0:
/* 809FD0D0  2C 1C 00 04 */	cmpwi r28, 4
/* 809FD0D4  41 82 01 DC */	beq lbl_809FD2B0
/* 809FD0D8  40 80 00 28 */	bge lbl_809FD100
/* 809FD0DC  2C 1C 00 01 */	cmpwi r28, 1
/* 809FD0E0  41 82 00 78 */	beq lbl_809FD158
/* 809FD0E4  40 80 00 10 */	bge lbl_809FD0F4
/* 809FD0E8  2C 1C 00 00 */	cmpwi r28, 0
/* 809FD0EC  40 80 00 30 */	bge lbl_809FD11C
/* 809FD0F0  48 00 02 84 */	b lbl_809FD374
lbl_809FD0F4:
/* 809FD0F4  2C 1C 00 03 */	cmpwi r28, 3
/* 809FD0F8  40 80 00 E4 */	bge lbl_809FD1DC
/* 809FD0FC  48 00 00 74 */	b lbl_809FD170
lbl_809FD100:
/* 809FD100  2C 1C 00 63 */	cmpwi r28, 0x63
/* 809FD104  41 82 02 6C */	beq lbl_809FD370
/* 809FD108  40 80 02 6C */	bge lbl_809FD374
/* 809FD10C  2C 1C 00 06 */	cmpwi r28, 6
/* 809FD110  41 82 02 40 */	beq lbl_809FD350
/* 809FD114  40 80 02 60 */	bge lbl_809FD374
/* 809FD118  48 00 01 E8 */	b lbl_809FD300
lbl_809FD11C:
/* 809FD11C  7F 63 DB 78 */	mr r3, r27
/* 809FD120  38 80 00 00 */	li r4, 0
/* 809FD124  38 A0 00 00 */	li r5, 0
/* 809FD128  38 C0 00 00 */	li r6, 0
/* 809FD12C  38 E0 00 00 */	li r7, 0
/* 809FD130  4B 74 EB 49 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809FD134  2C 03 00 00 */	cmpwi r3, 0
/* 809FD138  41 82 02 3C */	beq lbl_809FD374
/* 809FD13C  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 809FD140  28 00 00 01 */	cmplwi r0, 1
/* 809FD144  40 82 02 30 */	bne lbl_809FD374
/* 809FD148  38 60 00 27 */	li r3, 0x27
/* 809FD14C  4B 74 F9 A1 */	bl daNpcT_onTmpBit__FUl
/* 809FD150  3B A0 00 01 */	li r29, 1
/* 809FD154  48 00 02 20 */	b lbl_809FD374
lbl_809FD158:
/* 809FD158  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 809FD15C  48 00 2D 11 */	bl func_809FFE6C
/* 809FD160  2C 03 00 00 */	cmpwi r3, 0
/* 809FD164  40 82 02 10 */	bne lbl_809FD374
/* 809FD168  3B A0 00 01 */	li r29, 1
/* 809FD16C  48 00 02 08 */	b lbl_809FD374
lbl_809FD170:
/* 809FD170  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FD174  2C 00 00 04 */	cmpwi r0, 4
/* 809FD178  41 82 00 28 */	beq lbl_809FD1A0
/* 809FD17C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FD180  4B 74 85 7D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FD184  38 00 00 00 */	li r0, 0
/* 809FD188  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FD18C  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FD190  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FD194  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD198  38 00 00 04 */	li r0, 4
/* 809FD19C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FD1A0:
/* 809FD1A0  38 00 00 00 */	li r0, 0
/* 809FD1A4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD1A8  7F 63 DB 78 */	mr r3, r27
/* 809FD1AC  38 80 00 00 */	li r4, 0
/* 809FD1B0  38 A0 00 00 */	li r5, 0
/* 809FD1B4  38 C0 00 00 */	li r6, 0
/* 809FD1B8  38 E0 00 00 */	li r7, 0
/* 809FD1BC  4B 74 EA BD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809FD1C0  2C 03 00 00 */	cmpwi r3, 0
/* 809FD1C4  41 82 01 B0 */	beq lbl_809FD374
/* 809FD1C8  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 809FD1CC  28 00 00 01 */	cmplwi r0, 1
/* 809FD1D0  40 82 01 A4 */	bne lbl_809FD374
/* 809FD1D4  3B A0 00 01 */	li r29, 1
/* 809FD1D8  48 00 01 9C */	b lbl_809FD374
lbl_809FD1DC:
/* 809FD1DC  80 1B 0D C4 */	lwz r0, 0xdc4(r27)
/* 809FD1E0  2C 00 00 00 */	cmpwi r0, 0
/* 809FD1E4  41 82 00 58 */	beq lbl_809FD23C
/* 809FD1E8  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 809FD1EC  48 00 2C 81 */	bl func_809FFE6C
/* 809FD1F0  2C 03 00 00 */	cmpwi r3, 0
/* 809FD1F4  40 82 01 80 */	bne lbl_809FD374
/* 809FD1F8  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 809FD1FC  2C 00 00 0C */	cmpwi r0, 0xc
/* 809FD200  41 82 00 24 */	beq lbl_809FD224
/* 809FD204  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 809FD208  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FD20C  4B 74 86 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD210  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 809FD214  38 00 00 0C */	li r0, 0xc
/* 809FD218  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 809FD21C  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 809FD220  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_809FD224:
/* 809FD224  38 7B 10 D8 */	addi r3, r27, 0x10d8
/* 809FD228  4B 74 84 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FD22C  A0 03 06 BE */	lhz r0, 0x6be(r3)
/* 809FD230  60 00 00 40 */	ori r0, r0, 0x40
/* 809FD234  B0 03 06 BE */	sth r0, 0x6be(r3)
/* 809FD238  48 00 01 3C */	b lbl_809FD374
lbl_809FD23C:
/* 809FD23C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 809FD240  4B 74 87 E5 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 809FD244  2C 03 00 00 */	cmpwi r3, 0
/* 809FD248  41 82 00 0C */	beq lbl_809FD254
/* 809FD24C  3B A0 00 01 */	li r29, 1
/* 809FD250  48 00 01 24 */	b lbl_809FD374
lbl_809FD254:
/* 809FD254  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 809FD258  38 63 00 0C */	addi r3, r3, 0xc
/* 809FD25C  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 809FD260  4B 92 B1 CD */	bl checkPass__12J3DFrameCtrlFf
/* 809FD264  2C 03 00 00 */	cmpwi r3, 0
/* 809FD268  41 82 01 0C */	beq lbl_809FD374
/* 809FD26C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002001E@ha */
/* 809FD270  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0002001E@l */
/* 809FD274  90 01 00 08 */	stw r0, 8(r1)
/* 809FD278  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809FD27C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809FD280  80 63 00 00 */	lwz r3, 0(r3)
/* 809FD284  38 81 00 08 */	addi r4, r1, 8
/* 809FD288  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 809FD28C  38 C0 00 00 */	li r6, 0
/* 809FD290  38 E0 00 00 */	li r7, 0
/* 809FD294  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 809FD298  FC 40 08 90 */	fmr f2, f1
/* 809FD29C  C0 7E 01 20 */	lfs f3, 0x120(r30)
/* 809FD2A0  FC 80 18 90 */	fmr f4, f3
/* 809FD2A4  39 00 00 00 */	li r8, 0
/* 809FD2A8  4B 8A E6 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809FD2AC  48 00 00 C8 */	b lbl_809FD374
lbl_809FD2B0:
/* 809FD2B0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FD2B4  2C 00 00 00 */	cmpwi r0, 0
/* 809FD2B8  41 82 00 24 */	beq lbl_809FD2DC
/* 809FD2BC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FD2C0  4B 74 84 3D */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FD2C4  38 00 00 00 */	li r0, 0
/* 809FD2C8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FD2CC  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FD2D0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FD2D4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD2D8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FD2DC:
/* 809FD2DC  38 00 00 00 */	li r0, 0
/* 809FD2E0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD2E4  38 7B 10 D8 */	addi r3, r27, 0x10d8
/* 809FD2E8  4B 74 84 21 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809FD2EC  88 03 06 AD */	lbz r0, 0x6ad(r3)
/* 809FD2F0  28 00 00 00 */	cmplwi r0, 0
/* 809FD2F4  41 82 00 80 */	beq lbl_809FD374
/* 809FD2F8  3B A0 00 01 */	li r29, 1
/* 809FD2FC  48 00 00 78 */	b lbl_809FD374
lbl_809FD300:
/* 809FD300  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 809FD304  2C 00 00 04 */	cmpwi r0, 4
/* 809FD308  41 82 00 28 */	beq lbl_809FD330
/* 809FD30C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 809FD310  4B 74 83 ED */	bl remove__18daNpcT_ActorMngr_cFv
/* 809FD314  38 00 00 00 */	li r0, 0
/* 809FD318  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 809FD31C  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FD320  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 809FD324  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD328  38 00 00 04 */	li r0, 4
/* 809FD32C  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_809FD330:
/* 809FD330  38 00 00 00 */	li r0, 0
/* 809FD334  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 809FD338  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 809FD33C  48 00 2B 31 */	bl func_809FFE6C
/* 809FD340  2C 03 00 00 */	cmpwi r3, 0
/* 809FD344  40 82 00 30 */	bne lbl_809FD374
/* 809FD348  3B A0 00 01 */	li r29, 1
/* 809FD34C  48 00 00 28 */	b lbl_809FD374
lbl_809FD350:
/* 809FD350  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 809FD354  48 00 2B 19 */	bl func_809FFE6C
/* 809FD358  2C 03 00 00 */	cmpwi r3, 0
/* 809FD35C  40 82 00 18 */	bne lbl_809FD374
/* 809FD360  38 60 00 CF */	li r3, 0xcf
/* 809FD364  4B 74 F6 C9 */	bl daNpcT_onEvtBit__FUl
/* 809FD368  3B A0 00 01 */	li r29, 1
/* 809FD36C  48 00 00 08 */	b lbl_809FD374
lbl_809FD370:
/* 809FD370  3B A0 00 01 */	li r29, 1
lbl_809FD374:
/* 809FD374  2C 1C 00 01 */	cmpwi r28, 1
/* 809FD378  40 82 00 0C */	bne lbl_809FD384
/* 809FD37C  2C 1D 00 01 */	cmpwi r29, 1
/* 809FD380  41 82 00 0C */	beq lbl_809FD38C
lbl_809FD384:
/* 809FD384  2C 1C 00 01 */	cmpwi r28, 1
/* 809FD388  40 81 00 1C */	ble lbl_809FD3A4
lbl_809FD38C:
/* 809FD38C  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 809FD390  4B 7A B6 C5 */	bl dKy_set_actcol_ratio__Ff
/* 809FD394  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 809FD398  4B 7A B6 CD */	bl dKy_set_bgcol_ratio__Ff
/* 809FD39C  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 809FD3A0  4B 7A B6 D5 */	bl dKy_set_fogcol_ratio__Ff
lbl_809FD3A4:
/* 809FD3A4  7F A3 EB 78 */	mr r3, r29
/* 809FD3A8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 809FD3AC  4B 96 4E 69 */	bl _restgpr_24
/* 809FD3B0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 809FD3B4  7C 08 03 A6 */	mtlr r0
/* 809FD3B8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 809FD3BC  4E 80 00 20 */	blr 
