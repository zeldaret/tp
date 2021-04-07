lbl_80CE327C:
/* 80CE327C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CE3280  7C 08 02 A6 */	mflr r0
/* 80CE3284  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CE3288  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE328C  4B 67 EF 39 */	bl _savegpr_23
/* 80CE3290  7C 7F 1B 78 */	mr r31, r3
/* 80CE3294  3C 80 80 CE */	lis r4, lit_3779@ha /* 0x80CE39E8@ha */
/* 80CE3298  3B C4 39 E8 */	addi r30, r4, lit_3779@l /* 0x80CE39E8@l */
/* 80CE329C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE32A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE32A4  40 82 01 68 */	bne lbl_80CE340C
/* 80CE32A8  7F E0 FB 79 */	or. r0, r31, r31
/* 80CE32AC  41 82 01 54 */	beq lbl_80CE3400
/* 80CE32B0  7C 1C 03 78 */	mr r28, r0
/* 80CE32B4  4B 33 58 B1 */	bl __ct__10fopAc_ac_cFv
/* 80CE32B8  38 7C 06 18 */	addi r3, r28, 0x618
/* 80CE32BC  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha /* 0x80CE3924@ha */
/* 80CE32C0  38 84 39 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CE3924@l */
/* 80CE32C4  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha /* 0x80CE0C54@ha */
/* 80CE32C8  38 A5 0C 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CE0C54@l */
/* 80CE32CC  38 C0 00 0C */	li r6, 0xc
/* 80CE32D0  38 E0 00 1A */	li r7, 0x1a
/* 80CE32D4  4B 67 EA 8D */	bl __construct_array
/* 80CE32D8  38 7C 07 B8 */	addi r3, r28, 0x7b8
/* 80CE32DC  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha /* 0x80CE3924@ha */
/* 80CE32E0  38 84 39 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CE3924@l */
/* 80CE32E4  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha /* 0x80CE0C54@ha */
/* 80CE32E8  38 A5 0C 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CE0C54@l */
/* 80CE32EC  38 C0 00 0C */	li r6, 0xc
/* 80CE32F0  38 E0 00 1A */	li r7, 0x1a
/* 80CE32F4  4B 67 EA 6D */	bl __construct_array
/* 80CE32F8  38 7C 08 F0 */	addi r3, r28, 0x8f0
/* 80CE32FC  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha /* 0x80CE3924@ha */
/* 80CE3300  38 84 39 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CE3924@l */
/* 80CE3304  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha /* 0x80CE0C54@ha */
/* 80CE3308  38 A5 0C 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CE0C54@l */
/* 80CE330C  38 C0 00 0C */	li r6, 0xc
/* 80CE3310  38 E0 00 1A */	li r7, 0x1a
/* 80CE3314  4B 67 EA 4D */	bl __construct_array
/* 80CE3318  38 7C 0A 28 */	addi r3, r28, 0xa28
/* 80CE331C  3C 80 80 CE */	lis r4, __ct__5csXyzFv@ha /* 0x80CE3920@ha */
/* 80CE3320  38 84 39 20 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80CE3920@l */
/* 80CE3324  3C A0 80 CE */	lis r5, __dt__5csXyzFv@ha /* 0x80CE0F58@ha */
/* 80CE3328  38 A5 0F 58 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80CE0F58@l */
/* 80CE332C  38 C0 00 06 */	li r6, 6
/* 80CE3330  38 E0 00 1A */	li r7, 0x1a
/* 80CE3334  4B 67 EA 2D */	bl __construct_array
/* 80CE3338  38 7C 0A C4 */	addi r3, r28, 0xac4
/* 80CE333C  3C 80 80 CE */	lis r4, __ct__5csXyzFv@ha /* 0x80CE3920@ha */
/* 80CE3340  38 84 39 20 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80CE3920@l */
/* 80CE3344  3C A0 80 CE */	lis r5, __dt__5csXyzFv@ha /* 0x80CE0F58@ha */
/* 80CE3348  38 A5 0F 58 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80CE0F58@l */
/* 80CE334C  38 C0 00 06 */	li r6, 6
/* 80CE3350  38 E0 00 1A */	li r7, 0x1a
/* 80CE3354  4B 67 EA 0D */	bl __construct_array
/* 80CE3358  38 7C 0D 1C */	addi r3, r28, 0xd1c
/* 80CE335C  4B 5D D0 6D */	bl __ct__10Z2CreatureFv
/* 80CE3360  38 7C 0D CC */	addi r3, r28, 0xdcc
/* 80CE3364  4B 39 2B 49 */	bl __ct__12dBgS_AcchCirFv
/* 80CE3368  3A FC 0E 0C */	addi r23, r28, 0xe0c
/* 80CE336C  7E E3 BB 78 */	mr r3, r23
/* 80CE3370  4B 39 2D 31 */	bl __ct__9dBgS_AcchFv
/* 80CE3374  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CE3C24@ha */
/* 80CE3378  38 63 3C 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CE3C24@l */
/* 80CE337C  90 77 00 10 */	stw r3, 0x10(r23)
/* 80CE3380  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE3384  90 17 00 14 */	stw r0, 0x14(r23)
/* 80CE3388  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE338C  90 17 00 24 */	stw r0, 0x24(r23)
/* 80CE3390  38 77 00 14 */	addi r3, r23, 0x14
/* 80CE3394  4B 39 5A D5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CE3398  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CE339C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CE33A0  90 1C 10 70 */	stw r0, 0x1070(r28)
/* 80CE33A4  38 7C 10 74 */	addi r3, r28, 0x1074
/* 80CE33A8  4B 3A 03 B9 */	bl __ct__10dCcD_GSttsFv
/* 80CE33AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CE33B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CE33B4  90 7C 10 70 */	stw r3, 0x1070(r28)
/* 80CE33B8  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE33BC  90 1C 10 74 */	stw r0, 0x1074(r28)
/* 80CE33C0  38 7C 10 B8 */	addi r3, r28, 0x10b8
/* 80CE33C4  3C 80 80 CE */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80CE379C@ha */
/* 80CE33C8  38 84 37 9C */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80CE379C@l */
/* 80CE33CC  3C A0 80 CE */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80CE36D0@ha */
/* 80CE33D0  38 A5 36 D0 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80CE36D0@l */
/* 80CE33D4  38 C0 01 3C */	li r6, 0x13c
/* 80CE33D8  38 E0 00 08 */	li r7, 8
/* 80CE33DC  4B 67 E9 85 */	bl __construct_array
/* 80CE33E0  38 7C 1A C0 */	addi r3, r28, 0x1ac0
/* 80CE33E4  3C 80 80 CE */	lis r4, __ct__4cXyzFv@ha /* 0x80CE3924@ha */
/* 80CE33E8  38 84 39 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CE3924@l */
/* 80CE33EC  3C A0 80 CE */	lis r5, __dt__4cXyzFv@ha /* 0x80CE0C54@ha */
/* 80CE33F0  38 A5 0C 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CE0C54@l */
/* 80CE33F4  38 C0 00 0C */	li r6, 0xc
/* 80CE33F8  38 E0 00 08 */	li r7, 8
/* 80CE33FC  4B 67 E9 65 */	bl __construct_array
lbl_80CE3400:
/* 80CE3400  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CE3404  60 00 00 08 */	ori r0, r0, 8
/* 80CE3408  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CE340C:
/* 80CE340C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CE3410  3C 80 80 CE */	lis r4, d_a_obj_so__stringBase0@ha /* 0x80CE3B60@ha */
/* 80CE3414  38 84 3B 60 */	addi r4, r4, d_a_obj_so__stringBase0@l /* 0x80CE3B60@l */
/* 80CE3418  38 84 00 08 */	addi r4, r4, 8
/* 80CE341C  4B 34 9A A1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CE3420  7C 7C 1B 78 */	mr r28, r3
/* 80CE3424  2C 1C 00 04 */	cmpwi r28, 4
/* 80CE3428  40 82 02 8C */	bne lbl_80CE36B4
/* 80CE342C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CE3430  98 1F 05 70 */	stb r0, 0x570(r31)
/* 80CE3434  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CE3438  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80CE343C  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80CE3440  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CE3444  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CE3448  2C 04 00 FF */	cmpwi r4, 0xff
/* 80CE344C  41 82 00 28 */	beq lbl_80CE3474
/* 80CE3450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE3454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE3458  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE345C  7C 05 07 74 */	extsb r5, r0
/* 80CE3460  4B 35 1F 01 */	bl isSwitch__10dSv_info_cCFii
/* 80CE3464  2C 03 00 00 */	cmpwi r3, 0
/* 80CE3468  41 82 00 0C */	beq lbl_80CE3474
/* 80CE346C  38 60 00 05 */	li r3, 5
/* 80CE3470  48 00 02 48 */	b lbl_80CE36B8
lbl_80CE3474:
/* 80CE3474  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE3478  2C 00 00 04 */	cmpwi r0, 4
/* 80CE347C  40 82 00 0C */	bne lbl_80CE3488
/* 80CE3480  38 00 00 02 */	li r0, 2
/* 80CE3484  98 1F 05 70 */	stb r0, 0x570(r31)
lbl_80CE3488:
/* 80CE3488  7F E3 FB 78 */	mr r3, r31
/* 80CE348C  3C 80 80 CE */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80CE3018@ha */
/* 80CE3490  38 84 30 18 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80CE3018@l */
/* 80CE3494  3C A0 00 01 */	lis r5, 0x0001 /* 0x00012560@ha */
/* 80CE3498  38 A5 25 60 */	addi r5, r5, 0x2560 /* 0x00012560@l */
/* 80CE349C  4B 33 70 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CE34A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE34A4  40 82 00 0C */	bne lbl_80CE34B0
/* 80CE34A8  38 60 00 05 */	li r3, 5
/* 80CE34AC  48 00 02 0C */	b lbl_80CE36B8
lbl_80CE34B0:
/* 80CE34B0  3B 00 00 00 */	li r24, 0
/* 80CE34B4  3B 60 00 00 */	li r27, 0
/* 80CE34B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE34BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE34C0  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80CE34C4:
/* 80CE34C4  38 1B 10 4C */	addi r0, r27, 0x104c
/* 80CE34C8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80CE34CC  28 04 00 00 */	cmplwi r4, 0
/* 80CE34D0  41 82 00 20 */	beq lbl_80CE34F0
/* 80CE34D4  7F A3 EB 78 */	mr r3, r29
/* 80CE34D8  7F E5 FB 78 */	mr r5, r31
/* 80CE34DC  4B 39 15 2D */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CE34E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CE34E4  41 82 00 0C */	beq lbl_80CE34F0
/* 80CE34E8  38 60 00 05 */	li r3, 5
/* 80CE34EC  48 00 01 CC */	b lbl_80CE36B8
lbl_80CE34F0:
/* 80CE34F0  3B 18 00 01 */	addi r24, r24, 1
/* 80CE34F4  2C 18 00 02 */	cmpwi r24, 2
/* 80CE34F8  3B 7B 00 04 */	addi r27, r27, 4
/* 80CE34FC  41 80 FF C8 */	blt lbl_80CE34C4
/* 80CE3500  3C 60 80 CE */	lis r3, data_80CE3C90@ha /* 0x80CE3C90@ha */
/* 80CE3504  8C 03 3C 90 */	lbzu r0, data_80CE3C90@l(r3)  /* 0x80CE3C90@l */
/* 80CE3508  28 00 00 00 */	cmplwi r0, 0
/* 80CE350C  40 82 00 20 */	bne lbl_80CE352C
/* 80CE3510  38 00 00 01 */	li r0, 1
/* 80CE3514  98 1F 1B CC */	stb r0, 0x1bcc(r31)
/* 80CE3518  98 03 00 00 */	stb r0, 0(r3)
/* 80CE351C  38 00 FF FF */	li r0, -1
/* 80CE3520  3C 60 80 CE */	lis r3, l_HIO@ha /* 0x80CE3CA0@ha */
/* 80CE3524  38 63 3C A0 */	addi r3, r3, l_HIO@l /* 0x80CE3CA0@l */
/* 80CE3528  98 03 00 04 */	stb r0, 4(r3)
lbl_80CE352C:
/* 80CE352C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80CE3530  38 03 00 24 */	addi r0, r3, 0x24
/* 80CE3534  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CE3538  7F E3 FB 78 */	mr r3, r31
/* 80CE353C  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80CE3540  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 80CE3544  FC 60 08 90 */	fmr f3, f1
/* 80CE3548  4B 33 6F E1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80CE354C  7F E3 FB 78 */	mr r3, r31
/* 80CE3550  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80CE3554  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80CE3558  FC 60 08 90 */	fmr f3, f1
/* 80CE355C  4B 33 6F DD */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80CE3560  38 00 00 00 */	li r0, 0
/* 80CE3564  90 01 00 08 */	stw r0, 8(r1)
/* 80CE3568  38 7F 0E 0C */	addi r3, r31, 0xe0c
/* 80CE356C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CE3570  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80CE3574  7F E6 FB 78 */	mr r6, r31
/* 80CE3578  38 E0 00 01 */	li r7, 1
/* 80CE357C  39 1F 0D CC */	addi r8, r31, 0xdcc
/* 80CE3580  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80CE3584  39 40 00 00 */	li r10, 0
/* 80CE3588  4B 39 2C C1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CE358C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80CE3590  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80CE3594  FC 40 08 90 */	fmr f2, f1
/* 80CE3598  4B 39 29 C1 */	bl SetWall__12dBgS_AcchCirFff
/* 80CE359C  38 00 00 01 */	li r0, 1
/* 80CE35A0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80CE35A4  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80CE35A8  28 00 00 01 */	cmplwi r0, 1
/* 80CE35AC  40 82 00 8C */	bne lbl_80CE3638
/* 80CE35B0  38 00 00 02 */	li r0, 2
/* 80CE35B4  B0 1F 0D AE */	sth r0, 0xdae(r31)
/* 80CE35B8  38 7F 10 58 */	addi r3, r31, 0x1058
/* 80CE35BC  38 80 00 FF */	li r4, 0xff
/* 80CE35C0  38 A0 00 00 */	li r5, 0
/* 80CE35C4  7F E6 FB 78 */	mr r6, r31
/* 80CE35C8  4B 3A 02 99 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CE35CC  3A E0 00 00 */	li r23, 0
/* 80CE35D0  3B 60 00 00 */	li r27, 0
/* 80CE35D4  3C 60 80 CE */	lis r3, cc_cyl_src@ha /* 0x80CE3B78@ha */
/* 80CE35D8  3B 23 3B 78 */	addi r25, r3, cc_cyl_src@l /* 0x80CE3B78@l */
/* 80CE35DC  3B 5F 10 58 */	addi r26, r31, 0x1058
lbl_80CE35E0:
/* 80CE35E0  7F 1F DA 14 */	add r24, r31, r27
/* 80CE35E4  38 78 10 B8 */	addi r3, r24, 0x10b8
/* 80CE35E8  7F 24 CB 78 */	mr r4, r25
/* 80CE35EC  4B 3A 12 C9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CE35F0  93 58 10 FC */	stw r26, 0x10fc(r24)
/* 80CE35F4  3A F7 00 01 */	addi r23, r23, 1
/* 80CE35F8  2C 17 00 08 */	cmpwi r23, 8
/* 80CE35FC  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 80CE3600  41 80 FF E0 */	blt lbl_80CE35E0
/* 80CE3604  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80CE3608  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80CE360C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE3610  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CE3614  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 80CE3618  3C 80 80 CE */	lis r4, d_a_obj_so__stringBase0@ha /* 0x80CE3B60@ha */
/* 80CE361C  38 84 3B 60 */	addi r4, r4, d_a_obj_so__stringBase0@l /* 0x80CE3B60@l */
/* 80CE3620  4B 68 53 75 */	bl strcmp
/* 80CE3624  2C 03 00 00 */	cmpwi r3, 0
/* 80CE3628  40 82 00 7C */	bne lbl_80CE36A4
/* 80CE362C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 80CE3630  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80CE3634  48 00 00 70 */	b lbl_80CE36A4
lbl_80CE3638:
/* 80CE3638  28 00 00 02 */	cmplwi r0, 2
/* 80CE363C  40 82 00 54 */	bne lbl_80CE3690
/* 80CE3640  38 00 00 03 */	li r0, 3
/* 80CE3644  B0 1F 0D AE */	sth r0, 0xdae(r31)
/* 80CE3648  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE364C  7C 06 07 74 */	extsb r6, r0
/* 80CE3650  2C 06 00 04 */	cmpwi r6, 4
/* 80CE3654  40 82 00 3C */	bne lbl_80CE3690
/* 80CE3658  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 80CE365C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CE3660  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 80CE3664  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CE3668  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80CE366C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CE3670  38 60 00 2E */	li r3, 0x2e
/* 80CE3674  38 80 06 00 */	li r4, 0x600
/* 80CE3678  38 A1 00 10 */	addi r5, r1, 0x10
/* 80CE367C  38 E0 00 00 */	li r7, 0
/* 80CE3680  39 00 00 00 */	li r8, 0
/* 80CE3684  39 20 FF FF */	li r9, -1
/* 80CE3688  4B 33 67 11 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80CE368C  90 7F 1B 94 */	stw r3, 0x1b94(r31)
lbl_80CE3690:
/* 80CE3690  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE3694  2C 00 00 02 */	cmpwi r0, 2
/* 80CE3698  40 82 00 0C */	bne lbl_80CE36A4
/* 80CE369C  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80CE36A0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
lbl_80CE36A4:
/* 80CE36A4  38 1F 0D 1C */	addi r0, r31, 0xd1c
/* 80CE36A8  90 1F 10 9C */	stw r0, 0x109c(r31)
/* 80CE36AC  7F E3 FB 78 */	mr r3, r31
/* 80CE36B0  4B FF F7 FD */	bl daObj_So_Execute__FP12obj_so_class
lbl_80CE36B4:
/* 80CE36B4  7F 83 E3 78 */	mr r3, r28
lbl_80CE36B8:
/* 80CE36B8  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE36BC  4B 67 EB 55 */	bl _restgpr_23
/* 80CE36C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CE36C4  7C 08 03 A6 */	mtlr r0
/* 80CE36C8  38 21 00 50 */	addi r1, r1, 0x50
/* 80CE36CC  4E 80 00 20 */	blr 
