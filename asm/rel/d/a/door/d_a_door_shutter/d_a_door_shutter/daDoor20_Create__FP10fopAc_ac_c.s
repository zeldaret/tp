lbl_80466618:
/* 80466618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046661C  7C 08 02 A6 */	mflr r0
/* 80466620  90 01 00 24 */	stw r0, 0x24(r1)
/* 80466624  39 61 00 20 */	addi r11, r1, 0x20
/* 80466628  4B EF BB B5 */	bl _savegpr_29
/* 8046662C  7C 7F 1B 78 */	mr r31, r3
/* 80466630  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80466634  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80466638  40 82 00 B4 */	bne lbl_804666EC
/* 8046663C  7F E0 FB 79 */	or. r0, r31, r31
/* 80466640  41 82 00 A0 */	beq lbl_804666E0
/* 80466644  7C 1E 03 78 */	mr r30, r0
/* 80466648  4B BB 25 1D */	bl __ct__10fopAc_ac_cFv
/* 8046664C  3C 60 80 46 */	lis r3, __vt__10daDoor20_c@ha /* 0x8046732C@ha */
/* 80466650  38 03 73 2C */	addi r0, r3, __vt__10daDoor20_c@l /* 0x8046732C@l */
/* 80466654  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80466658  3B BE 05 84 */	addi r29, r30, 0x584
/* 8046665C  3C 60 80 46 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80467320@ha */
/* 80466660  38 03 73 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80467320@l */
/* 80466664  90 1E 05 84 */	stw r0, 0x584(r30)
/* 80466668  7F A3 EB 78 */	mr r3, r29
/* 8046666C  38 80 00 00 */	li r4, 0
/* 80466670  4B EC 1D 8D */	bl init__12J3DFrameCtrlFs
/* 80466674  38 00 00 00 */	li r0, 0
/* 80466678  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8046667C  3B BE 05 A0 */	addi r29, r30, 0x5a0
/* 80466680  3C 60 80 46 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80467320@ha */
/* 80466684  38 03 73 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80467320@l */
/* 80466688  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 8046668C  7F A3 EB 78 */	mr r3, r29
/* 80466690  38 80 00 00 */	li r4, 0
/* 80466694  4B EC 1D 69 */	bl init__12J3DFrameCtrlFs
/* 80466698  38 00 00 00 */	li r0, 0
/* 8046669C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 804666A0  38 7E 06 24 */	addi r3, r30, 0x624
/* 804666A4  4B DE 38 5D */	bl __ct__10dMsgFlow_cFv
/* 804666A8  3B BE 06 E0 */	addi r29, r30, 0x6e0
/* 804666AC  7F A3 EB 78 */	mr r3, r29
/* 804666B0  4B C0 F9 F1 */	bl __ct__9dBgS_AcchFv
/* 804666B4  3C 60 80 46 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x804672FC@ha */
/* 804666B8  38 63 72 FC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x804672FC@l */
/* 804666BC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 804666C0  38 03 00 0C */	addi r0, r3, 0xc
/* 804666C4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 804666C8  38 03 00 18 */	addi r0, r3, 0x18
/* 804666CC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 804666D0  38 7D 00 14 */	addi r3, r29, 0x14
/* 804666D4  4B C1 27 95 */	bl SetObj__16dBgS_PolyPassChkFv
/* 804666D8  38 7E 08 B8 */	addi r3, r30, 0x8b8
/* 804666DC  4B C0 F7 D1 */	bl __ct__12dBgS_AcchCirFv
lbl_804666E0:
/* 804666E0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804666E4  60 00 00 08 */	ori r0, r0, 8
/* 804666E8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804666EC:
/* 804666EC  7F E3 FB 78 */	mr r3, r31
/* 804666F0  4B FF C8 3D */	bl create__10daDoor20_cFv
/* 804666F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804666F8  4B EF BB 31 */	bl _restgpr_29
/* 804666FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80466700  7C 08 03 A6 */	mtlr r0
/* 80466704  38 21 00 20 */	addi r1, r1, 0x20
/* 80466708  4E 80 00 20 */	blr 
