lbl_80246FF0:
/* 80246FF0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80246FF4  7C 08 02 A6 */	mflr r0
/* 80246FF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80246FFC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80247000  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80247004  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80247008  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8024700C  39 61 00 30 */	addi r11, r1, 0x30
/* 80247010  48 11 B1 C5 */	bl _savegpr_27
/* 80247014  7C 7F 1B 78 */	mr r31, r3
/* 80247018  7C 9D 23 78 */	mr r29, r4
/* 8024701C  7C BC 2B 78 */	mr r28, r5
/* 80247020  7C DB 33 78 */	mr r27, r6
/* 80247024  4B FF 50 B9 */	bl __ct__14dMsgScrnBase_cFv
/* 80247028  3C 80 80 3C */	lis r4, __vt__14dMsgScrnTalk_c@ha /* 0x803C13C8@ha */
/* 8024702C  38 04 13 C8 */	addi r0, r4, __vt__14dMsgScrnTalk_c@l /* 0x803C13C8@l */
/* 80247030  90 1F 00 00 */	stw r0, 0(r31)
/* 80247034  28 1B 00 00 */	cmplwi r27, 0
/* 80247038  41 82 00 0C */	beq lbl_80247044
/* 8024703C  93 7F 00 E4 */	stw r27, 0xe4(r31)
/* 80247040  48 00 00 10 */	b lbl_80247050
lbl_80247044:
/* 80247044  38 60 00 07 */	li r3, 7
/* 80247048  4B DE 73 89 */	bl dComIfGp_getSubHeap2D__Fi
/* 8024704C  90 7F 00 E4 */	stw r3, 0xe4(r31)
lbl_80247050:
/* 80247050  7F E3 FB 78 */	mr r3, r31
/* 80247054  4B FF 51 19 */	bl init__14dMsgScrnBase_cFv
/* 80247058  38 60 01 18 */	li r3, 0x118
/* 8024705C  48 08 7B F1 */	bl __nw__FUl
/* 80247060  7C 60 1B 79 */	or. r0, r3, r3
/* 80247064  41 82 00 0C */	beq lbl_80247070
/* 80247068  48 0B 14 31 */	bl __ct__9J2DScreenFv
/* 8024706C  7C 60 1B 78 */	mr r0, r3
lbl_80247070:
/* 80247070  90 1F 00 04 */	stw r0, 4(r31)
/* 80247074  80 7F 00 04 */	lwz r3, 4(r31)
/* 80247078  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_talk__stringBase0@ha /* 0x80399BB0@ha */
/* 8024707C  38 84 9B B0 */	addi r4, r4, msg_scrn_d_msg_scrn_talk__stringBase0@l /* 0x80399BB0@l */
/* 80247080  3C A0 00 02 */	lis r5, 2
/* 80247084  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80247088  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024708C  80 C6 5C 70 */	lwz r6, 0x5c70(r6)
/* 80247090  48 0B 15 B9 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 80247094  80 7F 00 04 */	lwz r3, 4(r31)
/* 80247098  48 00 E0 51 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8024709C  38 60 01 18 */	li r3, 0x118
/* 802470A0  48 08 7B AD */	bl __nw__FUl
/* 802470A4  7C 60 1B 79 */	or. r0, r3, r3
/* 802470A8  41 82 00 0C */	beq lbl_802470B4
/* 802470AC  48 0B 13 ED */	bl __ct__9J2DScreenFv
/* 802470B0  7C 60 1B 78 */	mr r0, r3
lbl_802470B4:
/* 802470B4  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 802470B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802470BC  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802470C0  80 9E 5D BC */	lwz r4, 0x5dbc(r30)
/* 802470C4  88 04 01 9A */	lbz r0, 0x19a(r4)
/* 802470C8  28 00 00 08 */	cmplwi r0, 8
/* 802470CC  40 82 00 24 */	bne lbl_802470F0
/* 802470D0  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802470D4  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_talk__stringBase0@ha /* 0x80399BB0@ha */
/* 802470D8  38 84 9B B0 */	addi r4, r4, msg_scrn_d_msg_scrn_talk__stringBase0@l /* 0x80399BB0@l */
/* 802470DC  38 84 00 1D */	addi r4, r4, 0x1d
/* 802470E0  3C A0 00 02 */	lis r5, 2
/* 802470E4  80 DE 5C E4 */	lwz r6, 0x5ce4(r30)
/* 802470E8  48 0B 15 61 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 802470EC  48 00 00 20 */	b lbl_8024710C
lbl_802470F0:
/* 802470F0  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 802470F4  3C 80 80 3A */	lis r4, msg_scrn_d_msg_scrn_talk__stringBase0@ha /* 0x80399BB0@ha */
/* 802470F8  38 84 9B B0 */	addi r4, r4, msg_scrn_d_msg_scrn_talk__stringBase0@l /* 0x80399BB0@l */
/* 802470FC  38 84 00 42 */	addi r4, r4, 0x42
/* 80247100  3C A0 00 02 */	lis r5, 2
/* 80247104  80 DE 5C E4 */	lwz r6, 0x5ce4(r30)
/* 80247108  48 0B 15 41 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
lbl_8024710C:
/* 8024710C  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80247110  48 00 DF D9 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 80247114  38 60 00 24 */	li r3, 0x24
/* 80247118  48 08 7B 35 */	bl __nw__FUl
/* 8024711C  7C 60 1B 79 */	or. r0, r3, r3
/* 80247120  41 82 00 0C */	beq lbl_8024712C
/* 80247124  4B FF 48 91 */	bl __ct__15dMsgScrnArrow_cFv
/* 80247128  7C 60 1B 78 */	mr r0, r3
lbl_8024712C:
/* 8024712C  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80247130  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80247134  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80247138  88 04 5E 8F */	lbz r0, 0x5e8f(r4)
/* 8024713C  28 00 00 03 */	cmplwi r0, 3
/* 80247140  41 82 00 24 */	beq lbl_80247164
/* 80247144  38 60 01 18 */	li r3, 0x118
/* 80247148  48 08 7B 05 */	bl __nw__FUl
/* 8024714C  7C 60 1B 79 */	or. r0, r3, r3
/* 80247150  41 82 00 0C */	beq lbl_8024715C
/* 80247154  4B FF 1F 61 */	bl __ct__17dMsgScrn3Select_cFv
/* 80247158  7C 60 1B 78 */	mr r0, r3
lbl_8024715C:
/* 8024715C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 80247160  48 00 00 0C */	b lbl_8024716C
lbl_80247164:
/* 80247164  38 00 00 00 */	li r0, 0
/* 80247168  90 1F 00 CC */	stw r0, 0xcc(r31)
lbl_8024716C:
/* 8024716C  80 9E 5D BC */	lwz r4, 0x5dbc(r30)
/* 80247170  88 04 01 9A */	lbz r0, 0x19a(r4)
/* 80247174  2C 00 00 0D */	cmpwi r0, 0xd
/* 80247178  41 82 00 28 */	beq lbl_802471A0
/* 8024717C  40 80 00 10 */	bge lbl_8024718C
/* 80247180  2C 00 00 08 */	cmpwi r0, 8
/* 80247184  41 82 00 14 */	beq lbl_80247198
/* 80247188  48 00 00 28 */	b lbl_802471B0
lbl_8024718C:
/* 8024718C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80247190  40 80 00 20 */	bge lbl_802471B0
/* 80247194  48 00 00 14 */	b lbl_802471A8
lbl_80247198:
/* 80247198  3B 60 00 02 */	li r27, 2
/* 8024719C  48 00 00 18 */	b lbl_802471B4
lbl_802471A0:
/* 802471A0  3B 60 00 01 */	li r27, 1
/* 802471A4  48 00 00 10 */	b lbl_802471B4
lbl_802471A8:
/* 802471A8  3B 60 00 04 */	li r27, 4
/* 802471AC  48 00 00 08 */	b lbl_802471B4
lbl_802471B0:
/* 802471B0  3B 60 00 00 */	li r27, 0
lbl_802471B4:
/* 802471B4  38 60 00 24 */	li r3, 0x24
/* 802471B8  48 08 7A 95 */	bl __nw__FUl
/* 802471BC  7C 60 1B 79 */	or. r0, r3, r3
/* 802471C0  41 82 00 14 */	beq lbl_802471D4
/* 802471C4  7F 64 DB 78 */	mr r4, r27
/* 802471C8  7F 85 E3 78 */	mr r5, r28
/* 802471CC  4B FF E7 69 */	bl __ct__15dMsgScrnLight_cFUcUc
/* 802471D0  7C 60 1B 78 */	mr r0, r3
lbl_802471D4:
/* 802471D4  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 802471D8  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 802471DC  38 80 10 6A */	li r4, 0x106a
/* 802471E0  38 A0 00 20 */	li r5, 0x20
/* 802471E4  48 08 72 F1 */	bl alloc__7JKRHeapFUli
/* 802471E8  7C 7C 1B 78 */	mr r28, r3
/* 802471EC  38 80 00 00 */	li r4, 0
/* 802471F0  38 A0 10 6A */	li r5, 0x106a
/* 802471F4  4B DB C2 65 */	bl memset
/* 802471F8  93 9F 00 50 */	stw r28, 0x50(r31)
/* 802471FC  38 80 00 00 */	li r4, 0
/* 80247200  38 A0 00 00 */	li r5, 0
/* 80247204  3C C0 80 43 */	lis r6, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80247208  38 E6 02 8C */	addi r7, r6, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 8024720C  C0 22 B3 00 */	lfs f1, lit_4086(r2)
/* 80247210  38 00 00 96 */	li r0, 0x96
/* 80247214  7C 09 03 A6 */	mtctr r0
lbl_80247218:
/* 80247218  C0 07 02 D0 */	lfs f0, 0x2d0(r7)
/* 8024721C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80247220  38 05 00 F8 */	addi r0, r5, 0xf8
/* 80247224  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80247228  A8 C7 02 F0 */	lha r6, 0x2f0(r7)
/* 8024722C  38 04 03 5C */	addi r0, r4, 0x35c
/* 80247230  7C DF 03 2E */	sthx r6, r31, r0
/* 80247234  38 84 00 02 */	addi r4, r4, 2
/* 80247238  38 A5 00 04 */	addi r5, r5, 4
/* 8024723C  42 00 FF DC */	bdnz lbl_80247218
/* 80247240  80 7F 00 04 */	lwz r3, 4(r31)
/* 80247244  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 80247248  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 8024724C  38 A0 00 6E */	li r5, 0x6e
/* 80247250  81 83 00 00 */	lwz r12, 0(r3)
/* 80247254  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80247258  7D 89 03 A6 */	mtctr r12
/* 8024725C  4E 80 04 21 */	bctrl 
/* 80247260  48 0A FE A1 */	bl getBounds__7J2DPaneFv
/* 80247264  C0 03 00 00 */	lfs f0, 0(r3)
/* 80247268  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 8024726C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80247270  3C 80 5F 61 */	lis r4, 0x5F61 /* 0x5F616C6C@ha */
/* 80247274  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x5F616C6C@l */
/* 80247278  38 A0 00 6E */	li r5, 0x6e
/* 8024727C  81 83 00 00 */	lwz r12, 0(r3)
/* 80247280  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80247284  7D 89 03 A6 */	mtctr r12
/* 80247288  4E 80 04 21 */	bctrl 
/* 8024728C  48 0A FE 75 */	bl getBounds__7J2DPaneFv
/* 80247290  C0 03 00 04 */	lfs f0, 4(r3)
/* 80247294  D0 1F 00 EC */	stfs f0, 0xec(r31)
/* 80247298  C0 02 B3 04 */	lfs f0, lit_4087(r2)
/* 8024729C  D0 1F 00 F0 */	stfs f0, 0xf0(r31)
/* 802472A0  38 80 00 00 */	li r4, 0
/* 802472A4  38 A0 00 00 */	li r5, 0
/* 802472A8  3C C0 80 43 */	lis r6, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802472AC  38 E6 02 8C */	addi r7, r6, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802472B0  38 00 00 03 */	li r0, 3
/* 802472B4  7C 09 03 A6 */	mtctr r0
lbl_802472B8:
/* 802472B8  7C C7 2A 14 */	add r6, r7, r5
/* 802472BC  C0 06 02 4C */	lfs f0, 0x24c(r6)
/* 802472C0  38 04 03 50 */	addi r0, r4, 0x350
/* 802472C4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802472C8  38 84 00 04 */	addi r4, r4, 4
/* 802472CC  38 A5 00 28 */	addi r5, r5, 0x28
/* 802472D0  42 00 FF E8 */	bdnz lbl_802472B8
/* 802472D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802472D8  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 802472DC  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 802472E0  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 802472E4  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 802472E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802472EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802472F0  7D 89 03 A6 */	mtctr r12
/* 802472F4  4E 80 04 21 */	bctrl 
/* 802472F8  48 0A FE 09 */	bl getBounds__7J2DPaneFv
/* 802472FC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80247300  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80247304  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80247308  C0 04 02 CC */	lfs f0, 0x2cc(r4)
/* 8024730C  EF C0 08 2A */	fadds f30, f0, f1
/* 80247310  80 7F 00 04 */	lwz r3, 4(r31)
/* 80247314  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 80247318  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 8024731C  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 80247320  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 80247324  81 83 00 00 */	lwz r12, 0(r3)
/* 80247328  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024732C  7D 89 03 A6 */	mtctr r12
/* 80247330  4E 80 04 21 */	bctrl 
/* 80247334  48 0A FD CD */	bl getBounds__7J2DPaneFv
/* 80247338  C0 23 00 00 */	lfs f1, 0(r3)
/* 8024733C  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80247340  38 84 02 8C */	addi r4, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80247344  C0 04 02 C8 */	lfs f0, 0x2c8(r4)
/* 80247348  EF E0 08 2A */	fadds f31, f0, f1
/* 8024734C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80247350  3C 80 6E 75 */	lis r4, 0x6E75 /* 0x6E756C6C@ha */
/* 80247354  38 C4 6C 6C */	addi r6, r4, 0x6C6C /* 0x6E756C6C@l */
/* 80247358  3C 80 00 6D */	lis r4, 0x006D /* 0x006D675F@ha */
/* 8024735C  38 A4 67 5F */	addi r5, r4, 0x675F /* 0x006D675F@l */
/* 80247360  81 83 00 00 */	lwz r12, 0(r3)
/* 80247364  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80247368  7D 89 03 A6 */	mtctr r12
/* 8024736C  4E 80 04 21 */	bctrl 
/* 80247370  FC 20 F8 90 */	fmr f1, f31
/* 80247374  FC 40 F0 90 */	fmr f2, f30
/* 80247378  81 83 00 00 */	lwz r12, 0(r3)
/* 8024737C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80247380  7D 89 03 A6 */	mtctr r12
/* 80247384  4E 80 04 21 */	bctrl 
/* 80247388  38 60 00 6C */	li r3, 0x6c
/* 8024738C  48 08 78 C1 */	bl __nw__FUl
/* 80247390  7C 60 1B 79 */	or. r0, r3, r3
/* 80247394  41 82 00 28 */	beq lbl_802473BC
/* 80247398  80 9F 00 04 */	lwz r4, 4(r31)
/* 8024739C  3C A0 79 61 */	lis r5, 0x7961 /* 0x79615F6E@ha */
/* 802473A0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x79615F6E@l */
/* 802473A4  3C A0 73 65 */	lis r5, 0x7365 /* 0x7365745F@ha */
/* 802473A8  38 A5 74 5F */	addi r5, r5, 0x745F /* 0x7365745F@l */
/* 802473AC  38 E0 00 00 */	li r7, 0
/* 802473B0  39 00 00 00 */	li r8, 0
/* 802473B4  48 00 C5 D1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802473B8  7C 60 1B 78 */	mr r0, r3
lbl_802473BC:
/* 802473BC  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 802473C0  38 60 00 6C */	li r3, 0x6c
/* 802473C4  48 08 78 89 */	bl __nw__FUl
/* 802473C8  7C 60 1B 79 */	or. r0, r3, r3
/* 802473CC  41 82 00 28 */	beq lbl_802473F4
/* 802473D0  80 9F 00 04 */	lwz r4, 4(r31)
/* 802473D4  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 802473D8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 802473DC  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 802473E0  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 802473E4  38 E0 00 00 */	li r7, 0
/* 802473E8  39 00 00 00 */	li r8, 0
/* 802473EC  48 00 C5 99 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802473F0  7C 60 1B 78 */	mr r0, r3
lbl_802473F4:
/* 802473F4  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 802473F8  38 60 00 6C */	li r3, 0x6c
/* 802473FC  48 08 78 51 */	bl __nw__FUl
/* 80247400  7C 60 1B 79 */	or. r0, r3, r3
/* 80247404  41 82 00 28 */	beq lbl_8024742C
/* 80247408  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 8024740C  3C A0 6E 75 */	lis r5, 0x6E75 /* 0x6E756C6C@ha */
/* 80247410  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x6E756C6C@l */
/* 80247414  3C A0 00 6D */	lis r5, 0x006D /* 0x006D675F@ha */
/* 80247418  38 A5 67 5F */	addi r5, r5, 0x675F /* 0x006D675F@l */
/* 8024741C  38 E0 00 00 */	li r7, 0
/* 80247420  39 00 00 00 */	li r8, 0
/* 80247424  48 00 C5 61 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80247428  7C 60 1B 78 */	mr r0, r3
lbl_8024742C:
/* 8024742C  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80247430  38 60 00 04 */	li r3, 4
/* 80247434  64 63 00 04 */	oris r3, r3, 4
/* 80247438  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8024743C  38 60 00 05 */	li r3, 5
/* 80247440  64 63 00 05 */	oris r3, r3, 5
/* 80247444  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80247448  38 60 00 06 */	li r3, 6
/* 8024744C  64 63 00 06 */	oris r3, r3, 6
/* 80247450  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80247454  38 60 00 07 */	li r3, 7
/* 80247458  64 63 00 07 */	oris r3, r3, 7
/* 8024745C  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80247460  C0 02 B3 08 */	lfs f0, lit_4088(r2)
/* 80247464  D0 1F 00 F4 */	stfs f0, 0xf4(r31)
/* 80247468  7F E3 FB 78 */	mr r3, r31
/* 8024746C  7F A4 EB 78 */	mr r4, r29
/* 80247470  81 9F 00 00 */	lwz r12, 0(r31)
/* 80247474  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80247478  7D 89 03 A6 */	mtctr r12
/* 8024747C  4E 80 04 21 */	bctrl 
/* 80247480  38 60 00 6C */	li r3, 0x6c
/* 80247484  48 08 77 C9 */	bl __nw__FUl
/* 80247488  7C 60 1B 79 */	or. r0, r3, r3
/* 8024748C  41 82 00 24 */	beq lbl_802474B0
/* 80247490  80 9F 00 04 */	lwz r4, 4(r31)
/* 80247494  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 80247498  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 8024749C  38 A0 00 6E */	li r5, 0x6e
/* 802474A0  38 E0 00 03 */	li r7, 3
/* 802474A4  39 00 00 00 */	li r8, 0
/* 802474A8  48 00 C4 DD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802474AC  7C 60 1B 78 */	mr r0, r3
lbl_802474B0:
/* 802474B0  90 1F 00 08 */	stw r0, 8(r31)
/* 802474B4  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802474B8  38 A4 02 8C */	addi r5, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802474BC  C0 25 00 9C */	lfs f1, 0x9c(r5)
/* 802474C0  80 9F 00 08 */	lwz r4, 8(r31)
/* 802474C4  80 64 00 04 */	lwz r3, 4(r4)
/* 802474C8  C0 05 00 70 */	lfs f0, 0x70(r5)
/* 802474CC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802474D0  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 802474D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802474D8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802474DC  7D 89 03 A6 */	mtctr r12
/* 802474E0  4E 80 04 21 */	bctrl 
/* 802474E4  38 60 00 6C */	li r3, 0x6c
/* 802474E8  48 08 77 65 */	bl __nw__FUl
/* 802474EC  7C 60 1B 79 */	or. r0, r3, r3
/* 802474F0  41 82 00 28 */	beq lbl_80247518
/* 802474F4  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802474F8  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 802474FC  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 80247500  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 80247504  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 80247508  38 E0 00 00 */	li r7, 0
/* 8024750C  39 00 00 00 */	li r8, 0
/* 80247510  48 00 C4 75 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80247514  7C 60 1B 78 */	mr r0, r3
lbl_80247518:
/* 80247518  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8024751C  38 60 00 6C */	li r3, 0x6c
/* 80247520  48 08 77 2D */	bl __nw__FUl
/* 80247524  7C 60 1B 79 */	or. r0, r3, r3
/* 80247528  41 82 00 24 */	beq lbl_8024754C
/* 8024752C  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 80247530  3C A0 74 34 */	lis r5, 0x7434 /* 0x74345F73@ha */
/* 80247534  38 C5 5F 73 */	addi r6, r5, 0x5F73 /* 0x74345F73@l */
/* 80247538  38 A0 00 00 */	li r5, 0
/* 8024753C  38 E0 00 00 */	li r7, 0
/* 80247540  39 00 00 00 */	li r8, 0
/* 80247544  48 00 C4 41 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80247548  7C 60 1B 78 */	mr r0, r3
lbl_8024754C:
/* 8024754C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80247550  80 9E 5D BC */	lwz r4, 0x5dbc(r30)
/* 80247554  88 04 01 9A */	lbz r0, 0x19a(r4)
/* 80247558  28 00 00 08 */	cmplwi r0, 8
/* 8024755C  40 82 00 D4 */	bne lbl_80247630
/* 80247560  38 60 00 6C */	li r3, 0x6c
/* 80247564  48 08 76 E9 */	bl __nw__FUl
/* 80247568  7C 60 1B 79 */	or. r0, r3, r3
/* 8024756C  41 82 00 24 */	beq lbl_80247590
/* 80247570  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 80247574  3C A0 34 5F */	lis r5, 0x345F /* 0x345F7331@ha */
/* 80247578  38 C5 73 31 */	addi r6, r5, 0x7331 /* 0x345F7331@l */
/* 8024757C  38 A0 00 74 */	li r5, 0x74
/* 80247580  38 E0 00 00 */	li r7, 0
/* 80247584  39 00 00 00 */	li r8, 0
/* 80247588  48 00 C3 FD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8024758C  7C 60 1B 78 */	mr r0, r3
lbl_80247590:
/* 80247590  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80247594  38 60 00 6C */	li r3, 0x6c
/* 80247598  48 08 76 B5 */	bl __nw__FUl
/* 8024759C  7C 60 1B 79 */	or. r0, r3, r3
/* 802475A0  41 82 00 24 */	beq lbl_802475C4
/* 802475A4  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802475A8  3C A0 34 5F */	lis r5, 0x345F /* 0x345F7332@ha */
/* 802475AC  38 C5 73 32 */	addi r6, r5, 0x7332 /* 0x345F7332@l */
/* 802475B0  38 A0 00 74 */	li r5, 0x74
/* 802475B4  38 E0 00 00 */	li r7, 0
/* 802475B8  39 00 00 00 */	li r8, 0
/* 802475BC  48 00 C3 C9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802475C0  7C 60 1B 78 */	mr r0, r3
lbl_802475C4:
/* 802475C4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802475C8  38 60 00 6C */	li r3, 0x6c
/* 802475CC  48 08 76 81 */	bl __nw__FUl
/* 802475D0  7C 60 1B 79 */	or. r0, r3, r3
/* 802475D4  41 82 00 24 */	beq lbl_802475F8
/* 802475D8  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 802475DC  3C A0 34 5F */	lis r5, 0x345F /* 0x345F7333@ha */
/* 802475E0  38 C5 73 33 */	addi r6, r5, 0x7333 /* 0x345F7333@l */
/* 802475E4  38 A0 00 74 */	li r5, 0x74
/* 802475E8  38 E0 00 00 */	li r7, 0
/* 802475EC  39 00 00 00 */	li r8, 0
/* 802475F0  48 00 C3 95 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 802475F4  7C 60 1B 78 */	mr r0, r3
lbl_802475F8:
/* 802475F8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802475FC  38 60 00 6C */	li r3, 0x6c
/* 80247600  48 08 76 4D */	bl __nw__FUl
/* 80247604  7C 60 1B 79 */	or. r0, r3, r3
/* 80247608  41 82 00 24 */	beq lbl_8024762C
/* 8024760C  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 80247610  3C A0 34 5F */	lis r5, 0x345F /* 0x345F7334@ha */
/* 80247614  38 C5 73 34 */	addi r6, r5, 0x7334 /* 0x345F7334@l */
/* 80247618  38 A0 00 74 */	li r5, 0x74
/* 8024761C  38 E0 00 00 */	li r7, 0
/* 80247620  39 00 00 00 */	li r8, 0
/* 80247624  48 00 C3 61 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80247628  7C 60 1B 78 */	mr r0, r3
lbl_8024762C:
/* 8024762C  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_80247630:
/* 80247630  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80247634  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80247638  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 8024763C  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 80247640  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 80247644  81 83 00 00 */	lwz r12, 0(r3)
/* 80247648  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8024764C  7D 89 03 A6 */	mtctr r12
/* 80247650  4E 80 04 21 */	bctrl 
/* 80247654  38 00 00 00 */	li r0, 0
/* 80247658  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8024765C  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80247660  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80247664  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80247668  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3366@ha */
/* 8024766C  38 A4 33 66 */	addi r5, r4, 0x3366 /* 0x6E5F3366@l */
/* 80247670  81 83 00 00 */	lwz r12, 0(r3)
/* 80247674  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80247678  7D 89 03 A6 */	mtctr r12
/* 8024767C  4E 80 04 21 */	bctrl 
/* 80247680  38 00 00 00 */	li r0, 0
/* 80247684  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80247688  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8024768C  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 80247690  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 80247694  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F6534@ha */
/* 80247698  38 A4 65 34 */	addi r5, r4, 0x6534 /* 0x6E5F6534@l */
/* 8024769C  81 83 00 00 */	lwz r12, 0(r3)
/* 802476A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802476A4  7D 89 03 A6 */	mtctr r12
/* 802476A8  4E 80 04 21 */	bctrl 
/* 802476AC  38 00 00 01 */	li r0, 1
/* 802476B0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 802476B4  3B A0 00 00 */	li r29, 0
/* 802476B8  3B 80 00 00 */	li r28, 0
lbl_802476BC:
/* 802476BC  38 1C 00 0C */	addi r0, r28, 0xc
/* 802476C0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802476C4  28 04 00 00 */	cmplwi r4, 0
/* 802476C8  41 82 00 48 */	beq lbl_80247710
/* 802476CC  83 64 00 04 */	lwz r27, 4(r4)
/* 802476D0  4B DC D3 21 */	bl mDoExt_getMesgFont__Fv
/* 802476D4  7C 64 1B 78 */	mr r4, r3
/* 802476D8  7F 63 DB 78 */	mr r3, r27
/* 802476DC  81 9B 00 00 */	lwz r12, 0(r27)
/* 802476E0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802476E4  7D 89 03 A6 */	mtctr r12
/* 802476E8  4E 80 04 21 */	bctrl 
/* 802476EC  38 1C 00 0C */	addi r0, r28, 0xc
/* 802476F0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802476F4  80 64 00 04 */	lwz r3, 4(r4)
/* 802476F8  38 80 02 00 */	li r4, 0x200
/* 802476FC  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_talk__stringBase0@ha /* 0x80399BB0@ha */
/* 80247700  38 A5 9B B0 */	addi r5, r5, msg_scrn_d_msg_scrn_talk__stringBase0@l /* 0x80399BB0@l */
/* 80247704  38 A5 00 60 */	addi r5, r5, 0x60
/* 80247708  4C C6 31 82 */	crclr 6
/* 8024770C  48 0B 90 41 */	bl setString__10J2DTextBoxFsPCce
lbl_80247710:
/* 80247710  38 1C 00 28 */	addi r0, r28, 0x28
/* 80247714  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80247718  28 04 00 00 */	cmplwi r4, 0
/* 8024771C  41 82 00 48 */	beq lbl_80247764
/* 80247720  83 64 00 04 */	lwz r27, 4(r4)
/* 80247724  4B DC D2 CD */	bl mDoExt_getMesgFont__Fv
/* 80247728  7C 64 1B 78 */	mr r4, r3
/* 8024772C  7F 63 DB 78 */	mr r3, r27
/* 80247730  81 9B 00 00 */	lwz r12, 0(r27)
/* 80247734  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80247738  7D 89 03 A6 */	mtctr r12
/* 8024773C  4E 80 04 21 */	bctrl 
/* 80247740  38 1C 00 28 */	addi r0, r28, 0x28
/* 80247744  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80247748  80 64 00 04 */	lwz r3, 4(r4)
/* 8024774C  38 80 02 00 */	li r4, 0x200
/* 80247750  3C A0 80 3A */	lis r5, msg_scrn_d_msg_scrn_talk__stringBase0@ha /* 0x80399BB0@ha */
/* 80247754  38 A5 9B B0 */	addi r5, r5, msg_scrn_d_msg_scrn_talk__stringBase0@l /* 0x80399BB0@l */
/* 80247758  38 A5 00 60 */	addi r5, r5, 0x60
/* 8024775C  4C C6 31 82 */	crclr 6
/* 80247760  48 0B 8F ED */	bl setString__10J2DTextBoxFsPCce
lbl_80247764:
/* 80247764  3B BD 00 01 */	addi r29, r29, 1
/* 80247768  2C 1D 00 06 */	cmpwi r29, 6
/* 8024776C  3B 9C 00 04 */	addi r28, r28, 4
/* 80247770  41 80 FF 4C */	blt lbl_802476BC
/* 80247774  80 9E 5D BC */	lwz r4, 0x5dbc(r30)
/* 80247778  88 04 01 9A */	lbz r0, 0x19a(r4)
/* 8024777C  28 00 00 08 */	cmplwi r0, 8
/* 80247780  41 82 00 9C */	beq lbl_8024781C
/* 80247784  3B A0 00 00 */	li r29, 0
/* 80247788  3B 80 00 00 */	li r28, 0
/* 8024778C  3B C0 00 00 */	li r30, 0
lbl_80247790:
/* 80247790  38 BE 00 0C */	addi r5, r30, 0xc
/* 80247794  7C 1F 28 2E */	lwzx r0, r31, r5
/* 80247798  28 00 00 00 */	cmplwi r0, 0
/* 8024779C  41 82 00 30 */	beq lbl_802477CC
/* 802477A0  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802477A4  38 04 02 8C */	addi r0, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802477A8  7C 80 E2 14 */	add r4, r0, r28
/* 802477AC  80 04 01 38 */	lwz r0, 0x138(r4)
/* 802477B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802477B4  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 802477B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802477BC  7C 7F 28 2E */	lwzx r3, r31, r5
/* 802477C0  38 81 00 14 */	addi r4, r1, 0x14
/* 802477C4  38 A1 00 10 */	addi r5, r1, 0x10
/* 802477C8  48 00 CC 91 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_802477CC:
/* 802477CC  38 BE 00 28 */	addi r5, r30, 0x28
/* 802477D0  7C 1F 28 2E */	lwzx r0, r31, r5
/* 802477D4  28 00 00 00 */	cmplwi r0, 0
/* 802477D8  41 82 00 30 */	beq lbl_80247808
/* 802477DC  3C 80 80 43 */	lis r4, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 802477E0  38 04 02 8C */	addi r0, r4, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 802477E4  7C 80 E2 14 */	add r4, r0, r28
/* 802477E8  80 04 01 38 */	lwz r0, 0x138(r4)
/* 802477EC  90 01 00 08 */	stw r0, 8(r1)
/* 802477F0  80 04 00 E8 */	lwz r0, 0xe8(r4)
/* 802477F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802477F8  7C 7F 28 2E */	lwzx r3, r31, r5
/* 802477FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80247800  38 A1 00 08 */	addi r5, r1, 8
/* 80247804  48 00 CC 55 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_80247808:
/* 80247808  3B BD 00 01 */	addi r29, r29, 1
/* 8024780C  2C 1D 00 02 */	cmpwi r29, 2
/* 80247810  3B 9C 00 28 */	addi r28, r28, 0x28
/* 80247814  3B DE 00 04 */	addi r30, r30, 4
/* 80247818  41 80 FF 78 */	blt lbl_80247790
lbl_8024781C:
/* 8024781C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80247820  80 84 00 04 */	lwz r4, 4(r4)
/* 80247824  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80247828  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8024782C  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 80247830  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80247834  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80247838  80 84 00 04 */	lwz r4, 4(r4)
/* 8024783C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80247840  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80247844  EC 01 00 28 */	fsubs f0, f1, f0
/* 80247848  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8024784C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80247850  80 84 00 04 */	lwz r4, 4(r4)
/* 80247854  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80247858  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8024785C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80247860  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80247864  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80247868  80 84 00 04 */	lwz r4, 4(r4)
/* 8024786C  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 80247870  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80247874  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80247878  80 84 00 04 */	lwz r4, 4(r4)
/* 8024787C  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80247880  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80247884  3B 60 00 00 */	li r27, 0
/* 80247888  3B 80 00 00 */	li r28, 0
lbl_8024788C:
/* 8024788C  38 1C 00 0C */	addi r0, r28, 0xc
/* 80247890  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80247894  28 04 00 00 */	cmplwi r4, 0
/* 80247898  41 82 00 48 */	beq lbl_802478E0
/* 8024789C  80 84 00 04 */	lwz r4, 4(r4)
/* 802478A0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 802478A4  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 802478A8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 802478AC  80 64 00 04 */	lwz r3, 4(r4)
/* 802478B0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802478B4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802478B8  EC 41 00 28 */	fsubs f2, f1, f0
/* 802478BC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 802478C0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802478C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 802478C8  C0 02 B3 0C */	lfs f0, lit_4089(r2)
/* 802478CC  EC 20 00 72 */	fmuls f1, f0, f1
/* 802478D0  81 83 00 00 */	lwz r12, 0(r3)
/* 802478D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802478D8  7D 89 03 A6 */	mtctr r12
/* 802478DC  4E 80 04 21 */	bctrl 
lbl_802478E0:
/* 802478E0  3B 7B 00 01 */	addi r27, r27, 1
/* 802478E4  2C 1B 00 06 */	cmpwi r27, 6
/* 802478E8  3B 9C 00 04 */	addi r28, r28, 4
/* 802478EC  41 80 FF A0 */	blt lbl_8024788C
/* 802478F0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802478F4  48 00 C9 F5 */	bl getGlobalPosX__8CPaneMgrFv
/* 802478F8  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 802478FC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80247900  48 00 CA 65 */	bl getGlobalPosY__8CPaneMgrFv
/* 80247904  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 80247908  3B 60 00 00 */	li r27, 0
/* 8024790C  3B 80 00 00 */	li r28, 0
lbl_80247910:
/* 80247910  38 1C 00 28 */	addi r0, r28, 0x28
/* 80247914  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80247918  28 04 00 00 */	cmplwi r4, 0
/* 8024791C  41 82 00 74 */	beq lbl_80247990
/* 80247920  80 84 00 04 */	lwz r4, 4(r4)
/* 80247924  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80247928  D0 04 01 18 */	stfs f0, 0x118(r4)
/* 8024792C  2C 1B 00 00 */	cmpwi r27, 0
/* 80247930  40 82 00 24 */	bne lbl_80247954
/* 80247934  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80247938  80 84 00 04 */	lwz r4, 4(r4)
/* 8024793C  C0 04 01 1C */	lfs f0, 0x11c(r4)
/* 80247940  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80247944  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80247948  80 84 00 04 */	lwz r4, 4(r4)
/* 8024794C  C0 04 01 14 */	lfs f0, 0x114(r4)
/* 80247950  D0 1F 00 84 */	stfs f0, 0x84(r31)
lbl_80247954:
/* 80247954  38 1C 00 28 */	addi r0, r28, 0x28
/* 80247958  7C 9F 00 2E */	lwzx r4, r31, r0
/* 8024795C  80 64 00 04 */	lwz r3, 4(r4)
/* 80247960  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80247964  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80247968  EC 41 00 28 */	fsubs f2, f1, f0
/* 8024796C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80247970  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80247974  EC 21 00 28 */	fsubs f1, f1, f0
/* 80247978  C0 02 B3 0C */	lfs f0, lit_4089(r2)
/* 8024797C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80247980  81 83 00 00 */	lwz r12, 0(r3)
/* 80247984  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80247988  7D 89 03 A6 */	mtctr r12
/* 8024798C  4E 80 04 21 */	bctrl 
lbl_80247990:
/* 80247990  3B 7B 00 01 */	addi r27, r27, 1
/* 80247994  2C 1B 00 06 */	cmpwi r27, 6
/* 80247998  3B 9C 00 04 */	addi r28, r28, 4
/* 8024799C  41 80 FF 74 */	blt lbl_80247910
/* 802479A0  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802479A4  28 03 00 00 */	cmplwi r3, 0
/* 802479A8  41 82 00 80 */	beq lbl_80247A28
/* 802479AC  4B FF 2F 89 */	bl getTextBoxWidth__17dMsgScrn3Select_cFv
/* 802479B0  D0 3F 00 A8 */	stfs f1, 0xa8(r31)
/* 802479B4  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802479B8  4B FF 2F 95 */	bl getFontSize__17dMsgScrn3Select_cFv
/* 802479BC  D0 3F 00 88 */	stfs f1, 0x88(r31)
/* 802479C0  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802479C4  4B FF 2F 99 */	bl getRubyFontSize__17dMsgScrn3Select_cFv
/* 802479C8  D0 3F 00 8C */	stfs f1, 0x8c(r31)
/* 802479CC  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802479D0  4B FF 2F AD */	bl getCharSpace__17dMsgScrn3Select_cFv
/* 802479D4  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 802479D8  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802479DC  4B FF 2F B1 */	bl getRubyCharSpace__17dMsgScrn3Select_cFv
/* 802479E0  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
/* 802479E4  3B 60 00 00 */	li r27, 0
/* 802479E8  3B 80 00 00 */	li r28, 0
lbl_802479EC:
/* 802479EC  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 802479F0  7F 64 DB 78 */	mr r4, r27
/* 802479F4  4B FF 2F B9 */	bl getTextBoxGlobalPosX__17dMsgScrn3Select_cFi
/* 802479F8  38 1C 00 90 */	addi r0, r28, 0x90
/* 802479FC  7C 3F 05 2E */	stfsx f1, r31, r0
/* 80247A00  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80247A04  7F 64 DB 78 */	mr r4, r27
/* 80247A08  4B FF 2F D1 */	bl getTextBoxGlobalPosY__17dMsgScrn3Select_cFi
/* 80247A0C  38 1C 00 9C */	addi r0, r28, 0x9c
/* 80247A10  7C 3F 05 2E */	stfsx f1, r31, r0
/* 80247A14  3B 7B 00 01 */	addi r27, r27, 1
/* 80247A18  2C 1B 00 03 */	cmpwi r27, 3
/* 80247A1C  3B 9C 00 04 */	addi r28, r28, 4
/* 80247A20  41 80 FF CC */	blt lbl_802479EC
/* 80247A24  48 00 00 40 */	b lbl_80247A64
lbl_80247A28:
/* 80247A28  C0 02 B3 04 */	lfs f0, lit_4087(r2)
/* 80247A2C  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 80247A30  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80247A34  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 80247A38  D0 1F 00 AC */	stfs f0, 0xac(r31)
/* 80247A3C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 80247A40  38 80 00 00 */	li r4, 0
/* 80247A44  38 00 00 03 */	li r0, 3
/* 80247A48  7C 09 03 A6 */	mtctr r0
lbl_80247A4C:
/* 80247A4C  38 04 00 90 */	addi r0, r4, 0x90
/* 80247A50  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80247A54  38 04 00 9C */	addi r0, r4, 0x9c
/* 80247A58  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80247A5C  38 84 00 04 */	addi r4, r4, 4
/* 80247A60  42 00 FF EC */	bdnz lbl_80247A4C
lbl_80247A64:
/* 80247A64  7F E3 FB 78 */	mr r3, r31
/* 80247A68  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80247A6C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80247A70  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80247A74  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80247A78  39 61 00 30 */	addi r11, r1, 0x30
/* 80247A7C  48 11 A7 A5 */	bl _restgpr_27
/* 80247A80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80247A84  7C 08 03 A6 */	mtlr r0
/* 80247A88  38 21 00 50 */	addi r1, r1, 0x50
/* 80247A8C  4E 80 00 20 */	blr 
