lbl_804661B0:
/* 804661B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804661B4  7C 08 02 A6 */	mflr r0
/* 804661B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804661BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804661C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804661C4  7C 9E 23 78 */	mr r30, r4
/* 804661C8  3C 80 80 46 */	lis r4, lit_4018@ha /* 0x80466820@ha */
/* 804661CC  3B E4 68 20 */	addi r31, r4, lit_4018@l /* 0x80466820@l */
/* 804661D0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804661D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 804661D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804661DC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804661E0  38 00 00 01 */	li r0, 1
/* 804661E4  98 03 00 0B */	stb r0, 0xb(r3)
/* 804661E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804661EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804661F0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804661F4  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 804661F8  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 804661FC  38 84 01 94 */	addi r4, r4, 0x194
/* 80466200  4B F0 27 95 */	bl strcmp
/* 80466204  2C 03 00 00 */	cmpwi r3, 0
/* 80466208  40 82 00 54 */	bne lbl_8046625C
/* 8046620C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80466210  7C 03 07 74 */	extsb r3, r0
/* 80466214  4B BC 6E 59 */	bl dComIfGp_getReverb__Fi
/* 80466218  7C 67 1B 78 */	mr r7, r3
/* 8046621C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C2@ha */
/* 80466220  38 03 00 C2 */	addi r0, r3, 0x00C2 /* 0x000800C2@l */
/* 80466224  90 01 00 0C */	stw r0, 0xc(r1)
/* 80466228  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8046622C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80466230  80 63 00 00 */	lwz r3, 0(r3)
/* 80466234  38 81 00 0C */	addi r4, r1, 0xc
/* 80466238  38 BE 05 38 */	addi r5, r30, 0x538
/* 8046623C  38 C0 00 00 */	li r6, 0
/* 80466240  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80466244  FC 40 08 90 */	fmr f2, f1
/* 80466248  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8046624C  FC 80 18 90 */	fmr f4, f3
/* 80466250  39 00 00 00 */	li r8, 0
/* 80466254  4B E4 57 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80466258  48 00 00 50 */	b lbl_804662A8
lbl_8046625C:
/* 8046625C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80466260  7C 03 07 74 */	extsb r3, r0
/* 80466264  4B BC 6E 09 */	bl dComIfGp_getReverb__Fi
/* 80466268  7C 67 1B 78 */	mr r7, r3
/* 8046626C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CD@ha */
/* 80466270  38 03 01 CD */	addi r0, r3, 0x01CD /* 0x000801CD@l */
/* 80466274  90 01 00 08 */	stw r0, 8(r1)
/* 80466278  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8046627C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80466280  80 63 00 00 */	lwz r3, 0(r3)
/* 80466284  38 81 00 08 */	addi r4, r1, 8
/* 80466288  38 BE 05 38 */	addi r5, r30, 0x538
/* 8046628C  38 C0 00 00 */	li r6, 0
/* 80466290  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80466294  FC 40 08 90 */	fmr f2, f1
/* 80466298  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8046629C  FC 80 18 90 */	fmr f4, f3
/* 804662A0  39 00 00 00 */	li r8, 0
/* 804662A4  4B E4 56 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804662A8:
/* 804662A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804662AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804662B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804662B4  7C 08 03 A6 */	mtlr r0
/* 804662B8  38 21 00 20 */	addi r1, r1, 0x20
/* 804662BC  4E 80 00 20 */	blr 
