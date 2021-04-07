lbl_80B2A1B4:
/* 80B2A1B4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B2A1B8  7C 08 02 A6 */	mflr r0
/* 80B2A1BC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B2A1C0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B2A1C4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B2A1C8  39 61 00 90 */	addi r11, r1, 0x90
/* 80B2A1CC  4B 83 80 0D */	bl _savegpr_28
/* 80B2A1D0  7C 7D 1B 78 */	mr r29, r3
/* 80B2A1D4  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B2A1D8  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B2A1DC  AB DD 04 B6 */	lha r30, 0x4b6(r29)
/* 80B2A1E0  A0 1D 0E 22 */	lhz r0, 0xe22(r29)
/* 80B2A1E4  2C 00 00 02 */	cmpwi r0, 2
/* 80B2A1E8  41 82 03 94 */	beq lbl_80B2A57C
/* 80B2A1EC  40 80 09 50 */	bge lbl_80B2AB3C
/* 80B2A1F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A1F4  40 80 00 0C */	bge lbl_80B2A200
/* 80B2A1F8  48 00 09 44 */	b lbl_80B2AB3C
/* 80B2A1FC  48 00 09 40 */	b lbl_80B2AB3C
lbl_80B2A200:
/* 80B2A200  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B2A204  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A208  40 82 03 74 */	bne lbl_80B2A57C
/* 80B2A20C  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B2A210  2C 00 00 02 */	cmpwi r0, 2
/* 80B2A214  41 82 03 08 */	beq lbl_80B2A51C
/* 80B2A218  40 80 00 10 */	bge lbl_80B2A228
/* 80B2A21C  2C 00 00 01 */	cmpwi r0, 1
/* 80B2A220  40 80 00 14 */	bge lbl_80B2A234
/* 80B2A224  48 00 02 F8 */	b lbl_80B2A51C
lbl_80B2A228:
/* 80B2A228  2C 00 00 04 */	cmpwi r0, 4
/* 80B2A22C  40 80 02 F0 */	bge lbl_80B2A51C
/* 80B2A230  48 00 02 18 */	b lbl_80B2A448
lbl_80B2A234:
/* 80B2A234  88 1D 10 0B */	lbz r0, 0x100b(r29)
/* 80B2A238  28 00 00 00 */	cmplwi r0, 0
/* 80B2A23C  41 82 00 60 */	beq lbl_80B2A29C
/* 80B2A240  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A244  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2A248  41 82 00 24 */	beq lbl_80B2A26C
/* 80B2A24C  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A250  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A254  4B 61 B6 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A258  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A25C  38 00 00 11 */	li r0, 0x11
/* 80B2A260  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A264  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A268  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A26C:
/* 80B2A26C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A270  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A274  41 82 03 00 */	beq lbl_80B2A574
/* 80B2A278  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A27C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A280  4B 61 B6 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A284  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A288  38 00 00 00 */	li r0, 0
/* 80B2A28C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A290  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A294  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A298  48 00 02 DC */	b lbl_80B2A574
lbl_80B2A29C:
/* 80B2A29C  88 1D 10 0F */	lbz r0, 0x100f(r29)
/* 80B2A2A0  28 00 00 00 */	cmplwi r0, 0
/* 80B2A2A4  41 82 00 DC */	beq lbl_80B2A380
/* 80B2A2A8  38 60 00 1E */	li r3, 0x1e
/* 80B2A2AC  4B 62 28 01 */	bl daNpcT_chkEvtBit__FUl
/* 80B2A2B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A2B4  40 82 00 70 */	bne lbl_80B2A324
/* 80B2A2B8  38 60 00 92 */	li r3, 0x92
/* 80B2A2BC  4B 62 27 F1 */	bl daNpcT_chkEvtBit__FUl
/* 80B2A2C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A2C4  40 82 00 60 */	bne lbl_80B2A324
/* 80B2A2C8  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A2CC  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2A2D0  41 82 00 24 */	beq lbl_80B2A2F4
/* 80B2A2D4  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A2D8  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A2DC  4B 61 B5 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A2E0  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A2E4  38 00 00 11 */	li r0, 0x11
/* 80B2A2E8  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A2EC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A2F0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A2F4:
/* 80B2A2F4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A2F8  2C 00 00 08 */	cmpwi r0, 8
/* 80B2A2FC  41 82 02 78 */	beq lbl_80B2A574
/* 80B2A300  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A304  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A308  4B 61 B5 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A30C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A310  38 00 00 08 */	li r0, 8
/* 80B2A314  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A318  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A31C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A320  48 00 02 54 */	b lbl_80B2A574
lbl_80B2A324:
/* 80B2A324  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A328  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2A32C  41 82 00 24 */	beq lbl_80B2A350
/* 80B2A330  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A334  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A338  4B 61 B5 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A33C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A340  38 00 00 11 */	li r0, 0x11
/* 80B2A344  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A348  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A34C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A350:
/* 80B2A350  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A354  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A358  41 82 02 1C */	beq lbl_80B2A574
/* 80B2A35C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A360  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A364  4B 61 B5 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A368  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A36C  38 00 00 00 */	li r0, 0
/* 80B2A370  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A374  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A378  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A37C  48 00 01 F8 */	b lbl_80B2A574
lbl_80B2A380:
/* 80B2A380  38 60 00 24 */	li r3, 0x24
/* 80B2A384  4B 62 27 29 */	bl daNpcT_chkEvtBit__FUl
/* 80B2A388  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A38C  41 82 00 60 */	beq lbl_80B2A3EC
/* 80B2A390  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A394  2C 00 00 05 */	cmpwi r0, 5
/* 80B2A398  41 82 00 24 */	beq lbl_80B2A3BC
/* 80B2A39C  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A3A0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A3A4  4B 61 B4 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A3A8  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A3AC  38 00 00 05 */	li r0, 5
/* 80B2A3B0  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A3B4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A3B8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A3BC:
/* 80B2A3BC  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A3C0  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B2A3C4  41 82 01 B0 */	beq lbl_80B2A574
/* 80B2A3C8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A3CC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A3D0  4B 61 B4 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A3D4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A3D8  38 00 00 0C */	li r0, 0xc
/* 80B2A3DC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A3E0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A3E4  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A3E8  48 00 01 8C */	b lbl_80B2A574
lbl_80B2A3EC:
/* 80B2A3EC  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A3F0  2C 00 00 06 */	cmpwi r0, 6
/* 80B2A3F4  41 82 00 24 */	beq lbl_80B2A418
/* 80B2A3F8  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A3FC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A400  4B 61 B4 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A404  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A408  38 00 00 06 */	li r0, 6
/* 80B2A40C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A410  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A414  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A418:
/* 80B2A418  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A41C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B2A420  41 82 01 54 */	beq lbl_80B2A574
/* 80B2A424  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A428  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A42C  4B 61 B4 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A430  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A434  38 00 00 0D */	li r0, 0xd
/* 80B2A438  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A43C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A440  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A444  48 00 01 30 */	b lbl_80B2A574
lbl_80B2A448:
/* 80B2A448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2A44C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2A450  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B2A454  38 80 13 08 */	li r4, 0x1308
/* 80B2A458  4B 50 A5 65 */	bl isEventBit__11dSv_event_cCFUs
/* 80B2A45C  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A460  41 82 00 60 */	beq lbl_80B2A4C0
/* 80B2A464  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A468  2C 00 00 0C */	cmpwi r0, 0xc
/* 80B2A46C  41 82 00 24 */	beq lbl_80B2A490
/* 80B2A470  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A474  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A478  4B 61 B4 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A47C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A480  38 00 00 0C */	li r0, 0xc
/* 80B2A484  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A488  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A48C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A490:
/* 80B2A490  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A494  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B2A498  41 82 00 DC */	beq lbl_80B2A574
/* 80B2A49C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A4A0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A4A4  4B 61 B3 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A4A8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A4AC  38 00 00 16 */	li r0, 0x16
/* 80B2A4B0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A4B4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A4B8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A4BC  48 00 00 B8 */	b lbl_80B2A574
lbl_80B2A4C0:
/* 80B2A4C0  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A4C4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B2A4C8  41 82 00 24 */	beq lbl_80B2A4EC
/* 80B2A4CC  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A4D0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A4D4  4B 61 B3 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A4D8  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A4DC  38 00 00 0A */	li r0, 0xa
/* 80B2A4E0  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A4E4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A4E8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A4EC:
/* 80B2A4EC  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A4F0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B2A4F4  41 82 00 80 */	beq lbl_80B2A574
/* 80B2A4F8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A4FC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A500  4B 61 B3 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A504  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A508  38 00 00 10 */	li r0, 0x10
/* 80B2A50C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A510  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A514  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B2A518  48 00 00 5C */	b lbl_80B2A574
lbl_80B2A51C:
/* 80B2A51C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A520  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B2A524  41 82 00 24 */	beq lbl_80B2A548
/* 80B2A528  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A52C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A530  4B 61 B3 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A534  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A538  38 00 00 11 */	li r0, 0x11
/* 80B2A53C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A540  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A544  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A548:
/* 80B2A548  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A54C  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A550  41 82 00 24 */	beq lbl_80B2A574
/* 80B2A554  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A558  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A55C  4B 61 B3 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A560  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A564  38 00 00 00 */	li r0, 0
/* 80B2A568  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A56C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A570  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B2A574:
/* 80B2A574  38 00 00 02 */	li r0, 2
/* 80B2A578  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_80B2A57C:
/* 80B2A57C  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B2A580  2C 00 00 02 */	cmpwi r0, 2
/* 80B2A584  41 82 02 94 */	beq lbl_80B2A818
/* 80B2A588  40 80 00 10 */	bge lbl_80B2A598
/* 80B2A58C  2C 00 00 01 */	cmpwi r0, 1
/* 80B2A590  40 80 00 14 */	bge lbl_80B2A5A4
/* 80B2A594  48 00 02 84 */	b lbl_80B2A818
lbl_80B2A598:
/* 80B2A598  2C 00 00 04 */	cmpwi r0, 4
/* 80B2A59C  40 80 02 7C */	bge lbl_80B2A818
/* 80B2A5A0  48 00 01 88 */	b lbl_80B2A728
lbl_80B2A5A4:
/* 80B2A5A4  38 60 00 07 */	li r3, 7
/* 80B2A5A8  4B 62 25 C5 */	bl daNpcT_chkTmpBit__FUl
/* 80B2A5AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A5B0  41 82 00 78 */	beq lbl_80B2A628
/* 80B2A5B4  7F A3 EB 78 */	mr r3, r29
/* 80B2A5B8  4B FF E2 B1 */	bl chkPlayerCarryBasket__11daNpc_Uri_cFv
/* 80B2A5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A5C0  41 82 02 58 */	beq lbl_80B2A818
/* 80B2A5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2A5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2A5CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B2A5D0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B2A5D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B2A5D8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B2A5DC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B2A5E0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B2A5E4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B2A5E8  7F A3 EB 78 */	mr r3, r29
/* 80B2A5EC  38 81 00 50 */	addi r4, r1, 0x50
/* 80B2A5F0  4B FF E3 21 */	bl getTutorialCond__11daNpc_Uri_cF4cXyz
/* 80B2A5F4  2C 03 00 09 */	cmpwi r3, 9
/* 80B2A5F8  41 82 00 08 */	beq lbl_80B2A600
/* 80B2A5FC  48 00 00 1C */	b lbl_80B2A618
lbl_80B2A600:
/* 80B2A600  38 00 00 00 */	li r0, 0
/* 80B2A604  98 1D 10 09 */	stb r0, 0x1009(r29)
/* 80B2A608  98 1D 10 0A */	stb r0, 0x100a(r29)
/* 80B2A60C  38 00 00 06 */	li r0, 6
/* 80B2A610  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80B2A614  48 00 02 04 */	b lbl_80B2A818
lbl_80B2A618:
/* 80B2A618  38 00 00 00 */	li r0, 0
/* 80B2A61C  98 1D 10 09 */	stb r0, 0x1009(r29)
/* 80B2A620  98 1D 10 0A */	stb r0, 0x100a(r29)
/* 80B2A624  48 00 01 F4 */	b lbl_80B2A818
lbl_80B2A628:
/* 80B2A628  38 60 00 1E */	li r3, 0x1e
/* 80B2A62C  4B 62 24 81 */	bl daNpcT_chkEvtBit__FUl
/* 80B2A630  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A634  40 82 01 E4 */	bne lbl_80B2A818
/* 80B2A638  38 60 00 92 */	li r3, 0x92
/* 80B2A63C  4B 62 24 71 */	bl daNpcT_chkEvtBit__FUl
/* 80B2A640  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A644  40 82 01 D4 */	bne lbl_80B2A818
/* 80B2A648  38 61 00 44 */	addi r3, r1, 0x44
/* 80B2A64C  7F A4 EB 78 */	mr r4, r29
/* 80B2A650  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2A654  3B 85 61 C0 */	addi r28, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2A658  80 BC 5D AC */	lwz r5, 0x5dac(r28)
/* 80B2A65C  4B 62 0D 91 */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 80B2A660  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B2A664  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B2A668  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B2A66C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B2A670  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B2A674  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B2A678  8B DD 05 45 */	lbz r30, 0x545(r29)
/* 80B2A67C  7F C3 F3 78 */	mr r3, r30
/* 80B2A680  48 00 27 6D */	bl getDistTable__12dAttention_cFi
/* 80B2A684  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80B2A688  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A68C  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B2A690  7F C3 F3 78 */	mr r3, r30
/* 80B2A694  48 00 27 59 */	bl getDistTable__12dAttention_cFi
/* 80B2A698  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80B2A69C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A6A0  EC 60 00 72 */	fmuls f3, f0, f1
/* 80B2A6A4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B2A6A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B2A6AC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B2A6B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B2A6B4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B2A6B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B2A6BC  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80B2A6C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B2A6C4  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80B2A6C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B2A6CC  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80B2A6D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B2A6D4  7F A3 EB 78 */	mr r3, r29
/* 80B2A6D8  38 81 00 38 */	addi r4, r1, 0x38
/* 80B2A6DC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B2A6E0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B2A6E4  FC 40 F8 90 */	fmr f2, f31
/* 80B2A6E8  38 C0 00 00 */	li r6, 0
/* 80B2A6EC  4B 62 06 05 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80B2A6F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A6F4  41 82 00 2C */	beq lbl_80B2A720
/* 80B2A6F8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80B2A6FC  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80B2A700  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B2A704  41 82 00 1C */	beq lbl_80B2A720
/* 80B2A708  7F A3 EB 78 */	mr r3, r29
/* 80B2A70C  4B FF E1 5D */	bl chkPlayerCarryBasket__11daNpc_Uri_cFv
/* 80B2A710  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A714  41 82 00 0C */	beq lbl_80B2A720
/* 80B2A718  38 00 00 05 */	li r0, 5
/* 80B2A71C  B0 1D 0E 30 */	sth r0, 0xe30(r29)
lbl_80B2A720:
/* 80B2A720  AB DD 0F E6 */	lha r30, 0xfe6(r29)
/* 80B2A724  48 00 00 F4 */	b lbl_80B2A818
lbl_80B2A728:
/* 80B2A728  38 60 00 CD */	li r3, 0xcd
/* 80B2A72C  4B 62 23 81 */	bl daNpcT_chkEvtBit__FUl
/* 80B2A730  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A734  41 82 00 D4 */	beq lbl_80B2A808
/* 80B2A738  38 61 00 20 */	addi r3, r1, 0x20
/* 80B2A73C  7F A4 EB 78 */	mr r4, r29
/* 80B2A740  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2A744  3B 85 61 C0 */	addi r28, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2A748  80 BC 5D AC */	lwz r5, 0x5dac(r28)
/* 80B2A74C  4B 62 0C A1 */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 80B2A750  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80B2A754  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80B2A758  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80B2A75C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80B2A760  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B2A764  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B2A768  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80B2A76C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B2A770  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B2A774  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80B2A778  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2A77C  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80B2A780  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B2A784  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80B2A788  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2A78C  7F A3 EB 78 */	mr r3, r29
/* 80B2A790  38 81 00 14 */	addi r4, r1, 0x14
/* 80B2A794  38 A1 00 08 */	addi r5, r1, 8
/* 80B2A798  38 DF 00 00 */	addi r6, r31, 0
/* 80B2A79C  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 80B2A7A0  C0 46 00 58 */	lfs f2, 0x58(r6)
/* 80B2A7A4  C0 66 00 5C */	lfs f3, 0x5c(r6)
/* 80B2A7A8  A8 DD 0D 7A */	lha r6, 0xd7a(r29)
/* 80B2A7AC  4B 62 05 45 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80B2A7B0  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A7B4  41 82 00 64 */	beq lbl_80B2A818
/* 80B2A7B8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80B2A7BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B2A7C0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B2A7C4  7D 89 03 A6 */	mtctr r12
/* 80B2A7C8  4E 80 04 21 */	bctrl 
/* 80B2A7CC  28 03 00 00 */	cmplwi r3, 0
/* 80B2A7D0  40 82 00 48 */	bne lbl_80B2A818
/* 80B2A7D4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B2A7D8  A0 04 00 FA */	lhz r0, 0xfa(r4)
/* 80B2A7DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B2A7E0  41 82 00 38 */	beq lbl_80B2A818
/* 80B2A7E4  7F A3 EB 78 */	mr r3, r29
/* 80B2A7E8  C0 3D 0D F8 */	lfs f1, 0xdf8(r29)
/* 80B2A7EC  A8 BD 04 B6 */	lha r5, 0x4b6(r29)
/* 80B2A7F0  4B 62 03 E1 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B2A7F4  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A7F8  41 82 00 20 */	beq lbl_80B2A818
/* 80B2A7FC  38 00 00 09 */	li r0, 9
/* 80B2A800  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80B2A804  48 00 00 14 */	b lbl_80B2A818
lbl_80B2A808:
/* 80B2A808  38 00 00 08 */	li r0, 8
/* 80B2A80C  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80B2A810  38 00 00 01 */	li r0, 1
/* 80B2A814  98 1D 0E 33 */	stb r0, 0xe33(r29)
lbl_80B2A818:
/* 80B2A818  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B2A81C  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A820  40 82 03 1C */	bne lbl_80B2AB3C
/* 80B2A824  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B2A828  28 00 00 01 */	cmplwi r0, 1
/* 80B2A82C  40 82 00 1C */	bne lbl_80B2A848
/* 80B2A830  88 1D 10 0B */	lbz r0, 0x100b(r29)
/* 80B2A834  28 00 00 00 */	cmplwi r0, 0
/* 80B2A838  41 82 00 10 */	beq lbl_80B2A848
/* 80B2A83C  38 00 00 01 */	li r0, 1
/* 80B2A840  98 1D 0E 32 */	stb r0, 0xe32(r29)
/* 80B2A844  98 1D 0E 33 */	stb r0, 0xe33(r29)
lbl_80B2A848:
/* 80B2A848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2A84C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2A850  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B2A854  38 80 13 08 */	li r4, 0x1308
/* 80B2A858  4B 50 A1 65 */	bl isEventBit__11dSv_event_cCFUs
/* 80B2A85C  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A860  41 82 00 54 */	beq lbl_80B2A8B4
/* 80B2A864  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80B2A868  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2A86C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2A870  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B2A874  4B 61 AE 6D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B2A878  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B2A87C  2C 00 00 01 */	cmpwi r0, 1
/* 80B2A880  41 82 00 28 */	beq lbl_80B2A8A8
/* 80B2A884  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B2A888  4B 61 AE 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B2A88C  38 00 00 00 */	li r0, 0
/* 80B2A890  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B2A894  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2A898  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B2A89C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2A8A0  38 00 00 01 */	li r0, 1
/* 80B2A8A4  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B2A8A8:
/* 80B2A8A8  38 00 00 00 */	li r0, 0
/* 80B2A8AC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2A8B0  48 00 02 8C */	b lbl_80B2AB3C
lbl_80B2A8B4:
/* 80B2A8B4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A8B8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B2A8BC  40 82 00 5C */	bne lbl_80B2A918
/* 80B2A8C0  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2A8C4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80B2A8C8  41 82 00 24 */	beq lbl_80B2A8EC
/* 80B2A8CC  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B2A8D0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B2A8D4  4B 61 AF C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A8D8  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2A8DC  38 00 00 0A */	li r0, 0xa
/* 80B2A8E0  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B2A8E4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A8E8  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B2A8EC:
/* 80B2A8EC  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B2A8F0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B2A8F4  41 82 00 24 */	beq lbl_80B2A918
/* 80B2A8F8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B2A8FC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2A900  4B 61 AF 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2A904  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B2A908  38 00 00 10 */	li r0, 0x10
/* 80B2A90C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B2A910  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B2A914  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B2A918:
/* 80B2A918  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80B2A91C  4B 61 AD ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B2A920  28 03 00 00 */	cmplwi r3, 0
/* 80B2A924  41 82 01 28 */	beq lbl_80B2AA4C
/* 80B2A928  88 1D 0A 89 */	lbz r0, 0xa89(r29)
/* 80B2A92C  28 00 00 00 */	cmplwi r0, 0
/* 80B2A930  40 82 01 1C */	bne lbl_80B2AA4C
/* 80B2A934  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B2A938  2C 00 00 01 */	cmpwi r0, 1
/* 80B2A93C  41 82 00 28 */	beq lbl_80B2A964
/* 80B2A940  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B2A944  4B 61 AD B9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B2A948  38 00 00 00 */	li r0, 0
/* 80B2A94C  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B2A950  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2A954  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B2A958  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2A95C  38 00 00 01 */	li r0, 1
/* 80B2A960  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B2A964:
/* 80B2A964  38 00 00 00 */	li r0, 0
/* 80B2A968  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2A96C  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B2A970  28 00 00 01 */	cmplwi r0, 1
/* 80B2A974  40 82 00 54 */	bne lbl_80B2A9C8
/* 80B2A978  88 1D 10 0B */	lbz r0, 0x100b(r29)
/* 80B2A97C  28 00 00 00 */	cmplwi r0, 0
/* 80B2A980  40 82 00 48 */	bne lbl_80B2A9C8
/* 80B2A984  88 1D 10 0F */	lbz r0, 0x100f(r29)
/* 80B2A988  28 00 00 00 */	cmplwi r0, 0
/* 80B2A98C  40 82 00 3C */	bne lbl_80B2A9C8
/* 80B2A990  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B2A994  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A998  41 82 00 24 */	beq lbl_80B2A9BC
/* 80B2A99C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B2A9A0  4B 61 AD 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B2A9A4  38 00 00 00 */	li r0, 0
/* 80B2A9A8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B2A9AC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2A9B0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B2A9B4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2A9B8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B2A9BC:
/* 80B2A9BC  38 00 00 00 */	li r0, 0
/* 80B2A9C0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2A9C4  48 00 00 5C */	b lbl_80B2AA20
lbl_80B2A9C8:
/* 80B2A9C8  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80B2A9CC  4B 61 AD 3D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B2A9D0  7C 64 1B 78 */	mr r4, r3
/* 80B2A9D4  7F A3 EB 78 */	mr r3, r29
/* 80B2A9D8  C0 3D 0D F8 */	lfs f1, 0xdf8(r29)
/* 80B2A9DC  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 80B2A9E0  4B 62 01 F1 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B2A9E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B2A9E8  40 82 00 38 */	bne lbl_80B2AA20
/* 80B2A9EC  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B2A9F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B2A9F4  41 82 00 24 */	beq lbl_80B2AA18
/* 80B2A9F8  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B2A9FC  4B 61 AD 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B2AA00  38 00 00 00 */	li r0, 0
/* 80B2AA04  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B2AA08  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2AA0C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B2AA10  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2AA14  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B2AA18:
/* 80B2AA18  38 00 00 00 */	li r0, 0
/* 80B2AA1C  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_80B2AA20:
/* 80B2AA20  7F A3 EB 78 */	mr r3, r29
/* 80B2AA24  4B 62 09 15 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B2AA28  2C 03 00 00 */	cmpwi r3, 0
/* 80B2AA2C  40 82 01 10 */	bne lbl_80B2AB3C
/* 80B2AA30  7F C3 07 34 */	extsh r3, r30
/* 80B2AA34  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80B2AA38  7C 03 00 00 */	cmpw r3, r0
/* 80B2AA3C  40 82 01 00 */	bne lbl_80B2AB3C
/* 80B2AA40  38 00 00 01 */	li r0, 1
/* 80B2AA44  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80B2AA48  48 00 00 F4 */	b lbl_80B2AB3C
lbl_80B2AA4C:
/* 80B2AA4C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B2AA50  2C 00 00 00 */	cmpwi r0, 0
/* 80B2AA54  41 82 00 24 */	beq lbl_80B2AA78
/* 80B2AA58  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B2AA5C  4B 61 AC A1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B2AA60  38 00 00 00 */	li r0, 0
/* 80B2AA64  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B2AA68  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2AA6C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B2AA70  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2AA74  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B2AA78:
/* 80B2AA78  38 00 00 00 */	li r0, 0
/* 80B2AA7C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2AA80  7F C3 07 34 */	extsh r3, r30
/* 80B2AA84  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80B2AA88  7C 03 00 00 */	cmpw r3, r0
/* 80B2AA8C  41 82 00 9C */	beq lbl_80B2AB28
/* 80B2AA90  88 1D 0E 34 */	lbz r0, 0xe34(r29)
/* 80B2AA94  28 00 00 00 */	cmplwi r0, 0
/* 80B2AA98  41 82 00 70 */	beq lbl_80B2AB08
/* 80B2AA9C  88 1D 10 08 */	lbz r0, 0x1008(r29)
/* 80B2AAA0  28 00 00 00 */	cmplwi r0, 0
/* 80B2AAA4  41 82 00 34 */	beq lbl_80B2AAD8
/* 80B2AAA8  7F A3 EB 78 */	mr r3, r29
/* 80B2AAAC  7F C4 F3 78 */	mr r4, r30
/* 80B2AAB0  38 A0 00 11 */	li r5, 0x11
/* 80B2AAB4  38 C0 00 18 */	li r6, 0x18
/* 80B2AAB8  38 E0 00 0F */	li r7, 0xf
/* 80B2AABC  39 00 00 00 */	li r8, 0
/* 80B2AAC0  4B 62 0B 89 */	bl step__8daNpcT_cFsiiii
/* 80B2AAC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B2AAC8  41 82 00 54 */	beq lbl_80B2AB1C
/* 80B2AACC  38 00 00 01 */	li r0, 1
/* 80B2AAD0  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80B2AAD4  48 00 00 48 */	b lbl_80B2AB1C
lbl_80B2AAD8:
/* 80B2AAD8  7F A3 EB 78 */	mr r3, r29
/* 80B2AADC  7F C4 F3 78 */	mr r4, r30
/* 80B2AAE0  38 A0 FF FF */	li r5, -1
/* 80B2AAE4  38 C0 FF FF */	li r6, -1
/* 80B2AAE8  38 E0 00 0F */	li r7, 0xf
/* 80B2AAEC  39 00 00 00 */	li r8, 0
/* 80B2AAF0  4B 62 0B 59 */	bl step__8daNpcT_cFsiiii
/* 80B2AAF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B2AAF8  41 82 00 24 */	beq lbl_80B2AB1C
/* 80B2AAFC  38 00 00 01 */	li r0, 1
/* 80B2AB00  B0 1D 0E 22 */	sth r0, 0xe22(r29)
/* 80B2AB04  48 00 00 18 */	b lbl_80B2AB1C
lbl_80B2AB08:
/* 80B2AB08  7F A3 EB 78 */	mr r3, r29
/* 80B2AB0C  7F C4 F3 78 */	mr r4, r30
/* 80B2AB10  4B 61 FF 09 */	bl setAngle__8daNpcT_cFs
/* 80B2AB14  38 00 00 01 */	li r0, 1
/* 80B2AB18  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_80B2AB1C:
/* 80B2AB1C  38 00 00 00 */	li r0, 0
/* 80B2AB20  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80B2AB24  48 00 00 18 */	b lbl_80B2AB3C
lbl_80B2AB28:
/* 80B2AB28  88 1D 0A 89 */	lbz r0, 0xa89(r29)
/* 80B2AB2C  28 00 00 00 */	cmplwi r0, 0
/* 80B2AB30  40 82 00 0C */	bne lbl_80B2AB3C
/* 80B2AB34  7F A3 EB 78 */	mr r3, r29
/* 80B2AB38  4B 62 08 01 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B2AB3C:
/* 80B2AB3C  38 60 00 01 */	li r3, 1
/* 80B2AB40  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B2AB44  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B2AB48  39 61 00 90 */	addi r11, r1, 0x90
/* 80B2AB4C  4B 83 76 D9 */	bl _restgpr_28
/* 80B2AB50  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B2AB54  7C 08 03 A6 */	mtlr r0
/* 80B2AB58  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B2AB5C  4E 80 00 20 */	blr 
