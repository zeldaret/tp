lbl_8062FC08:
/* 8062FC08  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8062FC0C  7C 08 02 A6 */	mflr r0
/* 8062FC10  90 01 00 54 */	stw r0, 0x54(r1)
/* 8062FC14  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8062FC18  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8062FC1C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8062FC20  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8062FC24  39 61 00 30 */	addi r11, r1, 0x30
/* 8062FC28  4B D3 25 A1 */	bl _savegpr_24
/* 8062FC2C  7C 7F 1B 78 */	mr r31, r3
/* 8062FC30  7C 98 23 78 */	mr r24, r4
/* 8062FC34  7C B9 2B 78 */	mr r25, r5
/* 8062FC38  FF C0 08 90 */	fmr f30, f1
/* 8062FC3C  FF E0 10 90 */	fmr f31, f2
/* 8062FC40  3C 60 80 64 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80639A60@ha */
/* 8062FC44  3B A3 9A 60 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x80639A60@l */
/* 8062FC48  3C 60 80 64 */	lis r3, lit_3788@ha /* 0x806397F4@ha */
/* 8062FC4C  3B C3 97 F4 */	addi r30, r3, lit_3788@l /* 0x806397F4@l */
/* 8062FC50  3C 60 80 64 */	lis r3, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 8062FC54  38 63 9A 34 */	addi r3, r3, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 8062FC58  54 9B 10 3A */	slwi r27, r4, 2
/* 8062FC5C  38 9D 01 00 */	addi r4, r29, 0x100
/* 8062FC60  7C 84 D8 2E */	lwzx r4, r4, r27
/* 8062FC64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062FC68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062FC6C  3F 45 00 02 */	addis r26, r5, 2
/* 8062FC70  3B 5A C2 F8 */	addi r26, r26, -15624
/* 8062FC74  7F 45 D3 78 */	mr r5, r26
/* 8062FC78  38 C0 00 80 */	li r6, 0x80
/* 8062FC7C  4B A0 C6 71 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062FC80  7C 64 1B 78 */	mr r4, r3
/* 8062FC84  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 8062FC88  57 39 06 3E */	clrlwi r25, r25, 0x18
/* 8062FC8C  7F 25 CB 78 */	mr r5, r25
/* 8062FC90  FC 20 F0 90 */	fmr f1, f30
/* 8062FC94  FC 40 F8 90 */	fmr f2, f31
/* 8062FC98  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 8062FC9C  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 8062FCA0  4B 9E 11 D1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8062FCA4  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 8062FCA8  80 63 00 04 */	lwz r3, 4(r3)
/* 8062FCAC  83 83 00 04 */	lwz r28, 4(r3)
/* 8062FCB0  38 7C 00 58 */	addi r3, r28, 0x58
/* 8062FCB4  80 9F 05 D8 */	lwz r4, 0x5d8(r31)
/* 8062FCB8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8062FCBC  4B CF FA F9 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8062FCC0  38 7D 01 4C */	addi r3, r29, 0x14c
/* 8062FCC4  7C 83 D8 2E */	lwzx r4, r3, r27
/* 8062FCC8  2C 04 00 FF */	cmpwi r4, 0xff
/* 8062FCCC  41 82 00 48 */	beq lbl_8062FD14
/* 8062FCD0  38 00 00 01 */	li r0, 1
/* 8062FCD4  98 1F 0F CD */	stb r0, 0xfcd(r31)
/* 8062FCD8  3C 60 80 64 */	lis r3, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 8062FCDC  38 63 9A 34 */	addi r3, r3, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 8062FCE0  7F 45 D3 78 */	mr r5, r26
/* 8062FCE4  38 C0 00 80 */	li r6, 0x80
/* 8062FCE8  4B A0 C6 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062FCEC  7C 65 1B 78 */	mr r5, r3
/* 8062FCF0  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8062FCF4  38 9C 00 58 */	addi r4, r28, 0x58
/* 8062FCF8  38 C0 00 01 */	li r6, 1
/* 8062FCFC  7F 27 CB 78 */	mr r7, r25
/* 8062FD00  FC 20 F8 90 */	fmr f1, f31
/* 8062FD04  39 00 00 00 */	li r8, 0
/* 8062FD08  39 20 FF FF */	li r9, -1
/* 8062FD0C  4B 9D D9 31 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8062FD10  48 00 00 0C */	b lbl_8062FD1C
lbl_8062FD14:
/* 8062FD14  38 00 00 00 */	li r0, 0
/* 8062FD18  98 1F 0F CD */	stb r0, 0xfcd(r31)
lbl_8062FD1C:
/* 8062FD1C  38 7C 00 58 */	addi r3, r28, 0x58
/* 8062FD20  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 8062FD24  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8062FD28  4B CF F9 D1 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 8062FD2C  3C 60 80 64 */	lis r3, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 8062FD30  38 63 9A 34 */	addi r3, r3, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 8062FD34  38 9D 01 98 */	addi r4, r29, 0x198
/* 8062FD38  7C 84 D8 2E */	lwzx r4, r4, r27
/* 8062FD3C  7F 45 D3 78 */	mr r5, r26
/* 8062FD40  38 C0 00 80 */	li r6, 0x80
/* 8062FD44  4B A0 C5 A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062FD48  7C 65 1B 78 */	mr r5, r3
/* 8062FD4C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8062FD50  38 9C 00 58 */	addi r4, r28, 0x58
/* 8062FD54  38 C0 00 01 */	li r6, 1
/* 8062FD58  7F 27 CB 78 */	mr r7, r25
/* 8062FD5C  FC 20 F8 90 */	fmr f1, f31
/* 8062FD60  39 00 00 00 */	li r8, 0
/* 8062FD64  39 20 FF FF */	li r9, -1
/* 8062FD68  4B 9D D7 E5 */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 8062FD6C  2C 18 00 00 */	cmpwi r24, 0
/* 8062FD70  40 82 00 14 */	bne lbl_8062FD84
/* 8062FD74  38 00 00 01 */	li r0, 1
/* 8062FD78  98 1F 0F CC */	stb r0, 0xfcc(r31)
/* 8062FD7C  38 80 00 25 */	li r4, 0x25
/* 8062FD80  48 00 00 2C */	b lbl_8062FDAC
lbl_8062FD84:
/* 8062FD84  2C 18 00 01 */	cmpwi r24, 1
/* 8062FD88  40 82 00 0C */	bne lbl_8062FD94
/* 8062FD8C  38 80 00 26 */	li r4, 0x26
/* 8062FD90  48 00 00 1C */	b lbl_8062FDAC
lbl_8062FD94:
/* 8062FD94  88 1F 0F CC */	lbz r0, 0xfcc(r31)
/* 8062FD98  28 00 00 00 */	cmplwi r0, 0
/* 8062FD9C  41 82 00 0C */	beq lbl_8062FDA8
/* 8062FDA0  38 80 00 24 */	li r4, 0x24
/* 8062FDA4  48 00 00 08 */	b lbl_8062FDAC
lbl_8062FDA8:
/* 8062FDA8  38 80 00 25 */	li r4, 0x25
lbl_8062FDAC:
/* 8062FDAC  3C 60 80 64 */	lis r3, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 8062FDB0  38 63 9A 34 */	addi r3, r3, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 8062FDB4  7F 45 D3 78 */	mr r5, r26
/* 8062FDB8  38 C0 00 80 */	li r6, 0x80
/* 8062FDBC  4B A0 C5 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8062FDC0  7C 65 1B 78 */	mr r5, r3
/* 8062FDC4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8062FDC8  38 9C 00 58 */	addi r4, r28, 0x58
/* 8062FDCC  38 C0 00 01 */	li r6, 1
/* 8062FDD0  38 E0 00 00 */	li r7, 0
/* 8062FDD4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8062FDD8  39 00 00 00 */	li r8, 0
/* 8062FDDC  39 20 FF FF */	li r9, -1
/* 8062FDE0  4B 9D D9 2D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8062FDE4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8062FDE8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8062FDEC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8062FDF0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8062FDF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8062FDF8  4B D3 24 1D */	bl _restgpr_24
/* 8062FDFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8062FE00  7C 08 03 A6 */	mtlr r0
/* 8062FE04  38 21 00 50 */	addi r1, r1, 0x50
/* 8062FE08  4E 80 00 20 */	blr 
