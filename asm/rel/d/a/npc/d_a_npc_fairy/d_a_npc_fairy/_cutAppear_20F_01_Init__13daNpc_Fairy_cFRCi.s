lbl_809B4D54:
/* 809B4D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B4D58  7C 08 02 A6 */	mflr r0
/* 809B4D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B4D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B4D64  93 C1 00 08 */	stw r30, 8(r1)
/* 809B4D68  7C 7E 1B 78 */	mr r30, r3
/* 809B4D6C  80 04 00 00 */	lwz r0, 0(r4)
/* 809B4D70  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B4D74  41 82 00 C8 */	beq lbl_809B4E3C
/* 809B4D78  40 80 00 1C */	bge lbl_809B4D94
/* 809B4D7C  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B4D80  41 82 00 8C */	beq lbl_809B4E0C
/* 809B4D84  40 80 01 14 */	bge lbl_809B4E98
/* 809B4D88  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4D8C  41 82 00 20 */	beq lbl_809B4DAC
/* 809B4D90  48 00 01 08 */	b lbl_809B4E98
lbl_809B4D94:
/* 809B4D94  2C 00 00 3C */	cmpwi r0, 0x3c
/* 809B4D98  41 82 00 E8 */	beq lbl_809B4E80
/* 809B4D9C  40 80 00 FC */	bge lbl_809B4E98
/* 809B4DA0  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B4DA4  41 82 00 CC */	beq lbl_809B4E70
/* 809B4DA8  48 00 00 F0 */	b lbl_809B4E98
lbl_809B4DAC:
/* 809B4DAC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B4DB0  2C 00 00 00 */	cmpwi r0, 0
/* 809B4DB4  41 82 00 28 */	beq lbl_809B4DDC
/* 809B4DB8  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B4DBC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B4DC0  4B 79 0A D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B4DC4  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B4DC8  38 00 00 00 */	li r0, 0
/* 809B4DCC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B4DD0  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B4DD4  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B4DD8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809B4DDC:
/* 809B4DDC  38 00 00 3D */	li r0, 0x3d
/* 809B4DE0  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B4DE4  38 60 00 0A */	li r3, 0xa
/* 809B4DE8  4B 7F 39 FD */	bl dKy_change_colpat__FUc
/* 809B4DEC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4DF0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4DF4  80 63 00 00 */	lwz r3, 0(r3)
/* 809B4DF8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B4DFC  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B4E00  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B4E04  4B 8F AD 91 */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B4E08  48 00 00 90 */	b lbl_809B4E98
lbl_809B4E0C:
/* 809B4E0C  38 00 00 00 */	li r0, 0
/* 809B4E10  98 1E 0F F6 */	stb r0, 0xff6(r30)
/* 809B4E14  38 00 00 78 */	li r0, 0x78
/* 809B4E18  B0 1E 0F 90 */	sth r0, 0xf90(r30)
/* 809B4E1C  38 60 00 0C */	li r3, 0xc
/* 809B4E20  4B 7F 39 C5 */	bl dKy_change_colpat__FUc
/* 809B4E24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4E28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4E2C  80 63 00 00 */	lwz r3, 0(r3)
/* 809B4E30  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B4E34  4B 8F AF E5 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B4E38  48 00 00 60 */	b lbl_809B4E98
lbl_809B4E3C:
/* 809B4E3C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809B4E40  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4E44  41 82 00 54 */	beq lbl_809B4E98
/* 809B4E48  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 809B4E4C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809B4E50  4B 79 0A 49 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B4E54  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 809B4E58  38 00 00 0A */	li r0, 0xa
/* 809B4E5C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809B4E60  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B4E64  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B4E68  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809B4E6C  48 00 00 2C */	b lbl_809B4E98
lbl_809B4E70:
/* 809B4E70  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 809B4E74  38 A0 00 00 */	li r5, 0
/* 809B4E78  4B 79 6D 79 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B4E7C  48 00 00 1C */	b lbl_809B4E98
lbl_809B4E80:
/* 809B4E80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4E84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4E88  80 63 00 00 */	lwz r3, 0(r3)
/* 809B4E8C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B4E90  38 80 00 2D */	li r4, 0x2d
/* 809B4E94  4B 8F B0 49 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B4E98:
/* 809B4E98  38 60 00 00 */	li r3, 0
/* 809B4E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B4EA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B4EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B4EA8  7C 08 03 A6 */	mtlr r0
/* 809B4EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B4EB0  4E 80 00 20 */	blr 
