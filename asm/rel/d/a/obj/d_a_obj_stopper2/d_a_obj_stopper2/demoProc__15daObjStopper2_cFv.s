lbl_80CEFAD8:
/* 80CEFAD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEFADC  7C 08 02 A6 */	mflr r0
/* 80CEFAE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEFAE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CEFAE8  4B 67 26 F0 */	b _savegpr_28
/* 80CEFAEC  7C 7C 1B 78 */	mr r28, r3
/* 80CEFAF0  3C 60 80 CF */	lis r3, lit_3722@ha
/* 80CEFAF4  3B C3 FE 90 */	addi r30, r3, lit_3722@l
/* 80CEFAF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEFAFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEFB00  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80CEFB04  7F A3 EB 78 */	mr r3, r29
/* 80CEFB08  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFB0C  3C A0 80 CF */	lis r5, action_table@ha
/* 80CEFB10  38 A5 FF 9C */	addi r5, r5, action_table@l
/* 80CEFB14  38 C0 00 03 */	li r6, 3
/* 80CEFB18  38 E0 00 00 */	li r7, 0
/* 80CEFB1C  39 00 00 00 */	li r8, 0
/* 80CEFB20  4B 35 82 F0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CEFB24  7C 7F 1B 78 */	mr r31, r3
/* 80CEFB28  7F A3 EB 78 */	mr r3, r29
/* 80CEFB2C  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFB30  4B 35 82 1C */	b getIsAddvance__16dEvent_manager_cFi
/* 80CEFB34  2C 03 00 00 */	cmpwi r3, 0
/* 80CEFB38  41 82 01 20 */	beq lbl_80CEFC58
/* 80CEFB3C  2C 1F 00 01 */	cmpwi r31, 1
/* 80CEFB40  41 82 00 5C */	beq lbl_80CEFB9C
/* 80CEFB44  40 80 00 10 */	bge lbl_80CEFB54
/* 80CEFB48  2C 1F 00 00 */	cmpwi r31, 0
/* 80CEFB4C  40 80 00 14 */	bge lbl_80CEFB60
/* 80CEFB50  48 00 01 08 */	b lbl_80CEFC58
lbl_80CEFB54:
/* 80CEFB54  2C 1F 00 03 */	cmpwi r31, 3
/* 80CEFB58  40 80 01 00 */	bge lbl_80CEFC58
/* 80CEFB5C  48 00 00 9C */	b lbl_80CEFBF8
lbl_80CEFB60:
/* 80CEFB60  7F A3 EB 78 */	mr r3, r29
/* 80CEFB64  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFB68  3C A0 80 CF */	lis r5, struct_80CEFEB0+0x0@ha
/* 80CEFB6C  38 A5 FE B0 */	addi r5, r5, struct_80CEFEB0+0x0@l
/* 80CEFB70  38 A5 00 4C */	addi r5, r5, 0x4c
/* 80CEFB74  38 C0 00 03 */	li r6, 3
/* 80CEFB78  4B 35 85 74 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CEFB7C  28 03 00 00 */	cmplwi r3, 0
/* 80CEFB80  40 82 00 10 */	bne lbl_80CEFB90
/* 80CEFB84  38 00 00 01 */	li r0, 1
/* 80CEFB88  98 1C 05 87 */	stb r0, 0x587(r28)
/* 80CEFB8C  48 00 00 CC */	b lbl_80CEFC58
lbl_80CEFB90:
/* 80CEFB90  80 03 00 00 */	lwz r0, 0(r3)
/* 80CEFB94  98 1C 05 87 */	stb r0, 0x587(r28)
/* 80CEFB98  48 00 00 C0 */	b lbl_80CEFC58
lbl_80CEFB9C:
/* 80CEFB9C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CEFBA0  D0 1C 05 74 */	stfs f0, 0x574(r28)
/* 80CEFBA4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80CEFBA8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CEFBAC  7C 03 07 74 */	extsb r3, r0
/* 80CEFBB0  4B 33 D4 BC */	b dComIfGp_getReverb__Fi
/* 80CEFBB4  7C 67 1B 78 */	mr r7, r3
/* 80CEFBB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080010@ha */
/* 80CEFBBC  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00080010@l */
/* 80CEFBC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEFBC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEFBC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEFBCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEFBD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80CEFBD4  38 BC 05 38 */	addi r5, r28, 0x538
/* 80CEFBD8  38 C0 00 00 */	li r6, 0
/* 80CEFBDC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80CEFBE0  FC 40 08 90 */	fmr f2, f1
/* 80CEFBE4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80CEFBE8  FC 80 18 90 */	fmr f4, f3
/* 80CEFBEC  39 00 00 00 */	li r8, 0
/* 80CEFBF0  4B 5B BD 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEFBF4  48 00 00 64 */	b lbl_80CEFC58
lbl_80CEFBF8:
/* 80CEFBF8  7F 83 E3 78 */	mr r3, r28
/* 80CEFBFC  4B FF F8 39 */	bl getMaxOffsetY__15daObjStopper2_cFv
/* 80CEFC00  D0 3C 05 74 */	stfs f1, 0x574(r28)
/* 80CEFC04  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CEFC08  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80CEFC0C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CEFC10  7C 03 07 74 */	extsb r3, r0
/* 80CEFC14  4B 33 D4 58 */	b dComIfGp_getReverb__Fi
/* 80CEFC18  7C 67 1B 78 */	mr r7, r3
/* 80CEFC1C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CD@ha */
/* 80CEFC20  38 03 01 CD */	addi r0, r3, 0x01CD /* 0x000801CD@l */
/* 80CEFC24  90 01 00 08 */	stw r0, 8(r1)
/* 80CEFC28  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEFC2C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEFC30  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEFC34  38 81 00 08 */	addi r4, r1, 8
/* 80CEFC38  38 BC 05 38 */	addi r5, r28, 0x538
/* 80CEFC3C  38 C0 00 00 */	li r6, 0
/* 80CEFC40  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80CEFC44  FC 40 08 90 */	fmr f2, f1
/* 80CEFC48  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80CEFC4C  FC 80 18 90 */	fmr f4, f3
/* 80CEFC50  39 00 00 00 */	li r8, 0
/* 80CEFC54  4B 5B BD 30 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEFC58:
/* 80CEFC58  2C 1F 00 01 */	cmpwi r31, 1
/* 80CEFC5C  41 82 00 40 */	beq lbl_80CEFC9C
/* 80CEFC60  40 80 00 10 */	bge lbl_80CEFC70
/* 80CEFC64  2C 1F 00 00 */	cmpwi r31, 0
/* 80CEFC68  40 80 00 14 */	bge lbl_80CEFC7C
/* 80CEFC6C  48 00 00 AC */	b lbl_80CEFD18
lbl_80CEFC70:
/* 80CEFC70  2C 1F 00 03 */	cmpwi r31, 3
/* 80CEFC74  40 80 00 A4 */	bge lbl_80CEFD18
/* 80CEFC78  48 00 00 68 */	b lbl_80CEFCE0
lbl_80CEFC7C:
/* 80CEFC7C  38 7C 05 87 */	addi r3, r28, 0x587
/* 80CEFC80  48 00 01 ED */	bl func_80CEFE6C
/* 80CEFC84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEFC88  40 82 00 9C */	bne lbl_80CEFD24
/* 80CEFC8C  7F A3 EB 78 */	mr r3, r29
/* 80CEFC90  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFC94  4B 35 84 E8 */	b cutEnd__16dEvent_manager_cFi
/* 80CEFC98  48 00 00 8C */	b lbl_80CEFD24
lbl_80CEFC9C:
/* 80CEFC9C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80CEFCA0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80CEFCA4  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80CEFCA8  4B 58 0A 98 */	b cLib_chaseF__FPfff
/* 80CEFCAC  7F 83 E3 78 */	mr r3, r28
/* 80CEFCB0  4B FF F7 85 */	bl getMaxOffsetY__15daObjStopper2_cFv
/* 80CEFCB4  38 7C 05 74 */	addi r3, r28, 0x574
/* 80CEFCB8  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80CEFCBC  4B 58 0A 84 */	b cLib_chaseF__FPfff
/* 80CEFCC0  2C 03 00 00 */	cmpwi r3, 0
/* 80CEFCC4  41 82 00 60 */	beq lbl_80CEFD24
/* 80CEFCC8  38 00 00 00 */	li r0, 0
/* 80CEFCCC  98 1C 05 88 */	stb r0, 0x588(r28)
/* 80CEFCD0  7F A3 EB 78 */	mr r3, r29
/* 80CEFCD4  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFCD8  4B 35 84 A4 */	b cutEnd__16dEvent_manager_cFi
/* 80CEFCDC  48 00 00 48 */	b lbl_80CEFD24
lbl_80CEFCE0:
/* 80CEFCE0  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80CEFCE4  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80CEFCE8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 80CEFCEC  4B 58 0A 54 */	b cLib_chaseF__FPfff
/* 80CEFCF0  38 7C 05 74 */	addi r3, r28, 0x574
/* 80CEFCF4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CEFCF8  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80CEFCFC  4B 58 0A 44 */	b cLib_chaseF__FPfff
/* 80CEFD00  2C 03 00 00 */	cmpwi r3, 0
/* 80CEFD04  41 82 00 20 */	beq lbl_80CEFD24
/* 80CEFD08  7F A3 EB 78 */	mr r3, r29
/* 80CEFD0C  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFD10  4B 35 84 6C */	b cutEnd__16dEvent_manager_cFi
/* 80CEFD14  48 00 00 10 */	b lbl_80CEFD24
lbl_80CEFD18:
/* 80CEFD18  7F A3 EB 78 */	mr r3, r29
/* 80CEFD1C  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 80CEFD20  4B 35 84 5C */	b cutEnd__16dEvent_manager_cFi
lbl_80CEFD24:
/* 80CEFD24  38 60 00 00 */	li r3, 0
/* 80CEFD28  39 61 00 20 */	addi r11, r1, 0x20
/* 80CEFD2C  4B 67 24 F8 */	b _restgpr_28
/* 80CEFD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEFD34  7C 08 03 A6 */	mtlr r0
/* 80CEFD38  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEFD3C  4E 80 00 20 */	blr 
