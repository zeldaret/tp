lbl_80B272F0:
/* 80B272F0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B272F4  7C 08 02 A6 */	mflr r0
/* 80B272F8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B272FC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B27300  4B 83 AE D9 */	bl _savegpr_28
/* 80B27304  7C 7D 1B 78 */	mr r29, r3
/* 80B27308  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B2730C  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B27310  38 7D 0F C0 */	addi r3, r29, 0xfc0
/* 80B27314  38 1D 10 14 */	addi r0, r29, 0x1014
/* 80B27318  7F C3 00 50 */	subf r30, r3, r0
/* 80B2731C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B27320  28 03 00 00 */	cmplwi r3, 0
/* 80B27324  41 82 00 08 */	beq lbl_80B2732C
/* 80B27328  4B 61 E4 3D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B2732C:
/* 80B2732C  38 7D 0D 24 */	addi r3, r29, 0xd24
/* 80B27330  38 80 00 00 */	li r4, 0
/* 80B27334  38 1D 0E 38 */	addi r0, r29, 0xe38
/* 80B27338  7C A3 00 50 */	subf r5, r3, r0
/* 80B2733C  4B 4D C1 1D */	bl memset
/* 80B27340  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B27344  4B 61 E5 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B27348  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B2734C  4B 61 E5 4D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B27350  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 80B27354  4B 61 E3 81 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B27358  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80B2735C  4B 61 E3 79 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B27360  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B27364  4B 61 F9 35 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B27368  38 60 00 00 */	li r3, 0
/* 80B2736C  38 80 00 00 */	li r4, 0
/* 80B27370  7C 87 23 78 */	mr r7, r4
/* 80B27374  7C 86 23 78 */	mr r6, r4
/* 80B27378  7C 85 23 78 */	mr r5, r4
/* 80B2737C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B27380  38 00 00 02 */	li r0, 2
/* 80B27384  7C 09 03 A6 */	mtctr r0
lbl_80B27388:
/* 80B27388  7D 1D 22 14 */	add r8, r29, r4
/* 80B2738C  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80B27390  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80B27394  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80B27398  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B2739C  7C 1D 05 2E */	stfsx f0, r29, r0
/* 80B273A0  38 63 00 04 */	addi r3, r3, 4
/* 80B273A4  38 84 00 06 */	addi r4, r4, 6
/* 80B273A8  42 00 FF E0 */	bdnz lbl_80B27388
/* 80B273AC  38 00 00 00 */	li r0, 0
/* 80B273B0  B0 1D 0D 1C */	sth r0, 0xd1c(r29)
/* 80B273B4  B0 1D 0D 1E */	sth r0, 0xd1e(r29)
/* 80B273B8  98 1D 0D 20 */	stb r0, 0xd20(r29)
/* 80B273BC  38 00 FF FF */	li r0, -1
/* 80B273C0  90 1D 0D 90 */	stw r0, 0xd90(r29)
/* 80B273C4  38 00 00 01 */	li r0, 1
/* 80B273C8  98 1D 0E 26 */	stb r0, 0xe26(r29)
/* 80B273CC  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80B273D0  4B 74 05 85 */	bl cM_rndF__Ff
/* 80B273D4  FC 00 08 1E */	fctiwz f0, f1
/* 80B273D8  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80B273DC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80B273E0  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80B273E4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80B273E8  D0 1D 0D E0 */	stfs f0, 0xde0(r29)
/* 80B273EC  D0 1D 0D E4 */	stfs f0, 0xde4(r29)
/* 80B273F0  3B 80 00 00 */	li r28, 0
/* 80B273F4  3B E0 00 00 */	li r31, 0
lbl_80B273F8:
/* 80B273F8  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B273FC  7C 7D 1A 14 */	add r3, r29, r3
/* 80B27400  4B 61 E2 D5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B27404  3B 9C 00 01 */	addi r28, r28, 1
/* 80B27408  2C 1C 00 02 */	cmpwi r28, 2
/* 80B2740C  3B FF 00 08 */	addi r31, r31, 8
/* 80B27410  41 80 FF E8 */	blt lbl_80B273F8
/* 80B27414  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B27418  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B2741C  28 00 00 FF */	cmplwi r0, 0xff
/* 80B27420  41 82 00 28 */	beq lbl_80B27448
/* 80B27424  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B27428  4B 61 E8 19 */	bl initialize__13daNpcT_Path_cFv
/* 80B2742C  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B27430  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B27434  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B27438  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B2743C  7C 05 07 74 */	extsb r5, r0
/* 80B27440  38 C0 00 00 */	li r6, 0
/* 80B27444  4B 61 E8 31 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B27448:
/* 80B27448  38 7D 0F C0 */	addi r3, r29, 0xfc0
/* 80B2744C  38 80 00 00 */	li r4, 0
/* 80B27450  7F C5 F3 78 */	mr r5, r30
/* 80B27454  4B 4D C0 05 */	bl memset
/* 80B27458  38 00 00 00 */	li r0, 0
/* 80B2745C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B27460  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B27464  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80B27468  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80B2746C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B27470  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B27474  2C 00 00 04 */	cmpwi r0, 4
/* 80B27478  41 82 02 80 */	beq lbl_80B276F8
/* 80B2747C  40 80 02 84 */	bge lbl_80B27700
/* 80B27480  2C 00 00 01 */	cmpwi r0, 1
/* 80B27484  41 82 00 10 */	beq lbl_80B27494
/* 80B27488  40 80 02 78 */	bge lbl_80B27700
/* 80B2748C  48 00 02 74 */	b lbl_80B27700
/* 80B27490  48 00 02 70 */	b lbl_80B27700
lbl_80B27494:
/* 80B27494  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B27498  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B2749C  7C 04 07 74 */	extsb r4, r0
/* 80B274A0  38 A0 00 00 */	li r5, 0
/* 80B274A4  4B 61 E8 89 */	bl setNextPathInfo__13daNpcT_Path_cFScUc
/* 80B274A8  80 9D 0F 98 */	lwz r4, 0xf98(r29)
/* 80B274AC  A0 64 00 00 */	lhz r3, 0(r4)
/* 80B274B0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B274B4  54 63 20 36 */	slwi r3, r3, 4
/* 80B274B8  7C 80 1A 14 */	add r4, r0, r3
/* 80B274BC  80 64 FF E4 */	lwz r3, -0x1c(r4)
/* 80B274C0  80 04 FF E8 */	lwz r0, -0x18(r4)
/* 80B274C4  90 61 00 60 */	stw r3, 0x60(r1)
/* 80B274C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B274CC  80 04 FF EC */	lwz r0, -0x14(r4)
/* 80B274D0  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B274D4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B274D8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B274DC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B274E0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B274E4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B274E8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B274EC  80 64 FF F4 */	lwz r3, -0xc(r4)
/* 80B274F0  80 04 FF F8 */	lwz r0, -8(r4)
/* 80B274F4  90 61 00 54 */	stw r3, 0x54(r1)
/* 80B274F8  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B274FC  80 04 FF FC */	lwz r0, -4(r4)
/* 80B27500  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B27504  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80B27508  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80B2750C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80B27510  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B27514  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B27518  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B2751C  D0 3D 0F D8 */	stfs f1, 0xfd8(r29)
/* 80B27520  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B27524  D0 1D 0F DC */	stfs f0, 0xfdc(r29)
/* 80B27528  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B2752C  D0 1D 0F E0 */	stfs f0, 0xfe0(r29)
/* 80B27530  38 00 00 00 */	li r0, 0
/* 80B27534  B0 1D 0F E4 */	sth r0, 0xfe4(r29)
/* 80B27538  B0 1D 0F E6 */	sth r0, 0xfe6(r29)
/* 80B2753C  B0 1D 0F E8 */	sth r0, 0xfe8(r29)
/* 80B27540  38 61 00 78 */	addi r3, r1, 0x78
/* 80B27544  38 9D 0F D8 */	addi r4, r29, 0xfd8
/* 80B27548  4B 74 96 BD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B2754C  B0 7D 0F E6 */	sth r3, 0xfe6(r29)
/* 80B27550  38 60 00 25 */	li r3, 0x25
/* 80B27554  4B 62 55 59 */	bl daNpcT_chkEvtBit__FUl
/* 80B27558  2C 03 00 00 */	cmpwi r3, 0
/* 80B2755C  41 82 00 60 */	beq lbl_80B275BC
/* 80B27560  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B27564  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B27568  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B2756C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B27570  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B27574  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B27578  7F A3 EB 78 */	mr r3, r29
/* 80B2757C  38 81 00 48 */	addi r4, r1, 0x48
/* 80B27580  4B 62 33 89 */	bl setPos__8daNpcT_cF4cXyz
/* 80B27584  38 61 00 78 */	addi r3, r1, 0x78
/* 80B27588  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B2758C  4B 74 96 79 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B27590  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B27594  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B27598  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B2759C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B275A0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B275A4  7C 05 07 74 */	extsb r5, r0
/* 80B275A8  38 C0 00 00 */	li r6, 0
/* 80B275AC  4B 61 E6 C9 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
/* 80B275B0  38 00 00 01 */	li r0, 1
/* 80B275B4  98 1D 10 0E */	stb r0, 0x100e(r29)
/* 80B275B8  48 00 00 A4 */	b lbl_80B2765C
lbl_80B275BC:
/* 80B275BC  80 7D 0F 98 */	lwz r3, 0xf98(r29)
/* 80B275C0  80 83 00 08 */	lwz r4, 8(r3)
/* 80B275C4  80 64 00 04 */	lwz r3, 4(r4)
/* 80B275C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B275CC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B275D0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B275D4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B275D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B275DC  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 80B275E0  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 80B275E4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80B275E8  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80B275EC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80B275F0  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80B275F4  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80B275F8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80B275FC  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B27600  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B27604  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80B27608  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B2760C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B27610  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B27614  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B27618  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B2761C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B27620  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B27624  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80B27628  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80B2762C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B27630  7F A3 EB 78 */	mr r3, r29
/* 80B27634  38 81 00 24 */	addi r4, r1, 0x24
/* 80B27638  4B 62 32 D1 */	bl setPos__8daNpcT_cF4cXyz
/* 80B2763C  38 61 00 78 */	addi r3, r1, 0x78
/* 80B27640  38 81 00 6C */	addi r4, r1, 0x6c
/* 80B27644  4B 74 95 C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B27648  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B2764C  38 7D 0F 98 */	addi r3, r29, 0xf98
/* 80B27650  80 9D 0F 98 */	lwz r4, 0xf98(r29)
/* 80B27654  A0 84 00 00 */	lhz r4, 0(r4)
/* 80B27658  4B 61 E7 79 */	bl setNextIdx__13daNpcT_Path_cFi
lbl_80B2765C:
/* 80B2765C  38 60 00 20 */	li r3, 0x20
/* 80B27660  4B 62 54 4D */	bl daNpcT_chkEvtBit__FUl
/* 80B27664  2C 03 00 00 */	cmpwi r3, 0
/* 80B27668  40 82 00 24 */	bne lbl_80B2768C
/* 80B2766C  38 60 00 1E */	li r3, 0x1e
/* 80B27670  4B 62 54 3D */	bl daNpcT_chkEvtBit__FUl
/* 80B27674  2C 03 00 00 */	cmpwi r3, 0
/* 80B27678  40 82 00 14 */	bne lbl_80B2768C
/* 80B2767C  38 60 00 92 */	li r3, 0x92
/* 80B27680  4B 62 54 2D */	bl daNpcT_chkEvtBit__FUl
/* 80B27684  2C 03 00 00 */	cmpwi r3, 0
/* 80B27688  41 82 00 78 */	beq lbl_80B27700
lbl_80B2768C:
/* 80B2768C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80B27690  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B27694  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80B27698  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B2769C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80B276A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B276A4  7F A3 EB 78 */	mr r3, r29
/* 80B276A8  38 81 00 18 */	addi r4, r1, 0x18
/* 80B276AC  4B 62 32 5D */	bl setPos__8daNpcT_cF4cXyz
/* 80B276B0  38 60 00 20 */	li r3, 0x20
/* 80B276B4  4B 62 53 F9 */	bl daNpcT_chkEvtBit__FUl
/* 80B276B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B276BC  41 82 00 10 */	beq lbl_80B276CC
/* 80B276C0  38 00 00 01 */	li r0, 1
/* 80B276C4  98 1D 10 0D */	stb r0, 0x100d(r29)
/* 80B276C8  48 00 00 38 */	b lbl_80B27700
lbl_80B276CC:
/* 80B276CC  38 60 00 1E */	li r3, 0x1e
/* 80B276D0  4B 62 53 DD */	bl daNpcT_chkEvtBit__FUl
/* 80B276D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B276D8  40 82 00 14 */	bne lbl_80B276EC
/* 80B276DC  38 60 00 92 */	li r3, 0x92
/* 80B276E0  4B 62 53 CD */	bl daNpcT_chkEvtBit__FUl
/* 80B276E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B276E8  41 82 00 18 */	beq lbl_80B27700
lbl_80B276EC:
/* 80B276EC  38 00 00 01 */	li r0, 1
/* 80B276F0  98 1D 10 0F */	stb r0, 0x100f(r29)
/* 80B276F4  48 00 00 0C */	b lbl_80B27700
lbl_80B276F8:
/* 80B276F8  38 00 00 01 */	li r0, 1
/* 80B276FC  98 1D 10 0D */	stb r0, 0x100d(r29)
lbl_80B27700:
/* 80B27700  38 60 00 07 */	li r3, 7
/* 80B27704  4B 62 54 29 */	bl daNpcT_offTmpBit__FUl
/* 80B27708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2770C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B27710  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80B27714  38 80 13 08 */	li r4, 0x1308
/* 80B27718  4B 50 D2 8D */	bl offEventBit__11dSv_event_cFUs
/* 80B2771C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B27720  90 01 00 08 */	stw r0, 8(r1)
/* 80B27724  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80B27728  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B2772C  7F A3 EB 78 */	mr r3, r29
/* 80B27730  38 81 00 08 */	addi r4, r1, 8
/* 80B27734  4B 62 32 69 */	bl setAngle__8daNpcT_cF5csXyz
/* 80B27738  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80B2773C  4B 83 AA E9 */	bl _restgpr_28
/* 80B27740  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B27744  7C 08 03 A6 */	mtlr r0
/* 80B27748  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B2774C  4E 80 00 20 */	blr 
