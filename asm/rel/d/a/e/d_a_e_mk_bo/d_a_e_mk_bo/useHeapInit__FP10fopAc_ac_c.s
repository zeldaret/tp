lbl_8071EF24:
/* 8071EF24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071EF28  7C 08 02 A6 */	mflr r0
/* 8071EF2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071EF30  39 61 00 30 */	addi r11, r1, 0x30
/* 8071EF34  4B C4 32 A5 */	bl _savegpr_28
/* 8071EF38  7C 7E 1B 78 */	mr r30, r3
/* 8071EF3C  3C 60 80 72 */	lis r3, d_a_e_mk_bo__stringBase0@ha /* 0x8071F6D8@ha */
/* 8071EF40  38 63 F6 D8 */	addi r3, r3, d_a_e_mk_bo__stringBase0@l /* 0x8071F6D8@l */
/* 8071EF44  38 80 00 2E */	li r4, 0x2e
/* 8071EF48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8071EF4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8071EF50  3F E5 00 02 */	addis r31, r5, 2
/* 8071EF54  3B FF C2 F8 */	addi r31, r31, -15624
/* 8071EF58  7F E5 FB 78 */	mr r5, r31
/* 8071EF5C  38 C0 00 80 */	li r6, 0x80
/* 8071EF60  4B 91 D3 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071EF64  3C 80 00 08 */	lis r4, 8
/* 8071EF68  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8071EF6C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8071EF70  4B 8F 5C E5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8071EF74  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 8071EF78  80 1E 05 B4 */	lwz r0, 0x5b4(r30)
/* 8071EF7C  28 00 00 00 */	cmplwi r0, 0
/* 8071EF80  40 82 00 0C */	bne lbl_8071EF8C
/* 8071EF84  38 60 00 00 */	li r3, 0
/* 8071EF88  48 00 01 80 */	b lbl_8071F108
lbl_8071EF8C:
/* 8071EF8C  38 60 00 54 */	li r3, 0x54
/* 8071EF90  4B BA FC BD */	bl __nw__FUl
/* 8071EF94  7C 7D 1B 79 */	or. r29, r3, r3
/* 8071EF98  41 82 00 8C */	beq lbl_8071F024
/* 8071EF9C  3C 60 80 72 */	lis r3, d_a_e_mk_bo__stringBase0@ha /* 0x8071F6D8@ha */
/* 8071EFA0  38 63 F6 D8 */	addi r3, r3, d_a_e_mk_bo__stringBase0@l /* 0x8071F6D8@l */
/* 8071EFA4  38 80 00 06 */	li r4, 6
/* 8071EFA8  7F E5 FB 78 */	mr r5, r31
/* 8071EFAC  38 C0 00 80 */	li r6, 0x80
/* 8071EFB0  4B 91 D3 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071EFB4  7C 7C 1B 78 */	mr r28, r3
/* 8071EFB8  3C 60 80 72 */	lis r3, d_a_e_mk_bo__stringBase0@ha /* 0x8071F6D8@ha */
/* 8071EFBC  38 63 F6 D8 */	addi r3, r3, d_a_e_mk_bo__stringBase0@l /* 0x8071F6D8@l */
/* 8071EFC0  38 80 00 2F */	li r4, 0x2f
/* 8071EFC4  7F E5 FB 78 */	mr r5, r31
/* 8071EFC8  38 C0 00 80 */	li r6, 0x80
/* 8071EFCC  4B 91 D3 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071EFD0  7C 64 1B 78 */	mr r4, r3
/* 8071EFD4  38 00 00 01 */	li r0, 1
/* 8071EFD8  90 01 00 08 */	stw r0, 8(r1)
/* 8071EFDC  38 00 00 00 */	li r0, 0
/* 8071EFE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071EFE4  3C 00 00 08 */	lis r0, 8
/* 8071EFE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8071EFEC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8071EFF0  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8071EFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071EFF8  7F A3 EB 78 */	mr r3, r29
/* 8071EFFC  38 A0 00 00 */	li r5, 0
/* 8071F000  38 C0 00 00 */	li r6, 0
/* 8071F004  7F 87 E3 78 */	mr r7, r28
/* 8071F008  39 00 00 02 */	li r8, 2
/* 8071F00C  3D 20 80 72 */	lis r9, lit_3777@ha /* 0x8071F644@ha */
/* 8071F010  C0 29 F6 44 */	lfs f1, lit_3777@l(r9)  /* 0x8071F644@l */
/* 8071F014  39 20 00 00 */	li r9, 0
/* 8071F018  39 40 FF FF */	li r10, -1
/* 8071F01C  4B 8F 0C 31 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8071F020  7C 7D 1B 78 */	mr r29, r3
lbl_8071F024:
/* 8071F024  93 BE 09 B8 */	stw r29, 0x9b8(r30)
/* 8071F028  80 7E 09 B8 */	lwz r3, 0x9b8(r30)
/* 8071F02C  28 03 00 00 */	cmplwi r3, 0
/* 8071F030  41 82 00 10 */	beq lbl_8071F040
/* 8071F034  80 03 00 04 */	lwz r0, 4(r3)
/* 8071F038  28 00 00 00 */	cmplwi r0, 0
/* 8071F03C  40 82 00 0C */	bne lbl_8071F048
lbl_8071F040:
/* 8071F040  38 60 00 00 */	li r3, 0
/* 8071F044  48 00 00 C4 */	b lbl_8071F108
lbl_8071F048:
/* 8071F048  38 60 00 18 */	li r3, 0x18
/* 8071F04C  4B BA FC 01 */	bl __nw__FUl
/* 8071F050  7C 7D 1B 79 */	or. r29, r3, r3
/* 8071F054  41 82 00 20 */	beq lbl_8071F074
/* 8071F058  3C 80 80 72 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8071F80C@ha */
/* 8071F05C  38 04 F8 0C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8071F80C@l */
/* 8071F060  90 1D 00 00 */	stw r0, 0(r29)
/* 8071F064  38 80 00 00 */	li r4, 0
/* 8071F068  4B C0 93 95 */	bl init__12J3DFrameCtrlFs
/* 8071F06C  38 00 00 00 */	li r0, 0
/* 8071F070  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8071F074:
/* 8071F074  93 BE 09 BC */	stw r29, 0x9bc(r30)
/* 8071F078  80 1E 09 BC */	lwz r0, 0x9bc(r30)
/* 8071F07C  28 00 00 00 */	cmplwi r0, 0
/* 8071F080  40 82 00 0C */	bne lbl_8071F08C
/* 8071F084  38 60 00 00 */	li r3, 0
/* 8071F088  48 00 00 80 */	b lbl_8071F108
lbl_8071F08C:
/* 8071F08C  3C 60 80 72 */	lis r3, d_a_e_mk_bo__stringBase0@ha /* 0x8071F6D8@ha */
/* 8071F090  38 63 F6 D8 */	addi r3, r3, d_a_e_mk_bo__stringBase0@l /* 0x8071F6D8@l */
/* 8071F094  38 80 00 34 */	li r4, 0x34
/* 8071F098  7F E5 FB 78 */	mr r5, r31
/* 8071F09C  38 C0 00 80 */	li r6, 0x80
/* 8071F0A0  4B 91 D2 4D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8071F0A4  7C 65 1B 78 */	mr r5, r3
/* 8071F0A8  80 7E 09 B8 */	lwz r3, 0x9b8(r30)
/* 8071F0AC  80 63 00 04 */	lwz r3, 4(r3)
/* 8071F0B0  80 83 00 04 */	lwz r4, 4(r3)
/* 8071F0B4  80 7E 09 BC */	lwz r3, 0x9bc(r30)
/* 8071F0B8  38 84 00 58 */	addi r4, r4, 0x58
/* 8071F0BC  38 C0 00 01 */	li r6, 1
/* 8071F0C0  38 E0 00 02 */	li r7, 2
/* 8071F0C4  3D 00 80 72 */	lis r8, lit_3777@ha /* 0x8071F644@ha */
/* 8071F0C8  C0 28 F6 44 */	lfs f1, lit_3777@l(r8)  /* 0x8071F644@l */
/* 8071F0CC  39 00 00 00 */	li r8, 0
/* 8071F0D0  39 20 FF FF */	li r9, -1
/* 8071F0D4  4B 8E E5 69 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8071F0D8  2C 03 00 00 */	cmpwi r3, 0
/* 8071F0DC  40 82 00 0C */	bne lbl_8071F0E8
/* 8071F0E0  38 60 00 00 */	li r3, 0
/* 8071F0E4  48 00 00 24 */	b lbl_8071F108
lbl_8071F0E8:
/* 8071F0E8  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 8071F0EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8071F0F0  38 A0 00 01 */	li r5, 1
/* 8071F0F4  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 8071F0F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071F0FC  7D 89 03 A6 */	mtctr r12
/* 8071F100  4E 80 04 21 */	bctrl 
/* 8071F104  38 60 00 01 */	li r3, 1
lbl_8071F108:
/* 8071F108  39 61 00 30 */	addi r11, r1, 0x30
/* 8071F10C  4B C4 31 19 */	bl _restgpr_28
/* 8071F110  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071F114  7C 08 03 A6 */	mtlr r0
/* 8071F118  38 21 00 30 */	addi r1, r1, 0x30
/* 8071F11C  4E 80 00 20 */	blr 
