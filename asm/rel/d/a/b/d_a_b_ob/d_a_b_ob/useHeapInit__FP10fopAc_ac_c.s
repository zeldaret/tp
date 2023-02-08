lbl_80619438:
/* 80619438  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061943C  7C 08 02 A6 */	mflr r0
/* 80619440  90 01 00 44 */	stw r0, 0x44(r1)
/* 80619444  39 61 00 40 */	addi r11, r1, 0x40
/* 80619448  4B D4 8D 81 */	bl _savegpr_24
/* 8061944C  7C 7E 1B 78 */	mr r30, r3
/* 80619450  38 60 00 58 */	li r3, 0x58
/* 80619454  4B CB 57 F9 */	bl __nw__FUl
/* 80619458  7C 78 1B 79 */	or. r24, r3, r3
/* 8061945C  41 82 00 94 */	beq lbl_806194F0
/* 80619460  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619464  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619468  38 80 00 11 */	li r4, 0x11
/* 8061946C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80619470  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80619474  3F 45 00 02 */	addis r26, r5, 2
/* 80619478  3B 5A C2 F8 */	addi r26, r26, -15624
/* 8061947C  7F 45 D3 78 */	mr r5, r26
/* 80619480  38 C0 00 80 */	li r6, 0x80
/* 80619484  4B A2 2E 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80619488  7C 79 1B 78 */	mr r25, r3
/* 8061948C  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619490  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619494  38 80 00 2A */	li r4, 0x2a
/* 80619498  7F 45 D3 78 */	mr r5, r26
/* 8061949C  38 C0 00 80 */	li r6, 0x80
/* 806194A0  4B A2 2E 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806194A4  7C 64 1B 78 */	mr r4, r3
/* 806194A8  38 1E 59 3C */	addi r0, r30, 0x593c
/* 806194AC  90 01 00 08 */	stw r0, 8(r1)
/* 806194B0  38 00 00 00 */	li r0, 0
/* 806194B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806194B8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806194BC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806194C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806194C4  7F 03 C3 78 */	mr r3, r24
/* 806194C8  38 A0 00 00 */	li r5, 0
/* 806194CC  38 C0 00 00 */	li r6, 0
/* 806194D0  7F 27 CB 78 */	mr r7, r25
/* 806194D4  39 00 00 02 */	li r8, 2
/* 806194D8  3D 20 80 62 */	lis r9, lit_3772@ha /* 0x8061AD84@ha */
/* 806194DC  C0 29 AD 84 */	lfs f1, lit_3772@l(r9)  /* 0x8061AD84@l */
/* 806194E0  39 20 00 00 */	li r9, 0
/* 806194E4  39 40 FF FF */	li r10, -1
/* 806194E8  4B 9F 72 E9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806194EC  7C 78 1B 78 */	mr r24, r3
lbl_806194F0:
/* 806194F0  93 1E 05 B4 */	stw r24, 0x5b4(r30)
/* 806194F4  3B 80 00 00 */	li r28, 0
/* 806194F8  3B 20 00 00 */	li r25, 0
/* 806194FC  3B 60 00 00 */	li r27, 0
/* 80619500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80619504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80619508  3F A3 00 02 */	addis r29, r3, 2
/* 8061950C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80619510  3C 60 80 62 */	lis r3, p_bmd@ha /* 0x8061B290@ha */
/* 80619514  3B 43 B2 90 */	addi r26, r3, p_bmd@l /* 0x8061B290@l */
lbl_80619518:
/* 80619518  3F E0 00 08 */	lis r31, 8
/* 8061951C  7C 1A D8 2E */	lwzx r0, r26, r27
/* 80619520  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80619524  40 82 00 08 */	bne lbl_8061952C
/* 80619528  3B E0 00 00 */	li r31, 0
lbl_8061952C:
/* 8061952C  38 60 00 54 */	li r3, 0x54
/* 80619530  4B CB 57 1D */	bl __nw__FUl
/* 80619534  7C 78 1B 79 */	or. r24, r3, r3
/* 80619538  41 82 00 6C */	beq lbl_806195A4
/* 8061953C  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619540  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619544  7C 9A D8 2E */	lwzx r4, r26, r27
/* 80619548  7F A5 EB 78 */	mr r5, r29
/* 8061954C  38 C0 00 80 */	li r6, 0x80
/* 80619550  4B A2 2D 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80619554  7C 64 1B 78 */	mr r4, r3
/* 80619558  38 00 00 01 */	li r0, 1
/* 8061955C  90 01 00 08 */	stw r0, 8(r1)
/* 80619560  38 00 00 00 */	li r0, 0
/* 80619564  90 01 00 0C */	stw r0, 0xc(r1)
/* 80619568  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8061956C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80619570  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80619574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80619578  7F 03 C3 78 */	mr r3, r24
/* 8061957C  38 A0 00 00 */	li r5, 0
/* 80619580  38 C0 00 00 */	li r6, 0
/* 80619584  38 E0 00 00 */	li r7, 0
/* 80619588  39 00 00 02 */	li r8, 2
/* 8061958C  3D 20 80 62 */	lis r9, lit_3772@ha /* 0x8061AD84@ha */
/* 80619590  C0 29 AD 84 */	lfs f1, lit_3772@l(r9)  /* 0x8061AD84@l */
/* 80619594  39 20 00 00 */	li r9, 0
/* 80619598  39 40 FF FF */	li r10, -1
/* 8061959C  4B 9F 66 B1 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806195A0  7C 78 1B 78 */	mr r24, r3
lbl_806195A4:
/* 806195A4  7F FE CA 14 */	add r31, r30, r25
/* 806195A8  93 1F 05 C0 */	stw r24, 0x5c0(r31)
/* 806195AC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806195B0  28 03 00 00 */	cmplwi r3, 0
/* 806195B4  41 82 00 10 */	beq lbl_806195C4
/* 806195B8  80 63 00 04 */	lwz r3, 4(r3)
/* 806195BC  28 03 00 00 */	cmplwi r3, 0
/* 806195C0  40 82 00 0C */	bne lbl_806195CC
lbl_806195C4:
/* 806195C4  38 60 00 00 */	li r3, 0
/* 806195C8  48 00 06 34 */	b lbl_80619BFC
lbl_806195CC:
/* 806195CC  93 C3 00 14 */	stw r30, 0x14(r3)
/* 806195D0  38 A0 00 00 */	li r5, 0
/* 806195D4  48 00 00 58 */	b lbl_8061962C
lbl_806195D8:
/* 806195D8  7C 1A D8 2E */	lwzx r0, r26, r27
/* 806195DC  2C 00 00 2B */	cmpwi r0, 0x2b
/* 806195E0  40 82 00 24 */	bne lbl_80619604
/* 806195E4  80 64 00 04 */	lwz r3, 4(r4)
/* 806195E8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 806195EC  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 806195F0  7C 83 00 2E */	lwzx r4, r3, r0
/* 806195F4  3C 60 80 61 */	lis r3, HeadCallBack__FP8J3DJointi@ha /* 0x8061066C@ha */
/* 806195F8  38 03 06 6C */	addi r0, r3, HeadCallBack__FP8J3DJointi@l /* 0x8061066C@l */
/* 806195FC  90 04 00 04 */	stw r0, 4(r4)
/* 80619600  48 00 00 28 */	b lbl_80619628
lbl_80619604:
/* 80619604  2C 00 00 26 */	cmpwi r0, 0x26
/* 80619608  40 82 00 20 */	bne lbl_80619628
/* 8061960C  80 64 00 04 */	lwz r3, 4(r4)
/* 80619610  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80619614  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80619618  7C 83 00 2E */	lwzx r4, r3, r0
/* 8061961C  3C 60 80 61 */	lis r3, TailCallBack__FP8J3DJointi@ha /* 0x806107B4@ha */
/* 80619620  38 03 07 B4 */	addi r0, r3, TailCallBack__FP8J3DJointi@l /* 0x806107B4@l */
/* 80619624  90 04 00 04 */	stw r0, 4(r4)
lbl_80619628:
/* 80619628  38 A5 00 01 */	addi r5, r5, 1
lbl_8061962C:
/* 8061962C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80619630  80 83 00 04 */	lwz r4, 4(r3)
/* 80619634  80 64 00 04 */	lwz r3, 4(r4)
/* 80619638  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 8061963C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80619640  7C 00 18 40 */	cmplw r0, r3
/* 80619644  41 80 FF 94 */	blt lbl_806195D8
/* 80619648  2C 1C 00 04 */	cmpwi r28, 4
/* 8061964C  41 80 01 28 */	blt lbl_80619774
/* 80619650  2C 1C 00 11 */	cmpwi r28, 0x11
/* 80619654  41 81 01 20 */	bgt lbl_80619774
/* 80619658  38 60 00 54 */	li r3, 0x54
/* 8061965C  4B CB 55 F1 */	bl __nw__FUl
/* 80619660  7C 78 1B 79 */	or. r24, r3, r3
/* 80619664  41 82 00 70 */	beq lbl_806196D4
/* 80619668  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 8061966C  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619670  38 80 00 23 */	li r4, 0x23
/* 80619674  7F A5 EB 78 */	mr r5, r29
/* 80619678  38 C0 00 80 */	li r6, 0x80
/* 8061967C  4B A2 2C 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80619680  7C 64 1B 78 */	mr r4, r3
/* 80619684  38 00 00 01 */	li r0, 1
/* 80619688  90 01 00 08 */	stw r0, 8(r1)
/* 8061968C  38 00 00 00 */	li r0, 0
/* 80619690  90 01 00 0C */	stw r0, 0xc(r1)
/* 80619694  3C 00 00 08 */	lis r0, 8
/* 80619698  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061969C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806196A0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806196A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806196A8  7F 03 C3 78 */	mr r3, r24
/* 806196AC  38 A0 00 00 */	li r5, 0
/* 806196B0  38 C0 00 00 */	li r6, 0
/* 806196B4  38 E0 00 00 */	li r7, 0
/* 806196B8  39 00 00 02 */	li r8, 2
/* 806196BC  3D 20 80 62 */	lis r9, lit_3772@ha /* 0x8061AD84@ha */
/* 806196C0  C0 29 AD 84 */	lfs f1, lit_3772@l(r9)  /* 0x8061AD84@l */
/* 806196C4  39 20 00 00 */	li r9, 0
/* 806196C8  39 40 FF FF */	li r10, -1
/* 806196CC  4B 9F 65 81 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806196D0  7C 78 1B 78 */	mr r24, r3
lbl_806196D4:
/* 806196D4  93 1F 05 C4 */	stw r24, 0x5c4(r31)
/* 806196D8  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806196DC  28 03 00 00 */	cmplwi r3, 0
/* 806196E0  41 82 00 10 */	beq lbl_806196F0
/* 806196E4  80 63 00 04 */	lwz r3, 4(r3)
/* 806196E8  28 03 00 00 */	cmplwi r3, 0
/* 806196EC  40 82 00 0C */	bne lbl_806196F8
lbl_806196F0:
/* 806196F0  38 60 00 00 */	li r3, 0
/* 806196F4  48 00 05 08 */	b lbl_80619BFC
lbl_806196F8:
/* 806196F8  93 C3 00 14 */	stw r30, 0x14(r3)
/* 806196FC  38 C0 00 00 */	li r6, 0
/* 80619700  3C 60 80 61 */	lis r3, FinACallBack__FP8J3DJointi@ha /* 0x806109AC@ha */
/* 80619704  38 83 09 AC */	addi r4, r3, FinACallBack__FP8J3DJointi@l /* 0x806109AC@l */
/* 80619708  48 00 00 1C */	b lbl_80619724
lbl_8061970C:
/* 8061970C  80 65 00 04 */	lwz r3, 4(r5)
/* 80619710  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80619714  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80619718  7C 63 00 2E */	lwzx r3, r3, r0
/* 8061971C  90 83 00 04 */	stw r4, 4(r3)
/* 80619720  38 C6 00 01 */	addi r6, r6, 1
lbl_80619724:
/* 80619724  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80619728  80 A3 00 04 */	lwz r5, 4(r3)
/* 8061972C  80 65 00 04 */	lwz r3, 4(r5)
/* 80619730  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80619734  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80619738  7C 00 18 40 */	cmplw r0, r3
/* 8061973C  41 80 FF D0 */	blt lbl_8061970C
/* 80619740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80619744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80619748  38 80 00 1C */	li r4, 0x1c
/* 8061974C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80619750  7C 05 07 74 */	extsb r5, r0
/* 80619754  4B A1 BC 0D */	bl isSwitch__10dSv_info_cCFii
/* 80619758  2C 03 00 00 */	cmpwi r3, 0
/* 8061975C  41 82 00 10 */	beq lbl_8061976C
/* 80619760  38 00 00 01 */	li r0, 1
/* 80619764  98 1F 05 FE */	stb r0, 0x5fe(r31)
/* 80619768  48 00 00 0C */	b lbl_80619774
lbl_8061976C:
/* 8061976C  38 00 F0 60 */	li r0, -4000
/* 80619770  B0 1F 05 EC */	sth r0, 0x5ec(r31)
lbl_80619774:
/* 80619774  2C 1C 00 07 */	cmpwi r28, 7
/* 80619778  41 80 00 F4 */	blt lbl_8061986C
/* 8061977C  2C 1C 00 0F */	cmpwi r28, 0xf
/* 80619780  41 81 00 EC */	bgt lbl_8061986C
/* 80619784  38 60 00 54 */	li r3, 0x54
/* 80619788  4B CB 54 C5 */	bl __nw__FUl
/* 8061978C  7C 78 1B 79 */	or. r24, r3, r3
/* 80619790  41 82 00 70 */	beq lbl_80619800
/* 80619794  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619798  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 8061979C  38 80 00 23 */	li r4, 0x23
/* 806197A0  7F A5 EB 78 */	mr r5, r29
/* 806197A4  38 C0 00 80 */	li r6, 0x80
/* 806197A8  4B A2 2B 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806197AC  7C 64 1B 78 */	mr r4, r3
/* 806197B0  38 00 00 01 */	li r0, 1
/* 806197B4  90 01 00 08 */	stw r0, 8(r1)
/* 806197B8  38 00 00 00 */	li r0, 0
/* 806197BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806197C0  3C 00 00 08 */	lis r0, 8
/* 806197C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806197C8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806197CC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806197D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806197D4  7F 03 C3 78 */	mr r3, r24
/* 806197D8  38 A0 00 00 */	li r5, 0
/* 806197DC  38 C0 00 00 */	li r6, 0
/* 806197E0  38 E0 00 00 */	li r7, 0
/* 806197E4  39 00 00 02 */	li r8, 2
/* 806197E8  3D 20 80 62 */	lis r9, lit_3772@ha /* 0x8061AD84@ha */
/* 806197EC  C0 29 AD 84 */	lfs f1, lit_3772@l(r9)  /* 0x8061AD84@l */
/* 806197F0  39 20 00 00 */	li r9, 0
/* 806197F4  39 40 FF FF */	li r10, -1
/* 806197F8  4B 9F 64 55 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806197FC  7C 78 1B 78 */	mr r24, r3
lbl_80619800:
/* 80619800  93 1F 05 C8 */	stw r24, 0x5c8(r31)
/* 80619804  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80619808  28 03 00 00 */	cmplwi r3, 0
/* 8061980C  41 82 00 10 */	beq lbl_8061981C
/* 80619810  80 63 00 04 */	lwz r3, 4(r3)
/* 80619814  28 03 00 00 */	cmplwi r3, 0
/* 80619818  40 82 00 0C */	bne lbl_80619824
lbl_8061981C:
/* 8061981C  38 60 00 00 */	li r3, 0
/* 80619820  48 00 03 DC */	b lbl_80619BFC
lbl_80619824:
/* 80619824  93 C3 00 14 */	stw r30, 0x14(r3)
/* 80619828  38 C0 00 00 */	li r6, 0
/* 8061982C  3C 60 80 61 */	lis r3, FinACallBack__FP8J3DJointi@ha /* 0x806109AC@ha */
/* 80619830  38 83 09 AC */	addi r4, r3, FinACallBack__FP8J3DJointi@l /* 0x806109AC@l */
/* 80619834  48 00 00 1C */	b lbl_80619850
lbl_80619838:
/* 80619838  80 65 00 04 */	lwz r3, 4(r5)
/* 8061983C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80619840  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80619844  7C 63 00 2E */	lwzx r3, r3, r0
/* 80619848  90 83 00 04 */	stw r4, 4(r3)
/* 8061984C  38 C6 00 01 */	addi r6, r6, 1
lbl_80619850:
/* 80619850  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 80619854  80 A3 00 04 */	lwz r5, 4(r3)
/* 80619858  80 65 00 04 */	lwz r3, 4(r5)
/* 8061985C  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80619860  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80619864  7C 00 18 40 */	cmplw r0, r3
/* 80619868  41 80 FF D0 */	blt lbl_80619838
lbl_8061986C:
/* 8061986C  2C 1C 00 08 */	cmpwi r28, 8
/* 80619870  40 82 00 EC */	bne lbl_8061995C
/* 80619874  38 60 00 54 */	li r3, 0x54
/* 80619878  4B CB 53 D5 */	bl __nw__FUl
/* 8061987C  7C 78 1B 79 */	or. r24, r3, r3
/* 80619880  41 82 00 70 */	beq lbl_806198F0
/* 80619884  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619888  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 8061988C  38 80 00 24 */	li r4, 0x24
/* 80619890  7F A5 EB 78 */	mr r5, r29
/* 80619894  38 C0 00 80 */	li r6, 0x80
/* 80619898  4B A2 2A 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061989C  7C 64 1B 78 */	mr r4, r3
/* 806198A0  38 00 00 01 */	li r0, 1
/* 806198A4  90 01 00 08 */	stw r0, 8(r1)
/* 806198A8  38 00 00 00 */	li r0, 0
/* 806198AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806198B0  3C 00 00 08 */	lis r0, 8
/* 806198B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806198B8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806198BC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806198C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806198C4  7F 03 C3 78 */	mr r3, r24
/* 806198C8  38 A0 00 00 */	li r5, 0
/* 806198CC  38 C0 00 00 */	li r6, 0
/* 806198D0  38 E0 00 00 */	li r7, 0
/* 806198D4  39 00 00 02 */	li r8, 2
/* 806198D8  3D 20 80 62 */	lis r9, lit_3772@ha /* 0x8061AD84@ha */
/* 806198DC  C0 29 AD 84 */	lfs f1, lit_3772@l(r9)  /* 0x8061AD84@l */
/* 806198E0  39 20 00 00 */	li r9, 0
/* 806198E4  39 40 FF FF */	li r10, -1
/* 806198E8  4B 9F 63 65 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806198EC  7C 78 1B 78 */	mr r24, r3
lbl_806198F0:
/* 806198F0  93 1F 05 CC */	stw r24, 0x5cc(r31)
/* 806198F4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 806198F8  28 03 00 00 */	cmplwi r3, 0
/* 806198FC  41 82 00 10 */	beq lbl_8061990C
/* 80619900  80 63 00 04 */	lwz r3, 4(r3)
/* 80619904  28 03 00 00 */	cmplwi r3, 0
/* 80619908  40 82 00 0C */	bne lbl_80619914
lbl_8061990C:
/* 8061990C  38 60 00 00 */	li r3, 0
/* 80619910  48 00 02 EC */	b lbl_80619BFC
lbl_80619914:
/* 80619914  93 C3 00 14 */	stw r30, 0x14(r3)
/* 80619918  38 C0 00 00 */	li r6, 0
/* 8061991C  3C 60 80 61 */	lis r3, FinBCallBack__FP8J3DJointi@ha /* 0x80610B3C@ha */
/* 80619920  38 83 0B 3C */	addi r4, r3, FinBCallBack__FP8J3DJointi@l /* 0x80610B3C@l */
/* 80619924  48 00 00 1C */	b lbl_80619940
lbl_80619928:
/* 80619928  80 65 00 04 */	lwz r3, 4(r5)
/* 8061992C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80619930  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80619934  7C 63 00 2E */	lwzx r3, r3, r0
/* 80619938  90 83 00 04 */	stw r4, 4(r3)
/* 8061993C  38 C6 00 01 */	addi r6, r6, 1
lbl_80619940:
/* 80619940  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80619944  80 A3 00 04 */	lwz r5, 4(r3)
/* 80619948  80 65 00 04 */	lwz r3, 4(r5)
/* 8061994C  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80619950  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80619954  7C 00 18 40 */	cmplw r0, r3
/* 80619958  41 80 FF D0 */	blt lbl_80619928
lbl_8061995C:
/* 8061995C  2C 1C 00 11 */	cmpwi r28, 0x11
/* 80619960  40 82 00 EC */	bne lbl_80619A4C
/* 80619964  38 60 00 54 */	li r3, 0x54
/* 80619968  4B CB 52 E5 */	bl __nw__FUl
/* 8061996C  7C 78 1B 79 */	or. r24, r3, r3
/* 80619970  41 82 00 70 */	beq lbl_806199E0
/* 80619974  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619978  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 8061997C  38 80 00 25 */	li r4, 0x25
/* 80619980  7F A5 EB 78 */	mr r5, r29
/* 80619984  38 C0 00 80 */	li r6, 0x80
/* 80619988  4B A2 29 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061998C  7C 64 1B 78 */	mr r4, r3
/* 80619990  38 00 00 01 */	li r0, 1
/* 80619994  90 01 00 08 */	stw r0, 8(r1)
/* 80619998  38 00 00 00 */	li r0, 0
/* 8061999C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806199A0  3C 00 00 08 */	lis r0, 8
/* 806199A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806199A8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806199AC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806199B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806199B4  7F 03 C3 78 */	mr r3, r24
/* 806199B8  38 A0 00 00 */	li r5, 0
/* 806199BC  38 C0 00 00 */	li r6, 0
/* 806199C0  38 E0 00 00 */	li r7, 0
/* 806199C4  39 00 00 02 */	li r8, 2
/* 806199C8  3D 20 80 62 */	lis r9, lit_3772@ha /* 0x8061AD84@ha */
/* 806199CC  C0 29 AD 84 */	lfs f1, lit_3772@l(r9)  /* 0x8061AD84@l */
/* 806199D0  39 20 00 00 */	li r9, 0
/* 806199D4  39 40 FF FF */	li r10, -1
/* 806199D8  4B 9F 62 75 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806199DC  7C 78 1B 78 */	mr r24, r3
lbl_806199E0:
/* 806199E0  93 1F 05 D0 */	stw r24, 0x5d0(r31)
/* 806199E4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806199E8  28 03 00 00 */	cmplwi r3, 0
/* 806199EC  41 82 00 10 */	beq lbl_806199FC
/* 806199F0  80 63 00 04 */	lwz r3, 4(r3)
/* 806199F4  28 03 00 00 */	cmplwi r3, 0
/* 806199F8  40 82 00 0C */	bne lbl_80619A04
lbl_806199FC:
/* 806199FC  38 60 00 00 */	li r3, 0
/* 80619A00  48 00 01 FC */	b lbl_80619BFC
lbl_80619A04:
/* 80619A04  93 C3 00 14 */	stw r30, 0x14(r3)
/* 80619A08  38 C0 00 00 */	li r6, 0
/* 80619A0C  3C 60 80 61 */	lis r3, FinCCallBack__FP8J3DJointi@ha /* 0x80610C24@ha */
/* 80619A10  38 83 0C 24 */	addi r4, r3, FinCCallBack__FP8J3DJointi@l /* 0x80610C24@l */
/* 80619A14  48 00 00 1C */	b lbl_80619A30
lbl_80619A18:
/* 80619A18  80 65 00 04 */	lwz r3, 4(r5)
/* 80619A1C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80619A20  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80619A24  7C 63 00 2E */	lwzx r3, r3, r0
/* 80619A28  90 83 00 04 */	stw r4, 4(r3)
/* 80619A2C  38 C6 00 01 */	addi r6, r6, 1
lbl_80619A30:
/* 80619A30  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80619A34  80 A3 00 04 */	lwz r5, 4(r3)
/* 80619A38  80 65 00 04 */	lwz r3, 4(r5)
/* 80619A3C  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80619A40  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80619A44  7C 00 18 40 */	cmplw r0, r3
/* 80619A48  41 80 FF D0 */	blt lbl_80619A18
lbl_80619A4C:
/* 80619A4C  3B 9C 00 01 */	addi r28, r28, 1
/* 80619A50  2C 1C 00 13 */	cmpwi r28, 0x13
/* 80619A54  3B 39 01 78 */	addi r25, r25, 0x178
/* 80619A58  3B 7B 00 04 */	addi r27, r27, 4
/* 80619A5C  41 80 FA BC */	blt lbl_80619518
/* 80619A60  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619A64  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619A68  38 80 00 21 */	li r4, 0x21
/* 80619A6C  7F A5 EB 78 */	mr r5, r29
/* 80619A70  38 C0 00 80 */	li r6, 0x80
/* 80619A74  4B A2 28 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80619A78  7C 79 1B 78 */	mr r25, r3
/* 80619A7C  3C 80 00 08 */	lis r4, 8
/* 80619A80  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80619A84  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80619A88  4B 9F B1 CD */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80619A8C  90 7E 47 24 */	stw r3, 0x4724(r30)
/* 80619A90  80 7E 47 24 */	lwz r3, 0x4724(r30)
/* 80619A94  28 03 00 00 */	cmplwi r3, 0
/* 80619A98  40 82 00 0C */	bne lbl_80619AA4
/* 80619A9C  38 60 00 00 */	li r3, 0
/* 80619AA0  48 00 01 5C */	b lbl_80619BFC
lbl_80619AA4:
/* 80619AA4  93 C3 00 14 */	stw r30, 0x14(r3)
/* 80619AA8  38 A0 00 00 */	li r5, 0
/* 80619AAC  3C 60 80 61 */	lis r3, sui_nodeCallBack__FP8J3DJointi@ha /* 0x80610D24@ha */
/* 80619AB0  38 83 0D 24 */	addi r4, r3, sui_nodeCallBack__FP8J3DJointi@l /* 0x80610D24@l */
/* 80619AB4  48 00 00 18 */	b lbl_80619ACC
lbl_80619AB8:
/* 80619AB8  80 79 00 28 */	lwz r3, 0x28(r25)
/* 80619ABC  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80619AC0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80619AC4  90 83 00 04 */	stw r4, 4(r3)
/* 80619AC8  38 A5 00 01 */	addi r5, r5, 1
lbl_80619ACC:
/* 80619ACC  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 80619AD0  A0 19 00 2C */	lhz r0, 0x2c(r25)
/* 80619AD4  7C 03 00 40 */	cmplw r3, r0
/* 80619AD8  41 80 FF E0 */	blt lbl_80619AB8
/* 80619ADC  38 60 00 18 */	li r3, 0x18
/* 80619AE0  4B CB 51 6D */	bl __nw__FUl
/* 80619AE4  7C 78 1B 79 */	or. r24, r3, r3
/* 80619AE8  41 82 00 20 */	beq lbl_80619B08
/* 80619AEC  3C 80 80 62 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8061B4A0@ha */
/* 80619AF0  38 04 B4 A0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8061B4A0@l */
/* 80619AF4  90 18 00 00 */	stw r0, 0(r24)
/* 80619AF8  38 80 00 00 */	li r4, 0
/* 80619AFC  4B D0 E9 01 */	bl init__12J3DFrameCtrlFs
/* 80619B00  38 00 00 00 */	li r0, 0
/* 80619B04  90 18 00 14 */	stw r0, 0x14(r24)
lbl_80619B08:
/* 80619B08  93 1E 47 2C */	stw r24, 0x472c(r30)
/* 80619B0C  80 1E 47 2C */	lwz r0, 0x472c(r30)
/* 80619B10  28 00 00 00 */	cmplwi r0, 0
/* 80619B14  40 82 00 0C */	bne lbl_80619B20
/* 80619B18  38 60 00 00 */	li r3, 0
/* 80619B1C  48 00 00 E0 */	b lbl_80619BFC
lbl_80619B20:
/* 80619B20  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619B24  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619B28  38 80 00 2E */	li r4, 0x2e
/* 80619B2C  7F A5 EB 78 */	mr r5, r29
/* 80619B30  38 C0 00 80 */	li r6, 0x80
/* 80619B34  4B A2 27 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80619B38  7C 65 1B 78 */	mr r5, r3
/* 80619B3C  80 7E 47 2C */	lwz r3, 0x472c(r30)
/* 80619B40  38 99 00 58 */	addi r4, r25, 0x58
/* 80619B44  38 C0 00 01 */	li r6, 1
/* 80619B48  38 E0 00 02 */	li r7, 2
/* 80619B4C  3D 00 80 62 */	lis r8, lit_3772@ha /* 0x8061AD84@ha */
/* 80619B50  C0 28 AD 84 */	lfs f1, lit_3772@l(r8)  /* 0x8061AD84@l */
/* 80619B54  39 00 00 00 */	li r8, 0
/* 80619B58  39 20 FF FF */	li r9, -1
/* 80619B5C  4B 9F 3B B1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80619B60  2C 03 00 00 */	cmpwi r3, 0
/* 80619B64  40 82 00 0C */	bne lbl_80619B70
/* 80619B68  38 60 00 00 */	li r3, 0
/* 80619B6C  48 00 00 90 */	b lbl_80619BFC
lbl_80619B70:
/* 80619B70  38 60 00 18 */	li r3, 0x18
/* 80619B74  4B CB 50 D9 */	bl __nw__FUl
/* 80619B78  7C 78 1B 79 */	or. r24, r3, r3
/* 80619B7C  41 82 00 20 */	beq lbl_80619B9C
/* 80619B80  3C 80 80 62 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8061B4A0@ha */
/* 80619B84  38 04 B4 A0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8061B4A0@l */
/* 80619B88  90 18 00 00 */	stw r0, 0(r24)
/* 80619B8C  38 80 00 00 */	li r4, 0
/* 80619B90  4B D0 E8 6D */	bl init__12J3DFrameCtrlFs
/* 80619B94  38 00 00 00 */	li r0, 0
/* 80619B98  90 18 00 14 */	stw r0, 0x14(r24)
lbl_80619B9C:
/* 80619B9C  93 1E 47 28 */	stw r24, 0x4728(r30)
/* 80619BA0  80 1E 47 28 */	lwz r0, 0x4728(r30)
/* 80619BA4  28 00 00 00 */	cmplwi r0, 0
/* 80619BA8  40 82 00 0C */	bne lbl_80619BB4
/* 80619BAC  38 60 00 00 */	li r3, 0
/* 80619BB0  48 00 00 4C */	b lbl_80619BFC
lbl_80619BB4:
/* 80619BB4  3C 60 80 62 */	lis r3, d_a_b_ob__stringBase0@ha /* 0x8061B09C@ha */
/* 80619BB8  38 63 B0 9C */	addi r3, r3, d_a_b_ob__stringBase0@l /* 0x8061B09C@l */
/* 80619BBC  38 80 00 35 */	li r4, 0x35
/* 80619BC0  7F A5 EB 78 */	mr r5, r29
/* 80619BC4  38 C0 00 80 */	li r6, 0x80
/* 80619BC8  4B A2 27 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80619BCC  7C 65 1B 78 */	mr r5, r3
/* 80619BD0  80 7E 47 28 */	lwz r3, 0x4728(r30)
/* 80619BD4  38 99 00 58 */	addi r4, r25, 0x58
/* 80619BD8  38 C0 00 01 */	li r6, 1
/* 80619BDC  38 E0 00 02 */	li r7, 2
/* 80619BE0  3D 00 80 62 */	lis r8, lit_3772@ha /* 0x8061AD84@ha */
/* 80619BE4  C0 28 AD 84 */	lfs f1, lit_3772@l(r8)  /* 0x8061AD84@l */
/* 80619BE8  39 00 00 00 */	li r8, 0
/* 80619BEC  39 20 FF FF */	li r9, -1
/* 80619BF0  4B 9F 3A 4D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80619BF4  30 03 FF FF */	addic r0, r3, -1
/* 80619BF8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80619BFC:
/* 80619BFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80619C00  4B D4 86 15 */	bl _restgpr_24
/* 80619C04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80619C08  7C 08 03 A6 */	mtlr r0
/* 80619C0C  38 21 00 40 */	addi r1, r1, 0x40
/* 80619C10  4E 80 00 20 */	blr 
