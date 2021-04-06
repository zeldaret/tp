lbl_804DDBB4:
/* 804DDBB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DDBB8  7C 08 02 A6 */	mflr r0
/* 804DDBBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DDBC0  39 61 00 30 */	addi r11, r1, 0x30
/* 804DDBC4  4B E8 46 0D */	bl _savegpr_26
/* 804DDBC8  7C 7C 1B 78 */	mr r28, r3
/* 804DDBCC  3C 80 80 4E */	lis r4, lit_3765@ha /* 0x804DF8B8@ha */
/* 804DDBD0  3B E4 F8 B8 */	addi r31, r4, lit_3765@l /* 0x804DF8B8@l */
/* 804DDBD4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804DDBD8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804DDBDC  40 82 01 54 */	bne lbl_804DDD30
/* 804DDBE0  7F 80 E3 79 */	or. r0, r28, r28
/* 804DDBE4  41 82 01 40 */	beq lbl_804DDD24
/* 804DDBE8  7C 1D 03 78 */	mr r29, r0
/* 804DDBEC  4B B9 AA 39 */	bl __ct__16dBgS_MoveBgActorFv
/* 804DDBF0  3C 60 80 4E */	lis r3, __vt__9daCstaF_c@ha /* 0x804DFAAC@ha */
/* 804DDBF4  38 03 FA AC */	addi r0, r3, __vt__9daCstaF_c@l /* 0x804DFAAC@l */
/* 804DDBF8  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 804DDBFC  3B 5D 05 C0 */	addi r26, r29, 0x5c0
/* 804DDC00  3C 60 80 4E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804DFAA0@ha */
/* 804DDC04  38 03 FA A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804DFAA0@l */
/* 804DDC08  90 1D 05 C0 */	stw r0, 0x5c0(r29)
/* 804DDC0C  7F 43 D3 78 */	mr r3, r26
/* 804DDC10  38 80 00 00 */	li r4, 0
/* 804DDC14  4B E4 A7 E9 */	bl init__12J3DFrameCtrlFs
/* 804DDC18  38 00 00 00 */	li r0, 0
/* 804DDC1C  90 1A 00 14 */	stw r0, 0x14(r26)
/* 804DDC20  3B 5D 05 D8 */	addi r26, r29, 0x5d8
/* 804DDC24  3C 60 80 4E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804DFAA0@ha */
/* 804DDC28  38 03 FA A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804DFAA0@l */
/* 804DDC2C  90 1D 05 D8 */	stw r0, 0x5d8(r29)
/* 804DDC30  7F 43 D3 78 */	mr r3, r26
/* 804DDC34  38 80 00 00 */	li r4, 0
/* 804DDC38  4B E4 A7 C5 */	bl init__12J3DFrameCtrlFs
/* 804DDC3C  38 00 00 00 */	li r0, 0
/* 804DDC40  90 1A 00 14 */	stw r0, 0x14(r26)
/* 804DDC44  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 804DDC48  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 804DDC4C  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 804DDC50  3C A0 80 4E */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x804DE220@ha */
/* 804DDC54  38 A5 E2 20 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x804DE220@l */
/* 804DDC58  38 C0 00 40 */	li r6, 0x40
/* 804DDC5C  38 E0 00 04 */	li r7, 4
/* 804DDC60  4B E8 41 01 */	bl __construct_array
/* 804DDC64  3B 5D 06 F0 */	addi r26, r29, 0x6f0
/* 804DDC68  7F 43 D3 78 */	mr r3, r26
/* 804DDC6C  4B B9 84 35 */	bl __ct__9dBgS_AcchFv
/* 804DDC70  3C 60 80 4E */	lis r3, __vt__15dBgS_StatueAcch@ha /* 0x804DFA7C@ha */
/* 804DDC74  38 63 FA 7C */	addi r3, r3, __vt__15dBgS_StatueAcch@l /* 0x804DFA7C@l */
/* 804DDC78  90 7A 00 10 */	stw r3, 0x10(r26)
/* 804DDC7C  38 03 00 0C */	addi r0, r3, 0xc
/* 804DDC80  90 1A 00 14 */	stw r0, 0x14(r26)
/* 804DDC84  38 03 00 18 */	addi r0, r3, 0x18
/* 804DDC88  90 1A 00 24 */	stw r0, 0x24(r26)
/* 804DDC8C  38 7A 00 14 */	addi r3, r26, 0x14
/* 804DDC90  4B B9 B2 ED */	bl SetStatue__16dBgS_PolyPassChkFv
/* 804DDC94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804DDC98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804DDC9C  90 1D 08 E0 */	stw r0, 0x8e0(r29)
/* 804DDCA0  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 804DDCA4  4B BA 5A BD */	bl __ct__10dCcD_GSttsFv
/* 804DDCA8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804DDCAC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804DDCB0  90 7D 08 E0 */	stw r3, 0x8e0(r29)
/* 804DDCB4  38 03 00 20 */	addi r0, r3, 0x20
/* 804DDCB8  90 1D 08 E4 */	stw r0, 0x8e4(r29)
/* 804DDCBC  3B 5D 09 04 */	addi r26, r29, 0x904
/* 804DDCC0  7F 43 D3 78 */	mr r3, r26
/* 804DDCC4  4B BA 5D 65 */	bl __ct__12dCcD_GObjInfFv
/* 804DDCC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804DDCCC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804DDCD0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 804DDCD4  3C 60 80 4E */	lis r3, __vt__8cM3dGAab@ha /* 0x804DFA70@ha */
/* 804DDCD8  38 03 FA 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804DFA70@l */
/* 804DDCDC  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 804DDCE0  3C 60 80 4E */	lis r3, __vt__8cM3dGCyl@ha /* 0x804DFA64@ha */
/* 804DDCE4  38 03 FA 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x804DFA64@l */
/* 804DDCE8  90 1A 01 38 */	stw r0, 0x138(r26)
/* 804DDCEC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 804DDCF0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 804DDCF4  90 7A 01 20 */	stw r3, 0x120(r26)
/* 804DDCF8  38 03 00 58 */	addi r0, r3, 0x58
/* 804DDCFC  90 1A 01 38 */	stw r0, 0x138(r26)
/* 804DDD00  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 804DDD04  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 804DDD08  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 804DDD0C  38 03 00 2C */	addi r0, r3, 0x2c
/* 804DDD10  90 1A 01 20 */	stw r0, 0x120(r26)
/* 804DDD14  38 03 00 84 */	addi r0, r3, 0x84
/* 804DDD18  90 1A 01 38 */	stw r0, 0x138(r26)
/* 804DDD1C  38 7D 0A 40 */	addi r3, r29, 0xa40
/* 804DDD20  4B DE 26 A9 */	bl __ct__10Z2CreatureFv
lbl_804DDD24:
/* 804DDD24  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 804DDD28  60 00 00 08 */	ori r0, r0, 8
/* 804DDD2C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_804DDD30:
/* 804DDD30  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804DDD34  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 804DDD38  98 1C 0B 09 */	stb r0, 0xb09(r28)
/* 804DDD3C  88 1C 0B 09 */	lbz r0, 0xb09(r28)
/* 804DDD40  28 00 00 02 */	cmplwi r0, 2
/* 804DDD44  41 80 00 0C */	blt lbl_804DDD50
/* 804DDD48  38 00 00 00 */	li r0, 0
/* 804DDD4C  98 1C 0B 09 */	stb r0, 0xb09(r28)
lbl_804DDD50:
/* 804DDD50  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804DDD54  54 00 E6 3E */	rlwinm r0, r0, 0x1c, 0x18, 0x1f
/* 804DDD58  98 1C 0B 0B */	stb r0, 0xb0b(r28)
/* 804DDD5C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804DDD60  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 804DDD64  98 1C 0B 0E */	stb r0, 0xb0e(r28)
/* 804DDD68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DDD6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DDD70  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804DDD74  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 804DDD78  7F 84 E3 78 */	mr r4, r28
/* 804DDD7C  88 BC 0B 0E */	lbz r5, 0xb0e(r28)
/* 804DDD80  4B B6 99 19 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804DDD84  B0 7C 0B 12 */	sth r3, 0xb12(r28)
/* 804DDD88  3B 40 0D 40 */	li r26, 0xd40
/* 804DDD8C  88 1C 0B 09 */	lbz r0, 0xb09(r28)
/* 804DDD90  28 00 00 00 */	cmplwi r0, 0
/* 804DDD94  40 82 00 14 */	bne lbl_804DDDA8
/* 804DDD98  38 1F 00 0C */	addi r0, r31, 0xc
/* 804DDD9C  90 1C 05 A0 */	stw r0, 0x5a0(r28)
/* 804DDDA0  3B 60 00 16 */	li r27, 0x16
/* 804DDDA4  48 00 00 24 */	b lbl_804DDDC8
lbl_804DDDA8:
/* 804DDDA8  38 1F 00 14 */	addi r0, r31, 0x14
/* 804DDDAC  90 1C 05 A0 */	stw r0, 0x5a0(r28)
/* 804DDDB0  3B 60 00 19 */	li r27, 0x19
/* 804DDDB4  7F 83 E3 78 */	mr r3, r28
/* 804DDDB8  4B FF FD 91 */	bl checkCoverModel__9daCstaF_cFv
/* 804DDDBC  2C 03 00 00 */	cmpwi r3, 0
/* 804DDDC0  41 82 00 08 */	beq lbl_804DDDC8
/* 804DDDC4  3B 40 17 00 */	li r26, 0x1700
lbl_804DDDC8:
/* 804DDDC8  38 7C 05 A4 */	addi r3, r28, 0x5a4
/* 804DDDCC  80 9C 05 A0 */	lwz r4, 0x5a0(r28)
/* 804DDDD0  4B B4 F0 ED */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804DDDD4  7C 7D 1B 78 */	mr r29, r3
/* 804DDDD8  2C 1D 00 04 */	cmpwi r29, 4
/* 804DDDDC  40 82 02 CC */	bne lbl_804DE0A8
/* 804DDDE0  7F 83 E3 78 */	mr r3, r28
/* 804DDDE4  80 9C 05 A0 */	lwz r4, 0x5a0(r28)
/* 804DDDE8  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 804DDDEC  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 804DDDF0  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 804DDDF4  7F 47 D3 78 */	mr r7, r26
/* 804DDDF8  39 00 00 00 */	li r8, 0
/* 804DDDFC  4B B9 A9 C1 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 804DDE00  7C 7D 1B 78 */	mr r29, r3
/* 804DDE04  2C 1D 00 04 */	cmpwi r29, 4
/* 804DDE08  41 82 00 08 */	beq lbl_804DDE10
/* 804DDE0C  48 00 02 A0 */	b lbl_804DE0AC
lbl_804DDE10:
/* 804DDE10  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 804DDE14  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804DDE18  4B B3 1D 65 */	bl setMorf__13mDoExt_morf_cFf
/* 804DDE1C  38 00 00 00 */	li r0, 0
/* 804DDE20  98 1C 0B 0A */	stb r0, 0xb0a(r28)
/* 804DDE24  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 804DDE28  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 804DDE2C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804DDE30  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 804DDE34  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804DDE38  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 804DDE3C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804DDE40  80 7C 05 B0 */	lwz r3, 0x5b0(r28)
/* 804DDE44  38 80 00 00 */	li r4, 0
/* 804DDE48  38 A0 00 00 */	li r5, 0
/* 804DDE4C  4B B3 32 65 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 804DDE50  38 7C 09 04 */	addi r3, r28, 0x904
/* 804DDE54  3C 80 80 4E */	lis r4, l_cylSrc@ha /* 0x804DF9A0@ha */
/* 804DDE58  38 84 F9 A0 */	addi r4, r4, l_cylSrc@l /* 0x804DF9A0@l */
/* 804DDE5C  4B BA 6A 59 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804DDE60  38 1C 08 C8 */	addi r0, r28, 0x8c8
/* 804DDE64  90 1C 09 48 */	stw r0, 0x948(r28)
/* 804DDE68  38 7C 09 04 */	addi r3, r28, 0x904
/* 804DDE6C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804DDE70  4B BA 6A 99 */	bl StartCAt__8dCcD_CylFR4cXyz
/* 804DDE74  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 804DDE78  38 03 00 24 */	addi r0, r3, 0x24
/* 804DDE7C  90 1C 05 04 */	stw r0, 0x504(r28)
/* 804DDE80  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804DDE84  D0 1C 0B 1C */	stfs f0, 0xb1c(r28)
/* 804DDE88  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 804DDE8C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 804DDE90  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804DDE94  4B B9 80 C5 */	bl SetWall__12dBgS_AcchCirFff
/* 804DDE98  38 7C 06 30 */	addi r3, r28, 0x630
/* 804DDE9C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 804DDEA0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804DDEA4  4B B9 80 B5 */	bl SetWall__12dBgS_AcchCirFff
/* 804DDEA8  38 7C 06 70 */	addi r3, r28, 0x670
/* 804DDEAC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 804DDEB0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804DDEB4  4B B9 80 A5 */	bl SetWall__12dBgS_AcchCirFff
/* 804DDEB8  38 7C 06 B0 */	addi r3, r28, 0x6b0
/* 804DDEBC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 804DDEC0  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 804DDEC4  4B B9 80 95 */	bl SetWall__12dBgS_AcchCirFff
/* 804DDEC8  38 7C 08 C8 */	addi r3, r28, 0x8c8
/* 804DDECC  38 80 00 FF */	li r4, 0xff
/* 804DDED0  38 A0 00 00 */	li r5, 0
/* 804DDED4  7F 86 E3 78 */	mr r6, r28
/* 804DDED8  4B BA 59 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804DDEDC  7F 83 E3 78 */	mr r3, r28
/* 804DDEE0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804DDEE4  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 804DDEE8  FC 60 08 90 */	fmr f3, f1
/* 804DDEEC  4B B3 C6 4D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 804DDEF0  7F 83 E3 78 */	mr r3, r28
/* 804DDEF4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804DDEF8  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804DDEFC  FC 60 08 90 */	fmr f3, f1
/* 804DDF00  4B B3 C6 29 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 804DDF04  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804DDF08  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 804DDF0C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804DDF10  D0 1C 05 34 */	stfs f0, 0x534(r28)
/* 804DDF14  3C 60 80 4E */	lis r3, daCstaF_rideCB__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x804DD958@ha */
/* 804DDF18  38 03 D9 58 */	addi r0, r3, daCstaF_rideCB__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x804DD958@l */
/* 804DDF1C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 804DDF20  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 804DDF24  38 7C 06 F0 */	addi r3, r28, 0x6f0
/* 804DDF28  7F 84 E3 78 */	mr r4, r28
/* 804DDF2C  38 A0 00 04 */	li r5, 4
/* 804DDF30  38 DC 05 F0 */	addi r6, r28, 0x5f0
/* 804DDF34  4B B9 83 55 */	bl Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir
/* 804DDF38  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 804DDF3C  90 1C 05 24 */	stw r0, 0x524(r28)
/* 804DDF40  7F 83 E3 78 */	mr r3, r28
/* 804DDF44  48 00 12 0D */	bl initStopBrkBtk__9daCstaF_cFv
/* 804DDF48  A8 1C 05 E0 */	lha r0, 0x5e0(r28)
/* 804DDF4C  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 804DDF50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DDF54  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DDF58  3C 00 43 30 */	lis r0, 0x4330
/* 804DDF5C  90 01 00 08 */	stw r0, 8(r1)
/* 804DDF60  C8 01 00 08 */	lfd f0, 8(r1)
/* 804DDF64  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DDF68  D0 1C 05 E8 */	stfs f0, 0x5e8(r28)
/* 804DDF6C  38 7C 06 F0 */	addi r3, r28, 0x6f0
/* 804DDF70  7F C4 F3 78 */	mr r4, r30
/* 804DDF74  4B B9 8B 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804DDF78  7F 83 E3 78 */	mr r3, r28
/* 804DDF7C  48 00 06 75 */	bl setMatrix__9daCstaF_cFv
/* 804DDF80  7F 83 E3 78 */	mr r3, r28
/* 804DDF84  48 00 05 D5 */	bl setRoomInfo__9daCstaF_cFv
/* 804DDF88  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 804DDF8C  28 03 00 00 */	cmplwi r3, 0
/* 804DDF90  41 82 00 C8 */	beq lbl_804DE058
/* 804DDF94  83 C3 00 04 */	lwz r30, 4(r3)
/* 804DDF98  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 804DDF9C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804DDFA0  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 804DDFA4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804DDFA8  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 804DDFAC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804DDFB0  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 804DDFB4  38 63 00 24 */	addi r3, r3, 0x24
/* 804DDFB8  80 9C 05 B4 */	lwz r4, 0x5b4(r28)
/* 804DDFBC  38 84 00 24 */	addi r4, r4, 0x24
/* 804DDFC0  4B E6 84 F1 */	bl PSMTXCopy
/* 804DDFC4  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DDFC8  38 80 00 16 */	li r4, 0x16
/* 804DDFCC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DDFD0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DDFD4  3F 65 00 02 */	addis r27, r5, 2
/* 804DDFD8  3B 7B C2 F8 */	addi r27, r27, -15624
/* 804DDFDC  7F 65 DB 78 */	mr r5, r27
/* 804DDFE0  38 C0 00 80 */	li r6, 0x80
/* 804DDFE4  4B B5 E3 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DDFE8  90 7C 05 B8 */	stw r3, 0x5b8(r28)
/* 804DDFEC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 804DDFF0  7F C4 F3 78 */	mr r4, r30
/* 804DDFF4  4B E4 D1 E1 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 804DDFF8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804DDFFC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 804DE000  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DE004  38 7E 00 58 */	addi r3, r30, 0x58
/* 804DE008  80 9C 05 B8 */	lwz r4, 0x5b8(r28)
/* 804DE00C  4B E5 1C B9 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 804DE010  80 7C 05 A0 */	lwz r3, 0x5a0(r28)
/* 804DE014  38 80 00 12 */	li r4, 0x12
/* 804DE018  7F 65 DB 78 */	mr r5, r27
/* 804DE01C  38 C0 00 80 */	li r6, 0x80
/* 804DE020  4B B5 E2 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804DE024  90 7C 05 BC */	stw r3, 0x5bc(r28)
/* 804DE028  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 804DE02C  7F C4 F3 78 */	mr r4, r30
/* 804DE030  4B E4 D8 4D */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 804DE034  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804DE038  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 804DE03C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804DE040  38 7E 00 58 */	addi r3, r30, 0x58
/* 804DE044  80 9C 05 BC */	lwz r4, 0x5bc(r28)
/* 804DE048  4B E5 1E 29 */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 804DE04C  3C 60 D8 7B */	lis r3, 0xD87B /* 0xD87AFDDF@ha */
/* 804DE050  38 03 FD DF */	addi r0, r3, 0xFDDF /* 0xD87AFDDF@l */
/* 804DE054  90 1C 09 2C */	stw r0, 0x92c(r28)
lbl_804DE058:
/* 804DE058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DE05C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DE060  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804DE064  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804DE068  D0 1C 0B 20 */	stfs f0, 0xb20(r28)
/* 804DE06C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804DE070  D0 1C 0B 24 */	stfs f0, 0xb24(r28)
/* 804DE074  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804DE078  D0 1C 0B 28 */	stfs f0, 0xb28(r28)
/* 804DE07C  38 7C 0A D0 */	addi r3, r28, 0xad0
/* 804DE080  38 9C 06 F0 */	addi r4, r28, 0x6f0
/* 804DE084  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804DE088  C0 5C 0A 38 */	lfs f2, 0xa38(r28)
/* 804DE08C  4B B7 2C 11 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 804DE090  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 804DE094  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804DE098  38 BC 05 38 */	addi r5, r28, 0x538
/* 804DE09C  38 C0 00 04 */	li r6, 4
/* 804DE0A0  38 E0 00 01 */	li r7, 1
/* 804DE0A4  4B DE 24 8D */	bl init__10Z2CreatureFP3VecP3VecUcUc
lbl_804DE0A8:
/* 804DE0A8  7F A3 EB 78 */	mr r3, r29
lbl_804DE0AC:
/* 804DE0AC  39 61 00 30 */	addi r11, r1, 0x30
/* 804DE0B0  4B E8 41 6D */	bl _restgpr_26
/* 804DE0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DE0B8  7C 08 03 A6 */	mtlr r0
/* 804DE0BC  38 21 00 30 */	addi r1, r1, 0x30
/* 804DE0C0  4E 80 00 20 */	blr 
