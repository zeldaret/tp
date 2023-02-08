lbl_806C651C:
/* 806C651C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806C6520  7C 08 02 A6 */	mflr r0
/* 806C6524  90 01 00 44 */	stw r0, 0x44(r1)
/* 806C6528  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806C652C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806C6530  39 61 00 30 */	addi r11, r1, 0x30
/* 806C6534  4B C9 BC 9D */	bl _savegpr_26
/* 806C6538  7C 7F 1B 78 */	mr r31, r3
/* 806C653C  38 60 00 54 */	li r3, 0x54
/* 806C6540  4B C0 87 0D */	bl __nw__FUl
/* 806C6544  7C 7C 1B 79 */	or. r28, r3, r3
/* 806C6548  41 82 00 9C */	beq lbl_806C65E4
/* 806C654C  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C6550  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C6554  38 80 00 11 */	li r4, 0x11
/* 806C6558  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C655C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C6560  3F 65 00 02 */	addis r27, r5, 2
/* 806C6564  3B 7B C2 F8 */	addi r27, r27, -15624
/* 806C6568  7F 65 DB 78 */	mr r5, r27
/* 806C656C  38 C0 00 80 */	li r6, 0x80
/* 806C6570  4B 97 5D 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C6574  7C 7D 1B 78 */	mr r29, r3
/* 806C6578  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C657C  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C6580  38 80 00 1D */	li r4, 0x1d
/* 806C6584  7F 65 DB 78 */	mr r5, r27
/* 806C6588  38 C0 00 80 */	li r6, 0x80
/* 806C658C  4B 97 5D 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C6590  7C 64 1B 78 */	mr r4, r3
/* 806C6594  38 00 00 01 */	li r0, 1
/* 806C6598  90 01 00 08 */	stw r0, 8(r1)
/* 806C659C  38 00 00 00 */	li r0, 0
/* 806C65A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C65A4  3C 00 00 08 */	lis r0, 8
/* 806C65A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C65AC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806C65B0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806C65B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C65B8  7F 83 E3 78 */	mr r3, r28
/* 806C65BC  38 A0 00 00 */	li r5, 0
/* 806C65C0  38 C0 00 00 */	li r6, 0
/* 806C65C4  7F A7 EB 78 */	mr r7, r29
/* 806C65C8  39 00 00 02 */	li r8, 2
/* 806C65CC  3D 20 80 6C */	lis r9, lit_3908@ha /* 0x806C74F0@ha */
/* 806C65D0  C0 29 74 F0 */	lfs f1, lit_3908@l(r9)  /* 0x806C74F0@l */
/* 806C65D4  39 20 00 00 */	li r9, 0
/* 806C65D8  39 40 FF FF */	li r10, -1
/* 806C65DC  4B 94 96 71 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806C65E0  7C 7C 1B 78 */	mr r28, r3
lbl_806C65E4:
/* 806C65E4  93 9F 05 B8 */	stw r28, 0x5b8(r31)
/* 806C65E8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806C65EC  28 03 00 00 */	cmplwi r3, 0
/* 806C65F0  41 82 00 10 */	beq lbl_806C6600
/* 806C65F4  80 03 00 04 */	lwz r0, 4(r3)
/* 806C65F8  28 00 00 00 */	cmplwi r0, 0
/* 806C65FC  40 82 00 0C */	bne lbl_806C6608
lbl_806C6600:
/* 806C6600  38 60 00 00 */	li r3, 0
/* 806C6604  48 00 02 70 */	b lbl_806C6874
lbl_806C6608:
/* 806C6608  38 60 00 54 */	li r3, 0x54
/* 806C660C  4B C0 86 41 */	bl __nw__FUl
/* 806C6610  7C 7C 1B 79 */	or. r28, r3, r3
/* 806C6614  41 82 00 9C */	beq lbl_806C66B0
/* 806C6618  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C661C  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C6620  38 80 00 1A */	li r4, 0x1a
/* 806C6624  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C6628  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C662C  3F 65 00 02 */	addis r27, r5, 2
/* 806C6630  3B 7B C2 F8 */	addi r27, r27, -15624
/* 806C6634  7F 65 DB 78 */	mr r5, r27
/* 806C6638  38 C0 00 80 */	li r6, 0x80
/* 806C663C  4B 97 5C B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C6640  7C 7D 1B 78 */	mr r29, r3
/* 806C6644  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C6648  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C664C  38 80 00 1F */	li r4, 0x1f
/* 806C6650  7F 65 DB 78 */	mr r5, r27
/* 806C6654  38 C0 00 80 */	li r6, 0x80
/* 806C6658  4B 97 5C 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C665C  7C 64 1B 78 */	mr r4, r3
/* 806C6660  38 00 00 01 */	li r0, 1
/* 806C6664  90 01 00 08 */	stw r0, 8(r1)
/* 806C6668  38 00 00 00 */	li r0, 0
/* 806C666C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C6670  3C 00 00 08 */	lis r0, 8
/* 806C6674  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C6678  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806C667C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806C6680  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6684  7F 83 E3 78 */	mr r3, r28
/* 806C6688  38 A0 00 00 */	li r5, 0
/* 806C668C  38 C0 00 00 */	li r6, 0
/* 806C6690  7F A7 EB 78 */	mr r7, r29
/* 806C6694  39 00 00 02 */	li r8, 2
/* 806C6698  3D 20 80 6C */	lis r9, lit_3908@ha /* 0x806C74F0@ha */
/* 806C669C  C0 29 74 F0 */	lfs f1, lit_3908@l(r9)  /* 0x806C74F0@l */
/* 806C66A0  39 20 00 00 */	li r9, 0
/* 806C66A4  39 40 FF FF */	li r10, -1
/* 806C66A8  4B 94 95 A5 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806C66AC  7C 7C 1B 78 */	mr r28, r3
lbl_806C66B0:
/* 806C66B0  93 9F 05 BC */	stw r28, 0x5bc(r31)
/* 806C66B4  38 00 00 1A */	li r0, 0x1a
/* 806C66B8  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 806C66BC  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806C66C0  28 03 00 00 */	cmplwi r3, 0
/* 806C66C4  41 82 00 10 */	beq lbl_806C66D4
/* 806C66C8  80 03 00 04 */	lwz r0, 4(r3)
/* 806C66CC  28 00 00 00 */	cmplwi r0, 0
/* 806C66D0  40 82 00 0C */	bne lbl_806C66DC
lbl_806C66D4:
/* 806C66D4  38 60 00 00 */	li r3, 0
/* 806C66D8  48 00 01 9C */	b lbl_806C6874
lbl_806C66DC:
/* 806C66DC  38 60 00 18 */	li r3, 0x18
/* 806C66E0  4B C0 85 6D */	bl __nw__FUl
/* 806C66E4  7C 7C 1B 79 */	or. r28, r3, r3
/* 806C66E8  41 82 00 20 */	beq lbl_806C6708
/* 806C66EC  3C 80 80 6C */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x806C7908@ha */
/* 806C66F0  38 04 79 08 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x806C7908@l */
/* 806C66F4  90 1C 00 00 */	stw r0, 0(r28)
/* 806C66F8  38 80 00 00 */	li r4, 0
/* 806C66FC  4B C6 1D 01 */	bl init__12J3DFrameCtrlFs
/* 806C6700  38 00 00 00 */	li r0, 0
/* 806C6704  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_806C6708:
/* 806C6708  93 9F 05 C0 */	stw r28, 0x5c0(r31)
/* 806C670C  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 806C6710  28 00 00 00 */	cmplwi r0, 0
/* 806C6714  40 82 00 0C */	bne lbl_806C6720
/* 806C6718  38 60 00 00 */	li r3, 0
/* 806C671C  48 00 01 58 */	b lbl_806C6874
lbl_806C6720:
/* 806C6720  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C6724  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C6728  38 80 00 23 */	li r4, 0x23
/* 806C672C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C6730  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C6734  3F C5 00 02 */	addis r30, r5, 2
/* 806C6738  3B DE C2 F8 */	addi r30, r30, -15624
/* 806C673C  7F C5 F3 78 */	mr r5, r30
/* 806C6740  38 C0 00 80 */	li r6, 0x80
/* 806C6744  4B 97 5B A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C6748  7C 65 1B 78 */	mr r5, r3
/* 806C674C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806C6750  80 63 00 04 */	lwz r3, 4(r3)
/* 806C6754  80 83 00 04 */	lwz r4, 4(r3)
/* 806C6758  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806C675C  38 84 00 58 */	addi r4, r4, 0x58
/* 806C6760  38 C0 00 01 */	li r6, 1
/* 806C6764  38 E0 00 00 */	li r7, 0
/* 806C6768  3D 00 80 6C */	lis r8, lit_3908@ha /* 0x806C74F0@ha */
/* 806C676C  C0 28 74 F0 */	lfs f1, lit_3908@l(r8)  /* 0x806C74F0@l */
/* 806C6770  39 00 00 00 */	li r8, 0
/* 806C6774  39 20 FF FF */	li r9, -1
/* 806C6778  4B 94 6F 95 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806C677C  2C 03 00 00 */	cmpwi r3, 0
/* 806C6780  40 82 00 0C */	bne lbl_806C678C
/* 806C6784  38 60 00 00 */	li r3, 0
/* 806C6788  48 00 00 EC */	b lbl_806C6874
lbl_806C678C:
/* 806C678C  3C 60 80 6C */	lis r3, lit_3907@ha /* 0x806C74EC@ha */
/* 806C6790  C0 03 74 EC */	lfs f0, lit_3907@l(r3)  /* 0x806C74EC@l */
/* 806C6794  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806C6798  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 806C679C  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C67A0  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C67A4  38 80 00 20 */	li r4, 0x20
/* 806C67A8  7F C5 F3 78 */	mr r5, r30
/* 806C67AC  38 C0 00 80 */	li r6, 0x80
/* 806C67B0  4B 97 5B 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C67B4  7C 7B 1B 78 */	mr r27, r3
/* 806C67B8  3B 40 00 00 */	li r26, 0
/* 806C67BC  3B A0 00 00 */	li r29, 0
/* 806C67C0  3F 80 11 00 */	lis r28, 0x1100 /* 0x11000084@ha */
/* 806C67C4  3C 60 80 6C */	lis r3, lit_3908@ha /* 0x806C74F0@ha */
/* 806C67C8  C3 E3 74 F0 */	lfs f31, lit_3908@l(r3)  /* 0x806C74F0@l */
lbl_806C67CC:
/* 806C67CC  7F 63 DB 78 */	mr r3, r27
/* 806C67D0  3C 80 00 08 */	lis r4, 8
/* 806C67D4  38 BC 00 84 */	addi r5, r28, 0x0084 /* 0x11000084@l */
/* 806C67D8  4B 94 E4 7D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806C67DC  7C 9F EA 14 */	add r4, r31, r29
/* 806C67E0  90 64 08 28 */	stw r3, 0x828(r4)
/* 806C67E4  80 04 08 28 */	lwz r0, 0x828(r4)
/* 806C67E8  28 00 00 00 */	cmplwi r0, 0
/* 806C67EC  40 82 00 0C */	bne lbl_806C67F8
/* 806C67F0  38 60 00 00 */	li r3, 0
/* 806C67F4  48 00 00 80 */	b lbl_806C6874
lbl_806C67F8:
/* 806C67F8  D3 E4 08 B8 */	stfs f31, 0x8b8(r4)
/* 806C67FC  3B 5A 00 01 */	addi r26, r26, 1
/* 806C6800  2C 1A 00 12 */	cmpwi r26, 0x12
/* 806C6804  3B BD 00 04 */	addi r29, r29, 4
/* 806C6808  41 80 FF C4 */	blt lbl_806C67CC
/* 806C680C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C6810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C6814  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 806C6818  3C 80 80 6C */	lis r4, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C681C  38 84 76 B8 */	addi r4, r4, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C6820  38 84 00 05 */	addi r4, r4, 5
/* 806C6824  4B CA 21 71 */	bl strcmp
/* 806C6828  2C 03 00 00 */	cmpwi r3, 0
/* 806C682C  40 82 00 44 */	bne lbl_806C6870
/* 806C6830  3C 60 80 6C */	lis r3, d_a_e_gb__stringBase0@ha /* 0x806C76B8@ha */
/* 806C6834  38 63 76 B8 */	addi r3, r3, d_a_e_gb__stringBase0@l /* 0x806C76B8@l */
/* 806C6838  38 80 00 1E */	li r4, 0x1e
/* 806C683C  7F C5 F3 78 */	mr r5, r30
/* 806C6840  38 C0 00 80 */	li r6, 0x80
/* 806C6844  4B 97 5A A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806C6848  3C 80 00 08 */	lis r4, 8
/* 806C684C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806C6850  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806C6854  4B 94 E4 01 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806C6858  90 7F 06 6C */	stw r3, 0x66c(r31)
/* 806C685C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806C6860  28 00 00 00 */	cmplwi r0, 0
/* 806C6864  40 82 00 0C */	bne lbl_806C6870
/* 806C6868  38 60 00 00 */	li r3, 0
/* 806C686C  48 00 00 08 */	b lbl_806C6874
lbl_806C6870:
/* 806C6870  38 60 00 01 */	li r3, 1
lbl_806C6874:
/* 806C6874  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806C6878  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806C687C  39 61 00 30 */	addi r11, r1, 0x30
/* 806C6880  4B C9 B9 9D */	bl _restgpr_26
/* 806C6884  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C6888  7C 08 03 A6 */	mtlr r0
/* 806C688C  38 21 00 40 */	addi r1, r1, 0x40
/* 806C6890  4E 80 00 20 */	blr 
