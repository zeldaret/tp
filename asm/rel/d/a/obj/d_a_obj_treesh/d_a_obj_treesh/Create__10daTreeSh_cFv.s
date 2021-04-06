lbl_80D1F358:
/* 80D1F358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F35C  7C 08 02 A6 */	mflr r0
/* 80D1F360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F368  7C 7F 1B 78 */	mr r31, r3
/* 80D1F36C  4B FF FE ED */	bl initBaseMtx__10daTreeSh_cFv
/* 80D1F370  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1F374  38 03 00 24 */	addi r0, r3, 0x24
/* 80D1F378  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D1F37C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1F380  80 63 00 04 */	lwz r3, 4(r3)
/* 80D1F384  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D1F388  80 83 00 00 */	lwz r4, 0(r3)
/* 80D1F38C  7F E3 FB 78 */	mr r3, r31
/* 80D1F390  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80D1F394  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80D1F398  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80D1F39C  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80D1F3A0  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80D1F3A4  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80D1F3A8  4B 2F B1 A1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D1F3AC  3C 60 80 D2 */	lis r3, l_arcName@ha /* 0x80D1F8F4@ha */
/* 80D1F3B0  38 63 F8 F4 */	addi r3, r3, l_arcName@l /* 0x80D1F8F4@l */
/* 80D1F3B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1F3B8  38 80 00 04 */	li r4, 4
/* 80D1F3BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1F3C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1F3C4  3C A5 00 02 */	addis r5, r5, 2
/* 80D1F3C8  38 C0 00 80 */	li r6, 0x80
/* 80D1F3CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D1F3D0  4B 31 CF 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1F3D4  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80D1F3D8  80 A4 00 04 */	lwz r5, 4(r4)
/* 80D1F3DC  3C 80 80 D2 */	lis r4, nodeCallBack__FP8J3DJointi@ha /* 0x80D1F190@ha */
/* 80D1F3E0  38 04 F1 90 */	addi r0, r4, nodeCallBack__FP8J3DJointi@l /* 0x80D1F190@l */
/* 80D1F3E4  90 05 00 04 */	stw r0, 4(r5)
/* 80D1F3E8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D1F3EC  80 63 00 08 */	lwz r3, 8(r3)
/* 80D1F3F0  90 03 00 04 */	stw r0, 4(r3)
/* 80D1F3F4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1F3F8  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80D1F3FC  38 60 00 01 */	li r3, 1
/* 80D1F400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F408  7C 08 03 A6 */	mtlr r0
/* 80D1F40C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F410  4E 80 00 20 */	blr 
