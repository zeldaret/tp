lbl_8045A2F0:
/* 8045A2F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045A2F4  7C 08 02 A6 */	mflr r0
/* 8045A2F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045A2FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8045A300  4B F0 7E C9 */	bl _savegpr_24
/* 8045A304  7C 7B 1B 78 */	mr r27, r3
/* 8045A308  3B 80 00 00 */	li r28, 0
/* 8045A30C  3B 40 00 00 */	li r26, 0
/* 8045A310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045A314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045A318  3F C3 00 02 */	addis r30, r3, 2
/* 8045A31C  3B DE C2 F8 */	addi r30, r30, -15624
lbl_8045A320:
/* 8045A320  38 60 00 00 */	li r3, 0
/* 8045A324  7F 84 E3 78 */	mr r4, r28
/* 8045A328  4B FF F3 31 */	bl getBmdName__Fii
/* 8045A32C  7C 79 1B 78 */	mr r25, r3
/* 8045A330  7F 63 DB 78 */	mr r3, r27
/* 8045A334  4B BD 75 3D */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A338  7F 24 CB 78 */	mr r4, r25
/* 8045A33C  7F C5 F3 78 */	mr r5, r30
/* 8045A340  38 C0 00 80 */	li r6, 0x80
/* 8045A344  4B BE 20 39 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A348  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045A34C  41 82 01 AC */	beq lbl_8045A4F8
/* 8045A350  3C 80 00 08 */	lis r4, 8
/* 8045A354  3C A0 11 00 */	lis r5, 0x1100 /* 0x11001284@ha */
/* 8045A358  38 A5 12 84 */	addi r5, r5, 0x1284 /* 0x11001284@l */
/* 8045A35C  4B BB A8 F9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8045A360  7F BB D2 14 */	add r29, r27, r26
/* 8045A364  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 8045A368  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 8045A36C  28 00 00 00 */	cmplwi r0, 0
/* 8045A370  40 82 00 0C */	bne lbl_8045A37C
/* 8045A374  38 60 00 00 */	li r3, 0
/* 8045A378  48 00 01 9C */	b lbl_8045A514
lbl_8045A37C:
/* 8045A37C  38 00 00 00 */	li r0, 0
/* 8045A380  90 1D 05 B8 */	stw r0, 0x5b8(r29)
/* 8045A384  90 1D 05 C8 */	stw r0, 0x5c8(r29)
/* 8045A388  38 60 00 00 */	li r3, 0
/* 8045A38C  7F 84 E3 78 */	mr r4, r28
/* 8045A390  4B FF F3 35 */	bl getBtkName__Fii
/* 8045A394  7C 79 1B 78 */	mr r25, r3
/* 8045A398  7F 63 DB 78 */	mr r3, r27
/* 8045A39C  4B BD 74 D5 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A3A0  7F 24 CB 78 */	mr r4, r25
/* 8045A3A4  7F C5 F3 78 */	mr r5, r30
/* 8045A3A8  38 C0 00 80 */	li r6, 0x80
/* 8045A3AC  4B BE 1F D1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A3B0  7C 78 1B 79 */	or. r24, r3, r3
/* 8045A3B4  41 82 00 84 */	beq lbl_8045A438
/* 8045A3B8  38 60 00 18 */	li r3, 0x18
/* 8045A3BC  4B E7 48 91 */	bl __nw__FUl
/* 8045A3C0  7C 79 1B 79 */	or. r25, r3, r3
/* 8045A3C4  41 82 00 20 */	beq lbl_8045A3E4
/* 8045A3C8  3C 80 80 46 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8045CDF4@ha */
/* 8045A3CC  38 04 CD F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8045CDF4@l */
/* 8045A3D0  90 19 00 00 */	stw r0, 0(r25)
/* 8045A3D4  38 80 00 00 */	li r4, 0
/* 8045A3D8  4B EC E0 25 */	bl init__12J3DFrameCtrlFs
/* 8045A3DC  38 00 00 00 */	li r0, 0
/* 8045A3E0  90 19 00 14 */	stw r0, 0x14(r25)
lbl_8045A3E4:
/* 8045A3E4  93 3D 05 B8 */	stw r25, 0x5b8(r29)
/* 8045A3E8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8045A3EC  28 03 00 00 */	cmplwi r3, 0
/* 8045A3F0  41 82 00 30 */	beq lbl_8045A420
/* 8045A3F4  38 9F 00 58 */	addi r4, r31, 0x58
/* 8045A3F8  7F 05 C3 78 */	mr r5, r24
/* 8045A3FC  38 C0 00 01 */	li r6, 1
/* 8045A400  38 E0 00 02 */	li r7, 2
/* 8045A404  3D 00 80 46 */	lis r8, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A408  C0 28 CA 0C */	lfs f1, lit_4076@l(r8)  /* 0x8045CA0C@l */
/* 8045A40C  39 00 00 00 */	li r8, 0
/* 8045A410  39 20 FF FF */	li r9, -1
/* 8045A414  4B BB 32 29 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8045A418  2C 03 00 00 */	cmpwi r3, 0
/* 8045A41C  40 82 00 0C */	bne lbl_8045A428
lbl_8045A420:
/* 8045A420  38 60 00 00 */	li r3, 0
/* 8045A424  48 00 00 F0 */	b lbl_8045A514
lbl_8045A428:
/* 8045A428  3C 60 80 46 */	lis r3, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A42C  C0 03 CA 0C */	lfs f0, lit_4076@l(r3)  /* 0x8045CA0C@l */
/* 8045A430  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8045A434  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8045A438:
/* 8045A438  38 60 00 00 */	li r3, 0
/* 8045A43C  7F 84 E3 78 */	mr r4, r28
/* 8045A440  4B FF F2 F5 */	bl getBrkName__Fii
/* 8045A444  7C 79 1B 78 */	mr r25, r3
/* 8045A448  7F 63 DB 78 */	mr r3, r27
/* 8045A44C  4B BD 74 25 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 8045A450  7F 24 CB 78 */	mr r4, r25
/* 8045A454  7F C5 F3 78 */	mr r5, r30
/* 8045A458  38 C0 00 80 */	li r6, 0x80
/* 8045A45C  4B BE 1F 21 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8045A460  7C 78 1B 79 */	or. r24, r3, r3
/* 8045A464  41 82 00 84 */	beq lbl_8045A4E8
/* 8045A468  38 60 00 18 */	li r3, 0x18
/* 8045A46C  4B E7 47 E1 */	bl __nw__FUl
/* 8045A470  7C 79 1B 79 */	or. r25, r3, r3
/* 8045A474  41 82 00 20 */	beq lbl_8045A494
/* 8045A478  3C 80 80 46 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8045CDF4@ha */
/* 8045A47C  38 04 CD F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8045CDF4@l */
/* 8045A480  90 19 00 00 */	stw r0, 0(r25)
/* 8045A484  38 80 00 00 */	li r4, 0
/* 8045A488  4B EC DF 75 */	bl init__12J3DFrameCtrlFs
/* 8045A48C  38 00 00 00 */	li r0, 0
/* 8045A490  90 19 00 14 */	stw r0, 0x14(r25)
lbl_8045A494:
/* 8045A494  93 3D 05 C8 */	stw r25, 0x5c8(r29)
/* 8045A498  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8045A49C  28 03 00 00 */	cmplwi r3, 0
/* 8045A4A0  41 82 00 30 */	beq lbl_8045A4D0
/* 8045A4A4  38 9F 00 58 */	addi r4, r31, 0x58
/* 8045A4A8  7F 05 C3 78 */	mr r5, r24
/* 8045A4AC  38 C0 00 01 */	li r6, 1
/* 8045A4B0  38 E0 00 02 */	li r7, 2
/* 8045A4B4  3D 00 80 46 */	lis r8, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A4B8  C0 28 CA 0C */	lfs f1, lit_4076@l(r8)  /* 0x8045CA0C@l */
/* 8045A4BC  39 00 00 00 */	li r8, 0
/* 8045A4C0  39 20 FF FF */	li r9, -1
/* 8045A4C4  4B BB 32 49 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8045A4C8  2C 03 00 00 */	cmpwi r3, 0
/* 8045A4CC  40 82 00 0C */	bne lbl_8045A4D8
lbl_8045A4D0:
/* 8045A4D0  38 60 00 00 */	li r3, 0
/* 8045A4D4  48 00 00 40 */	b lbl_8045A514
lbl_8045A4D8:
/* 8045A4D8  3C 60 80 46 */	lis r3, lit_4076@ha /* 0x8045CA0C@ha */
/* 8045A4DC  C0 03 CA 0C */	lfs f0, lit_4076@l(r3)  /* 0x8045CA0C@l */
/* 8045A4E0  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 8045A4E4  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_8045A4E8:
/* 8045A4E8  38 00 00 00 */	li r0, 0
/* 8045A4EC  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 8045A4F0  90 1D 05 C0 */	stw r0, 0x5c0(r29)
/* 8045A4F4  90 1D 05 D0 */	stw r0, 0x5d0(r29)
lbl_8045A4F8:
/* 8045A4F8  3B 9C 00 01 */	addi r28, r28, 1
/* 8045A4FC  2C 1C 00 02 */	cmpwi r28, 2
/* 8045A500  3B 5A 00 04 */	addi r26, r26, 4
/* 8045A504  41 80 FE 1C */	blt lbl_8045A320
/* 8045A508  7F 63 DB 78 */	mr r3, r27
/* 8045A50C  48 00 03 31 */	bl doShareTexture__9daBgObj_cFv
/* 8045A510  38 60 00 01 */	li r3, 1
lbl_8045A514:
/* 8045A514  39 61 00 30 */	addi r11, r1, 0x30
/* 8045A518  4B F0 7C FD */	bl _restgpr_24
/* 8045A51C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045A520  7C 08 03 A6 */	mtlr r0
/* 8045A524  38 21 00 30 */	addi r1, r1, 0x30
/* 8045A528  4E 80 00 20 */	blr 
