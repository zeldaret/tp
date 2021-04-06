lbl_80B0BBC8:
/* 80B0BBC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B0BBCC  7C 08 02 A6 */	mflr r0
/* 80B0BBD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0BBD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0BBD8  4B 85 66 01 */	bl _savegpr_28
/* 80B0BBDC  7C 7F 1B 78 */	mr r31, r3
/* 80B0BBE0  3C 60 80 B1 */	lis r3, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B0BBE4  38 63 C3 A0 */	addi r3, r3, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B0BBE8  38 83 00 4B */	addi r4, r3, 0x4b
/* 80B0BBEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0BBF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0BBF4  3F A5 00 02 */	addis r29, r5, 2
/* 80B0BBF8  3B BD C2 F8 */	addi r29, r29, -15624
/* 80B0BBFC  7F A5 EB 78 */	mr r5, r29
/* 80B0BC00  38 C0 00 80 */	li r6, 0x80
/* 80B0BC04  4B 53 07 79 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80B0BC08  7C 7C 1B 78 */	mr r28, r3
/* 80B0BC0C  38 60 00 58 */	li r3, 0x58
/* 80B0BC10  4B 7C 30 3D */	bl __nw__FUl
/* 80B0BC14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B0BC18  41 82 00 68 */	beq lbl_80B0BC80
/* 80B0BC1C  3C 60 80 B1 */	lis r3, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B0BC20  38 63 C3 A0 */	addi r3, r3, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B0BC24  38 80 00 06 */	li r4, 6
/* 80B0BC28  7F A5 EB 78 */	mr r5, r29
/* 80B0BC2C  38 C0 00 80 */	li r6, 0x80
/* 80B0BC30  4B 53 06 BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B0BC34  7C 67 1B 78 */	mr r7, r3
/* 80B0BC38  38 1F 05 74 */	addi r0, r31, 0x574
/* 80B0BC3C  90 01 00 08 */	stw r0, 8(r1)
/* 80B0BC40  3C 00 00 08 */	lis r0, 8
/* 80B0BC44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0BC48  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80B0BC4C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80B0BC50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0BC54  7F C3 F3 78 */	mr r3, r30
/* 80B0BC58  7F 84 E3 78 */	mr r4, r28
/* 80B0BC5C  38 A0 00 00 */	li r5, 0
/* 80B0BC60  38 C0 00 00 */	li r6, 0
/* 80B0BC64  39 00 00 00 */	li r8, 0
/* 80B0BC68  3D 20 80 B1 */	lis r9, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B0BC6C  C0 29 C1 C4 */	lfs f1, lit_3999@l(r9)  /* 0x80B0C1C4@l */
/* 80B0BC70  39 20 00 00 */	li r9, 0
/* 80B0BC74  39 40 FF FF */	li r10, -1
/* 80B0BC78  4B 50 4B 59 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B0BC7C  7C 7E 1B 78 */	mr r30, r3
lbl_80B0BC80:
/* 80B0BC80  93 DF 05 70 */	stw r30, 0x570(r31)
/* 80B0BC84  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B0BC88  28 03 00 00 */	cmplwi r3, 0
/* 80B0BC8C  41 82 00 10 */	beq lbl_80B0BC9C
/* 80B0BC90  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B0BC94  28 05 00 00 */	cmplwi r5, 0
/* 80B0BC98  40 82 00 0C */	bne lbl_80B0BCA4
lbl_80B0BC9C:
/* 80B0BC9C  38 60 00 00 */	li r3, 0
/* 80B0BCA0  48 00 00 4C */	b lbl_80B0BCEC
lbl_80B0BCA4:
/* 80B0BCA4  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B0BCA8  38 E0 00 00 */	li r7, 0
/* 80B0BCAC  3C 60 80 B1 */	lis r3, JointCallBack__10daNPC_TK_cFP8J3DJointi@ha /* 0x80B0BB7C@ha */
/* 80B0BCB0  38 83 BB 7C */	addi r4, r3, JointCallBack__10daNPC_TK_cFP8J3DJointi@l /* 0x80B0BB7C@l */
/* 80B0BCB4  48 00 00 20 */	b lbl_80B0BCD4
lbl_80B0BCB8:
/* 80B0BCB8  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80B0BCBC  41 82 00 14 */	beq lbl_80B0BCD0
/* 80B0BCC0  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80B0BCC4  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80B0BCC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B0BCCC  90 83 00 04 */	stw r4, 4(r3)
lbl_80B0BCD0:
/* 80B0BCD0  38 E7 00 01 */	addi r7, r7, 1
lbl_80B0BCD4:
/* 80B0BCD4  80 C5 00 04 */	lwz r6, 4(r5)
/* 80B0BCD8  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80B0BCDC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80B0BCE0  7C 00 18 40 */	cmplw r0, r3
/* 80B0BCE4  41 80 FF D4 */	blt lbl_80B0BCB8
/* 80B0BCE8  38 60 00 01 */	li r3, 1
lbl_80B0BCEC:
/* 80B0BCEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0BCF0  4B 85 65 35 */	bl _restgpr_28
/* 80B0BCF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B0BCF8  7C 08 03 A6 */	mtlr r0
/* 80B0BCFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B0BD00  4E 80 00 20 */	blr 
