lbl_80B9DE48:
/* 80B9DE48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B9DE4C  7C 08 02 A6 */	mflr r0
/* 80B9DE50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B9DE54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B9DE58  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B9DE5C  7C 7F 1B 78 */	mr r31, r3
/* 80B9DE60  38 7F 06 08 */	addi r3, r31, 0x608
/* 80B9DE64  4B 4E 65 FC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80B9DE68  28 03 00 00 */	cmplwi r3, 0
/* 80B9DE6C  41 82 01 F4 */	beq lbl_80B9E060
/* 80B9DE70  38 7F 06 08 */	addi r3, r31, 0x608
/* 80B9DE74  4B 4E 66 D4 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80B9DE78  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80B9DE7C  74 60 D8 00 */	andis. r0, r3, 0xd800
/* 80B9DE80  40 82 00 0C */	bne lbl_80B9DE8C
/* 80B9DE84  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 80B9DE88  41 82 00 74 */	beq lbl_80B9DEFC
lbl_80B9DE8C:
/* 80B9DE8C  80 9F 09 80 */	lwz r4, 0x980(r31)
/* 80B9DE90  28 04 00 00 */	cmplwi r4, 0
/* 80B9DE94  41 82 00 1C */	beq lbl_80B9DEB0
/* 80B9DE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9DEA0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9DEA4  4B 4D 63 AC */	b Release__4cBgSFP9dBgW_Base
/* 80B9DEA8  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80B9DEAC  4B 4D DB 14 */	b Move__4dBgWFv
lbl_80B9DEB0:
/* 80B9DEB0  38 61 00 24 */	addi r3, r1, 0x24
/* 80B9DEB4  38 80 00 00 */	li r4, 0
/* 80B9DEB8  A8 BF 04 B6 */	lha r5, 0x4b6(r31)
/* 80B9DEBC  38 C0 00 00 */	li r6, 0
/* 80B9DEC0  4B 6C 95 34 */	b __ct__5csXyzFsss
/* 80B9DEC4  38 00 00 00 */	li r0, 0
/* 80B9DEC8  90 01 00 08 */	stw r0, 8(r1)
/* 80B9DECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DED0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B9DED4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B9DED8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B9DEDC  38 A0 FF FF */	li r5, -1
/* 80B9DEE0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9DEE4  7C 06 07 74 */	extsb r6, r0
/* 80B9DEE8  38 E1 00 24 */	addi r7, r1, 0x24
/* 80B9DEEC  39 00 00 00 */	li r8, 0
/* 80B9DEF0  39 20 00 00 */	li r9, 0
/* 80B9DEF4  39 40 00 00 */	li r10, 0
/* 80B9DEF8  4B 47 E0 6C */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
lbl_80B9DEFC:
/* 80B9DEFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9DF00  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B9DF04  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80B9DF08  38 80 00 00 */	li r4, 0
/* 80B9DF0C  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DF10  38 00 FF FF */	li r0, -1
/* 80B9DF14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DF18  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DF1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DF20  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DF24  38 80 00 00 */	li r4, 0
/* 80B9DF28  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A8F@ha */
/* 80B9DF2C  38 A5 8A 8F */	addi r5, r5, 0x8A8F /* 0x00008A8F@l */
/* 80B9DF30  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80B9DF34  38 E0 00 00 */	li r7, 0
/* 80B9DF38  39 00 00 00 */	li r8, 0
/* 80B9DF3C  39 20 00 00 */	li r9, 0
/* 80B9DF40  39 40 00 FF */	li r10, 0xff
/* 80B9DF44  3D 60 80 BA */	lis r11, lit_4027@ha
/* 80B9DF48  C0 2B E9 60 */	lfs f1, lit_4027@l(r11)
/* 80B9DF4C  4B 4A EB 44 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DF50  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80B9DF54  38 80 00 00 */	li r4, 0
/* 80B9DF58  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DF5C  38 00 FF FF */	li r0, -1
/* 80B9DF60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DF64  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DF68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DF6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DF70  38 80 00 00 */	li r4, 0
/* 80B9DF74  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A90@ha */
/* 80B9DF78  38 A5 8A 90 */	addi r5, r5, 0x8A90 /* 0x00008A90@l */
/* 80B9DF7C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80B9DF80  38 E0 00 00 */	li r7, 0
/* 80B9DF84  39 00 00 00 */	li r8, 0
/* 80B9DF88  39 20 00 00 */	li r9, 0
/* 80B9DF8C  39 40 00 FF */	li r10, 0xff
/* 80B9DF90  3D 60 80 BA */	lis r11, lit_4027@ha
/* 80B9DF94  C0 2B E9 60 */	lfs f1, lit_4027@l(r11)
/* 80B9DF98  4B 4A EA F8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DF9C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80B9DFA0  38 80 00 00 */	li r4, 0
/* 80B9DFA4  90 81 00 08 */	stw r4, 8(r1)
/* 80B9DFA8  38 00 FF FF */	li r0, -1
/* 80B9DFAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9DFB0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9DFB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9DFB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9DFBC  38 80 00 00 */	li r4, 0
/* 80B9DFC0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A91@ha */
/* 80B9DFC4  38 A5 8A 91 */	addi r5, r5, 0x8A91 /* 0x00008A91@l */
/* 80B9DFC8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80B9DFCC  38 E0 00 00 */	li r7, 0
/* 80B9DFD0  39 00 00 00 */	li r8, 0
/* 80B9DFD4  39 20 00 00 */	li r9, 0
/* 80B9DFD8  39 40 00 FF */	li r10, 0xff
/* 80B9DFDC  3D 60 80 BA */	lis r11, lit_4027@ha
/* 80B9DFE0  C0 2B E9 60 */	lfs f1, lit_4027@l(r11)
/* 80B9DFE4  4B 4A EA AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9DFE8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B9DFEC  7C 03 07 74 */	extsb r3, r0
/* 80B9DFF0  4B 48 F0 7C */	b dComIfGp_getReverb__Fi
/* 80B9DFF4  7C 67 1B 78 */	mr r7, r3
/* 80B9DFF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AD@ha */
/* 80B9DFFC  38 03 02 AD */	addi r0, r3, 0x02AD /* 0x000802AD@l */
/* 80B9E000  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9E004  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9E008  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9E00C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9E010  38 81 00 20 */	addi r4, r1, 0x20
/* 80B9E014  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B9E018  38 C0 00 00 */	li r6, 0
/* 80B9E01C  3D 00 80 BA */	lis r8, lit_4027@ha
/* 80B9E020  C0 28 E9 60 */	lfs f1, lit_4027@l(r8)
/* 80B9E024  FC 40 08 90 */	fmr f2, f1
/* 80B9E028  3D 00 80 BA */	lis r8, lit_4028@ha
/* 80B9E02C  C0 68 E9 64 */	lfs f3, lit_4028@l(r8)
/* 80B9E030  FC 80 18 90 */	fmr f4, f3
/* 80B9E034  39 00 00 00 */	li r8, 0
/* 80B9E038  4B 70 D9 4C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9E03C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9E040  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B9E044  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9E048  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9E04C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9E050  7C 05 07 74 */	extsb r5, r0
/* 80B9E054  4B 49 71 AC */	b onSwitch__10dSv_info_cFii
/* 80B9E058  7F E3 FB 78 */	mr r3, r31
/* 80B9E05C  4B 47 BC 20 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B9E060:
/* 80B9E060  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B9E064  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B9E068  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B9E06C  7C 08 03 A6 */	mtlr r0
/* 80B9E070  38 21 00 40 */	addi r1, r1, 0x40
/* 80B9E074  4E 80 00 20 */	blr 
