lbl_809B46E0:
/* 809B46E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B46E4  7C 08 02 A6 */	mflr r0
/* 809B46E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B46EC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B46F0  4B 9A DA ED */	bl _savegpr_29
/* 809B46F4  7C 7D 1B 78 */	mr r29, r3
/* 809B46F8  3C A0 80 9C */	lis r5, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B46FC  3B E5 92 E4 */	addi r31, r5, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B4700  80 04 00 00 */	lwz r0, 0(r4)
/* 809B4704  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B4708  41 82 01 A0 */	beq lbl_809B48A8
/* 809B470C  40 80 00 34 */	bge lbl_809B4740
/* 809B4710  2C 00 00 15 */	cmpwi r0, 0x15
/* 809B4714  41 82 00 DC */	beq lbl_809B47F0
/* 809B4718  40 80 00 1C */	bge lbl_809B4734
/* 809B471C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4720  41 82 00 44 */	beq lbl_809B4764
/* 809B4724  41 80 01 84 */	blt lbl_809B48A8
/* 809B4728  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B472C  40 80 00 94 */	bge lbl_809B47C0
/* 809B4730  48 00 01 78 */	b lbl_809B48A8
lbl_809B4734:
/* 809B4734  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B4738  41 82 00 E8 */	beq lbl_809B4820
/* 809B473C  48 00 01 6C */	b lbl_809B48A8
lbl_809B4740:
/* 809B4740  2C 00 00 3C */	cmpwi r0, 0x3c
/* 809B4744  41 82 01 34 */	beq lbl_809B4878
/* 809B4748  40 80 00 10 */	bge lbl_809B4758
/* 809B474C  2C 00 00 32 */	cmpwi r0, 0x32
/* 809B4750  41 82 01 0C */	beq lbl_809B485C
/* 809B4754  48 00 01 54 */	b lbl_809B48A8
lbl_809B4758:
/* 809B4758  2C 00 00 46 */	cmpwi r0, 0x46
/* 809B475C  41 82 01 34 */	beq lbl_809B4890
/* 809B4760  48 00 01 48 */	b lbl_809B48A8
lbl_809B4764:
/* 809B4764  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809B4768  2C 00 00 08 */	cmpwi r0, 8
/* 809B476C  41 82 00 24 */	beq lbl_809B4790
/* 809B4770  83 DD 0B 80 */	lwz r30, 0xb80(r29)
/* 809B4774  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 809B4778  4B 79 11 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B477C  93 DD 0B 80 */	stw r30, 0xb80(r29)
/* 809B4780  38 00 00 08 */	li r0, 8
/* 809B4784  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 809B4788  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B478C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_809B4790:
/* 809B4790  38 00 00 3D */	li r0, 0x3d
/* 809B4794  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B4798  38 60 00 0A */	li r3, 0xa
/* 809B479C  4B 7F 40 49 */	bl dKy_change_colpat__FUc
/* 809B47A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B47A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B47A8  80 63 00 00 */	lwz r3, 0(r3)
/* 809B47AC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B47B0  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200003F@ha */
/* 809B47B4  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0200003F@l */
/* 809B47B8  4B 8F B3 DD */	bl bgmStreamPrepare__8Z2SeqMgrFUl
/* 809B47BC  48 00 00 EC */	b lbl_809B48A8
lbl_809B47C0:
/* 809B47C0  38 00 00 00 */	li r0, 0
/* 809B47C4  98 1D 0F F6 */	stb r0, 0xff6(r29)
/* 809B47C8  38 00 00 78 */	li r0, 0x78
/* 809B47CC  B0 1D 0F 90 */	sth r0, 0xf90(r29)
/* 809B47D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B47D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B47D8  80 63 00 00 */	lwz r3, 0(r3)
/* 809B47DC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B47E0  4B 8F B6 39 */	bl bgmStreamPlay__8Z2SeqMgrFv
/* 809B47E4  38 60 00 0C */	li r3, 0xc
/* 809B47E8  4B 7F 3F FD */	bl dKy_change_colpat__FUc
/* 809B47EC  48 00 00 BC */	b lbl_809B48A8
lbl_809B47F0:
/* 809B47F0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809B47F4  2C 00 00 09 */	cmpwi r0, 9
/* 809B47F8  41 82 00 B0 */	beq lbl_809B48A8
/* 809B47FC  83 DD 0B 80 */	lwz r30, 0xb80(r29)
/* 809B4800  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 809B4804  4B 79 10 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B4808  93 DD 0B 80 */	stw r30, 0xb80(r29)
/* 809B480C  38 00 00 09 */	li r0, 9
/* 809B4810  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 809B4814  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809B4818  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 809B481C  48 00 00 8C */	b lbl_809B48A8
lbl_809B4820:
/* 809B4820  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600BF@ha */
/* 809B4824  38 03 00 BF */	addi r0, r3, 0x00BF /* 0x000600BF@l */
/* 809B4828  90 01 00 08 */	stw r0, 8(r1)
/* 809B482C  38 7D 05 80 */	addi r3, r29, 0x580
/* 809B4830  38 81 00 08 */	addi r4, r1, 8
/* 809B4834  38 A0 00 00 */	li r5, 0
/* 809B4838  38 C0 FF FF */	li r6, -1
/* 809B483C  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 809B4840  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809B4844  7D 89 03 A6 */	mtctr r12
/* 809B4848  4E 80 04 21 */	bctrl 
/* 809B484C  38 7D 0F F8 */	addi r3, r29, 0xff8
/* 809B4850  38 80 00 01 */	li r4, 1
/* 809B4854  4B FF D4 91 */	bl setAnm__16_Fairy_Feather_cFi
/* 809B4858  48 00 00 50 */	b lbl_809B48A8
lbl_809B485C:
/* 809B485C  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 809B4860  80 7D 0F F8 */	lwz r3, 0xff8(r29)
/* 809B4864  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 809B4868  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 809B486C  80 7D 0F F8 */	lwz r3, 0xff8(r29)
/* 809B4870  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809B4874  48 00 00 34 */	b lbl_809B48A8
lbl_809B4878:
/* 809B4878  38 00 00 01 */	li r0, 1
/* 809B487C  98 1D 0F F7 */	stb r0, 0xff7(r29)
/* 809B4880  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 809B4884  38 A0 00 00 */	li r5, 0
/* 809B4888  4B 79 73 69 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 809B488C  48 00 00 1C */	b lbl_809B48A8
lbl_809B4890:
/* 809B4890  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B4894  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B4898  80 63 00 00 */	lwz r3, 0(r3)
/* 809B489C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 809B48A0  38 80 00 2D */	li r4, 0x2d
/* 809B48A4  4B 8F B6 39 */	bl bgmStreamStop__8Z2SeqMgrFUl
lbl_809B48A8:
/* 809B48A8  38 60 00 00 */	li r3, 0
/* 809B48AC  39 61 00 20 */	addi r11, r1, 0x20
/* 809B48B0  4B 9A D9 79 */	bl _restgpr_29
/* 809B48B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B48B8  7C 08 03 A6 */	mtlr r0
/* 809B48BC  38 21 00 20 */	addi r1, r1, 0x20
/* 809B48C0  4E 80 00 20 */	blr 
