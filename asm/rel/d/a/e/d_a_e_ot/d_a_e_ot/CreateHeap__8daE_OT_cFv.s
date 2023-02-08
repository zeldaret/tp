lbl_8073C0EC:
/* 8073C0EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073C0F0  7C 08 02 A6 */	mflr r0
/* 8073C0F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073C0F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8073C0FC  4B C2 60 DD */	bl _savegpr_28
/* 8073C100  7C 7E 1B 78 */	mr r30, r3
/* 8073C104  3C 60 80 74 */	lis r3, d_a_e_ot__stringBase0@ha /* 0x8073CF6C@ha */
/* 8073C108  38 63 CF 6C */	addi r3, r3, d_a_e_ot__stringBase0@l /* 0x8073CF6C@l */
/* 8073C10C  38 80 00 0E */	li r4, 0xe
/* 8073C110  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073C114  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073C118  3F E5 00 02 */	addis r31, r5, 2
/* 8073C11C  3B FF C2 F8 */	addi r31, r31, -15624
/* 8073C120  7F E5 FB 78 */	mr r5, r31
/* 8073C124  38 C0 00 80 */	li r6, 0x80
/* 8073C128  4B 90 01 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073C12C  7C 7C 1B 78 */	mr r28, r3
/* 8073C130  38 60 00 58 */	li r3, 0x58
/* 8073C134  4B B9 2B 19 */	bl __nw__FUl
/* 8073C138  7C 7D 1B 79 */	or. r29, r3, r3
/* 8073C13C  41 82 00 68 */	beq lbl_8073C1A4
/* 8073C140  3C 60 80 74 */	lis r3, d_a_e_ot__stringBase0@ha /* 0x8073CF6C@ha */
/* 8073C144  38 63 CF 6C */	addi r3, r3, d_a_e_ot__stringBase0@l /* 0x8073CF6C@l */
/* 8073C148  38 80 00 06 */	li r4, 6
/* 8073C14C  7F E5 FB 78 */	mr r5, r31
/* 8073C150  38 C0 00 80 */	li r6, 0x80
/* 8073C154  4B 90 01 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073C158  7C 67 1B 78 */	mr r7, r3
/* 8073C15C  38 1E 05 C0 */	addi r0, r30, 0x5c0
/* 8073C160  90 01 00 08 */	stw r0, 8(r1)
/* 8073C164  3C 00 00 08 */	lis r0, 8
/* 8073C168  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073C16C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8073C170  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8073C174  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073C178  7F A3 EB 78 */	mr r3, r29
/* 8073C17C  7F 84 E3 78 */	mr r4, r28
/* 8073C180  38 A0 00 00 */	li r5, 0
/* 8073C184  38 C0 00 00 */	li r6, 0
/* 8073C188  39 00 00 00 */	li r8, 0
/* 8073C18C  3D 20 80 74 */	lis r9, lit_3912@ha /* 0x8073CEB0@ha */
/* 8073C190  C0 29 CE B0 */	lfs f1, lit_3912@l(r9)  /* 0x8073CEB0@l */
/* 8073C194  39 20 00 00 */	li r9, 0
/* 8073C198  39 40 FF FF */	li r10, -1
/* 8073C19C  4B 8D 46 35 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8073C1A0  7C 7D 1B 78 */	mr r29, r3
lbl_8073C1A4:
/* 8073C1A4  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 8073C1A8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8073C1AC  28 03 00 00 */	cmplwi r3, 0
/* 8073C1B0  41 82 00 10 */	beq lbl_8073C1C0
/* 8073C1B4  80 03 00 04 */	lwz r0, 4(r3)
/* 8073C1B8  28 00 00 00 */	cmplwi r0, 0
/* 8073C1BC  40 82 00 0C */	bne lbl_8073C1C8
lbl_8073C1C0:
/* 8073C1C0  38 60 00 00 */	li r3, 0
/* 8073C1C4  48 00 00 D8 */	b lbl_8073C29C
lbl_8073C1C8:
/* 8073C1C8  3C 60 80 74 */	lis r3, d_a_e_ot__stringBase0@ha /* 0x8073CF6C@ha */
/* 8073C1CC  38 63 CF 6C */	addi r3, r3, d_a_e_ot__stringBase0@l /* 0x8073CF6C@l */
/* 8073C1D0  38 80 00 0B */	li r4, 0xb
/* 8073C1D4  7F E5 FB 78 */	mr r5, r31
/* 8073C1D8  38 C0 00 80 */	li r6, 0x80
/* 8073C1DC  4B 90 01 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073C1E0  38 80 00 00 */	li r4, 0
/* 8073C1E4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 8073C1E8  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 8073C1EC  4B 8D 8A 69 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8073C1F0  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 8073C1F4  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 8073C1F8  28 00 00 00 */	cmplwi r0, 0
/* 8073C1FC  40 82 00 0C */	bne lbl_8073C208
/* 8073C200  38 60 00 00 */	li r3, 0
/* 8073C204  48 00 00 98 */	b lbl_8073C29C
lbl_8073C208:
/* 8073C208  38 60 00 18 */	li r3, 0x18
/* 8073C20C  4B B9 2A 41 */	bl __nw__FUl
/* 8073C210  7C 7D 1B 79 */	or. r29, r3, r3
/* 8073C214  41 82 00 20 */	beq lbl_8073C234
/* 8073C218  3C 80 80 74 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8073D24C@ha */
/* 8073C21C  38 04 D2 4C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8073D24C@l */
/* 8073C220  90 1D 00 00 */	stw r0, 0(r29)
/* 8073C224  38 80 00 00 */	li r4, 0
/* 8073C228  4B BE C1 D5 */	bl init__12J3DFrameCtrlFs
/* 8073C22C  38 00 00 00 */	li r0, 0
/* 8073C230  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8073C234:
/* 8073C234  93 BE 05 BC */	stw r29, 0x5bc(r30)
/* 8073C238  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 8073C23C  28 00 00 00 */	cmplwi r0, 0
/* 8073C240  40 82 00 0C */	bne lbl_8073C24C
/* 8073C244  38 60 00 00 */	li r3, 0
/* 8073C248  48 00 00 54 */	b lbl_8073C29C
lbl_8073C24C:
/* 8073C24C  3C 60 80 74 */	lis r3, d_a_e_ot__stringBase0@ha /* 0x8073CF6C@ha */
/* 8073C250  38 63 CF 6C */	addi r3, r3, d_a_e_ot__stringBase0@l /* 0x8073CF6C@l */
/* 8073C254  38 80 00 11 */	li r4, 0x11
/* 8073C258  7F E5 FB 78 */	mr r5, r31
/* 8073C25C  38 C0 00 80 */	li r6, 0x80
/* 8073C260  4B 90 00 8D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073C264  7C 65 1B 78 */	mr r5, r3
/* 8073C268  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8073C26C  80 83 00 04 */	lwz r4, 4(r3)
/* 8073C270  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8073C274  38 84 00 58 */	addi r4, r4, 0x58
/* 8073C278  38 C0 00 01 */	li r6, 1
/* 8073C27C  38 E0 00 00 */	li r7, 0
/* 8073C280  3D 00 80 74 */	lis r8, lit_3912@ha /* 0x8073CEB0@ha */
/* 8073C284  C0 28 CE B0 */	lfs f1, lit_3912@l(r8)  /* 0x8073CEB0@l */
/* 8073C288  39 00 00 00 */	li r8, 0
/* 8073C28C  39 20 FF FF */	li r9, -1
/* 8073C290  4B 8D 13 AD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8073C294  30 03 FF FF */	addic r0, r3, -1
/* 8073C298  7C 60 19 10 */	subfe r3, r0, r3
lbl_8073C29C:
/* 8073C29C  39 61 00 30 */	addi r11, r1, 0x30
/* 8073C2A0  4B C2 5F 85 */	bl _restgpr_28
/* 8073C2A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073C2A8  7C 08 03 A6 */	mtlr r0
/* 8073C2AC  38 21 00 30 */	addi r1, r1, 0x30
/* 8073C2B0  4E 80 00 20 */	blr 
