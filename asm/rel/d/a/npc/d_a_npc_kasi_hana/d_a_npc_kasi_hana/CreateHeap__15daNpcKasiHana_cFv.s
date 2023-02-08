lbl_80A1C5B0:
/* 80A1C5B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A1C5B4  7C 08 02 A6 */	mflr r0
/* 80A1C5B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1C5BC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1C5C0  4B 94 5C 1D */	bl _savegpr_29
/* 80A1C5C4  7C 7D 1B 78 */	mr r29, r3
/* 80A1C5C8  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1C5CC  3B E3 10 80 */	addi r31, r3, lit_3908@l /* 0x80A21080@l */
/* 80A1C5D0  3C 60 80 A2 */	lis r3, l_arcNames@ha /* 0x80A214B4@ha */
/* 80A1C5D4  38 63 14 B4 */	addi r3, r3, l_arcNames@l /* 0x80A214B4@l */
/* 80A1C5D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A1C5DC  38 80 00 05 */	li r4, 5
/* 80A1C5E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1C5E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1C5E8  3C A5 00 02 */	addis r5, r5, 2
/* 80A1C5EC  38 C0 00 80 */	li r6, 0x80
/* 80A1C5F0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A1C5F4  4B 61 FC F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A1C5F8  7C 7E 1B 78 */	mr r30, r3
/* 80A1C5FC  38 60 00 58 */	li r3, 0x58
/* 80A1C600  4B 8B 26 4D */	bl __nw__FUl
/* 80A1C604  7C 60 1B 79 */	or. r0, r3, r3
/* 80A1C608  41 82 00 48 */	beq lbl_80A1C650
/* 80A1C60C  38 1D 0B 48 */	addi r0, r29, 0xb48
/* 80A1C610  90 01 00 08 */	stw r0, 8(r1)
/* 80A1C614  3C 00 00 08 */	lis r0, 8
/* 80A1C618  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1C61C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80A1C620  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80A1C624  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1C628  7F C4 F3 78 */	mr r4, r30
/* 80A1C62C  38 A0 00 00 */	li r5, 0
/* 80A1C630  38 C0 00 00 */	li r6, 0
/* 80A1C634  38 E0 00 00 */	li r7, 0
/* 80A1C638  39 00 FF FF */	li r8, -1
/* 80A1C63C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80A1C640  39 20 00 00 */	li r9, 0
/* 80A1C644  39 40 FF FF */	li r10, -1
/* 80A1C648  4B 5F 41 89 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A1C64C  7C 60 1B 78 */	mr r0, r3
lbl_80A1C650:
/* 80A1C650  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80A1C654  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C658  28 03 00 00 */	cmplwi r3, 0
/* 80A1C65C  41 82 00 1C */	beq lbl_80A1C678
/* 80A1C660  80 03 00 04 */	lwz r0, 4(r3)
/* 80A1C664  28 00 00 00 */	cmplwi r0, 0
/* 80A1C668  40 82 00 10 */	bne lbl_80A1C678
/* 80A1C66C  4B 5F 4C A5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A1C670  38 00 00 00 */	li r0, 0
/* 80A1C674  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_80A1C678:
/* 80A1C678  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C67C  28 03 00 00 */	cmplwi r3, 0
/* 80A1C680  40 82 00 0C */	bne lbl_80A1C68C
/* 80A1C684  38 60 00 00 */	li r3, 0
/* 80A1C688  48 00 00 94 */	b lbl_80A1C71C
lbl_80A1C68C:
/* 80A1C68C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80A1C690  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A1C694  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80A1C698  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A1C69C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A1C6A0  38 00 00 01 */	li r0, 1
/* 80A1C6A4  98 03 00 54 */	stb r0, 0x54(r3)
/* 80A1C6A8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C6AC  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80A1C6B0  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80A1C6B4  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80A1C6B8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C6BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A1C6C0  38 C0 00 00 */	li r6, 0
/* 80A1C6C4  3C 60 80 A2 */	lis r3, ctrlJointCallBack__15daNpcKasiHana_cFP8J3DJointi@ha /* 0x80A1C984@ha */
/* 80A1C6C8  38 83 C9 84 */	addi r4, r3, ctrlJointCallBack__15daNpcKasiHana_cFP8J3DJointi@l /* 0x80A1C984@l */
/* 80A1C6CC  48 00 00 18 */	b lbl_80A1C6E4
lbl_80A1C6D0:
/* 80A1C6D0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A1C6D4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A1C6D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A1C6DC  90 83 00 04 */	stw r4, 4(r3)
/* 80A1C6E0  38 C6 00 01 */	addi r6, r6, 1
lbl_80A1C6E4:
/* 80A1C6E4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A1C6E8  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A1C6EC  7C 03 00 40 */	cmplw r3, r0
/* 80A1C6F0  41 80 FF E0 */	blt lbl_80A1C6D0
/* 80A1C6F4  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80A1C6F8  7F A3 EB 78 */	mr r3, r29
/* 80A1C6FC  38 80 00 04 */	li r4, 4
/* 80A1C700  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A1C704  38 A0 00 00 */	li r5, 0
/* 80A1C708  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A1C70C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1C710  7D 89 03 A6 */	mtctr r12
/* 80A1C714  4E 80 04 21 */	bctrl 
/* 80A1C718  38 60 00 01 */	li r3, 1
lbl_80A1C71C:
/* 80A1C71C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1C720  4B 94 5B 09 */	bl _restgpr_29
/* 80A1C724  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A1C728  7C 08 03 A6 */	mtlr r0
/* 80A1C72C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A1C730  4E 80 00 20 */	blr 
