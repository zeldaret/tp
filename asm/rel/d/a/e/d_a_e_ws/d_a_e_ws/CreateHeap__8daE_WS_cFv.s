lbl_807E6748:
/* 807E6748  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E674C  7C 08 02 A6 */	mflr r0
/* 807E6750  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E6754  39 61 00 30 */	addi r11, r1, 0x30
/* 807E6758  4B B7 BA 81 */	bl _savegpr_28
/* 807E675C  7C 7F 1B 78 */	mr r31, r3
/* 807E6760  3C 60 80 7E */	lis r3, d_a_e_ws__stringBase0@ha /* 0x807E7404@ha */
/* 807E6764  38 63 74 04 */	addi r3, r3, d_a_e_ws__stringBase0@l /* 0x807E7404@l */
/* 807E6768  38 80 00 0D */	li r4, 0xd
/* 807E676C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E6770  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E6774  3F A5 00 02 */	addis r29, r5, 2
/* 807E6778  3B BD C2 F8 */	addi r29, r29, -15624
/* 807E677C  7F A5 EB 78 */	mr r5, r29
/* 807E6780  38 C0 00 80 */	li r6, 0x80
/* 807E6784  4B 85 5B 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E6788  7C 7C 1B 78 */	mr r28, r3
/* 807E678C  38 60 00 58 */	li r3, 0x58
/* 807E6790  4B AE 84 BD */	bl __nw__FUl
/* 807E6794  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E6798  41 82 00 68 */	beq lbl_807E6800
/* 807E679C  3C 60 80 7E */	lis r3, d_a_e_ws__stringBase0@ha /* 0x807E7404@ha */
/* 807E67A0  38 63 74 04 */	addi r3, r3, d_a_e_ws__stringBase0@l /* 0x807E7404@l */
/* 807E67A4  38 80 00 07 */	li r4, 7
/* 807E67A8  7F A5 EB 78 */	mr r5, r29
/* 807E67AC  38 C0 00 80 */	li r6, 0x80
/* 807E67B0  4B 85 5B 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807E67B4  7C 67 1B 78 */	mr r7, r3
/* 807E67B8  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 807E67BC  90 01 00 08 */	stw r0, 8(r1)
/* 807E67C0  3C 00 00 08 */	lis r0, 8
/* 807E67C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E67C8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807E67CC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807E67D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807E67D4  7F C3 F3 78 */	mr r3, r30
/* 807E67D8  7F 84 E3 78 */	mr r4, r28
/* 807E67DC  38 A0 00 00 */	li r5, 0
/* 807E67E0  38 C0 00 00 */	li r6, 0
/* 807E67E4  39 00 00 00 */	li r8, 0
/* 807E67E8  3D 20 80 7E */	lis r9, lit_3804@ha /* 0x807E7308@ha */
/* 807E67EC  C0 29 73 08 */	lfs f1, lit_3804@l(r9)  /* 0x807E7308@l */
/* 807E67F0  39 20 00 00 */	li r9, 0
/* 807E67F4  39 40 FF FF */	li r10, -1
/* 807E67F8  4B 82 9F D9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807E67FC  7C 7E 1B 78 */	mr r30, r3
lbl_807E6800:
/* 807E6800  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 807E6804  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E6808  28 03 00 00 */	cmplwi r3, 0
/* 807E680C  41 82 00 10 */	beq lbl_807E681C
/* 807E6810  80 03 00 04 */	lwz r0, 4(r3)
/* 807E6814  28 00 00 00 */	cmplwi r0, 0
/* 807E6818  40 82 00 0C */	bne lbl_807E6824
lbl_807E681C:
/* 807E681C  38 60 00 00 */	li r3, 0
/* 807E6820  48 00 00 08 */	b lbl_807E6828
lbl_807E6824:
/* 807E6824  38 60 00 01 */	li r3, 1
lbl_807E6828:
/* 807E6828  39 61 00 30 */	addi r11, r1, 0x30
/* 807E682C  4B B7 B9 F9 */	bl _restgpr_28
/* 807E6830  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E6834  7C 08 03 A6 */	mtlr r0
/* 807E6838  38 21 00 30 */	addi r1, r1, 0x30
/* 807E683C  4E 80 00 20 */	blr 
