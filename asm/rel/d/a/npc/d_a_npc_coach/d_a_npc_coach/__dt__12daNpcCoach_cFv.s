lbl_809A3330:
/* 809A3330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A3334  7C 08 02 A6 */	mflr r0
/* 809A3338  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A333C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A3340  93 C1 00 08 */	stw r30, 8(r1)
/* 809A3344  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A3348  7C 9F 23 78 */	mr r31, r4
/* 809A334C  41 82 02 08 */	beq lbl_809A3554
/* 809A3350  80 7E 15 1C */	lwz r3, 0x151c(r30)
/* 809A3354  28 03 00 00 */	cmplwi r3, 0
/* 809A3358  41 82 00 24 */	beq lbl_809A337C
/* 809A335C  4B 8C 4E 79 */	bl ChkUsed__9cBgW_BgIdCFv
/* 809A3360  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A3364  41 82 00 18 */	beq lbl_809A337C
/* 809A3368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A336C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A3370  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809A3374  80 9E 15 1C */	lwz r4, 0x151c(r30)
/* 809A3378  4B 6D 0E D9 */	bl Release__4cBgSFP9dBgW_Base
lbl_809A337C:
/* 809A337C  80 7E 1B 34 */	lwz r3, 0x1b34(r30)
/* 809A3380  28 03 00 00 */	cmplwi r3, 0
/* 809A3384  41 82 00 24 */	beq lbl_809A33A8
/* 809A3388  4B 8C 4E 4D */	bl ChkUsed__9cBgW_BgIdCFv
/* 809A338C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809A3390  41 82 00 18 */	beq lbl_809A33A8
/* 809A3394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A3398  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A339C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809A33A0  80 9E 1B 34 */	lwz r4, 0x1b34(r30)
/* 809A33A4  4B 6D 0E AD */	bl Release__4cBgSFP9dBgW_Base
lbl_809A33A8:
/* 809A33A8  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 809A33AC  4B 67 69 0D */	bl fopAcM_delete__FUi
/* 809A33B0  80 7E 25 54 */	lwz r3, 0x2554(r30)
/* 809A33B4  4B 67 69 05 */	bl fopAcM_delete__FUi
/* 809A33B8  38 7E 25 48 */	addi r3, r30, 0x2548
/* 809A33BC  3C 80 80 9A */	lis r4, l_arcName@ha /* 0x809A5130@ha */
/* 809A33C0  38 84 51 30 */	addi r4, r4, l_arcName@l /* 0x809A5130@l */
/* 809A33C4  80 84 00 00 */	lwz r4, 0(r4)
/* 809A33C8  4B 68 9C 41 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809A33CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809A33D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809A33D4  38 63 09 58 */	addi r3, r3, 0x958
/* 809A33D8  38 80 00 01 */	li r4, 1
/* 809A33DC  4B 69 13 E9 */	bl offTbox__12dSv_memBit_cFi
/* 809A33E0  34 1E 25 0C */	addic. r0, r30, 0x250c
/* 809A33E4  41 82 00 54 */	beq lbl_809A3438
/* 809A33E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809A33EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809A33F0  90 7E 25 24 */	stw r3, 0x2524(r30)
/* 809A33F4  38 03 00 20 */	addi r0, r3, 0x20
/* 809A33F8  90 1E 25 28 */	stw r0, 0x2528(r30)
/* 809A33FC  34 1E 25 28 */	addic. r0, r30, 0x2528
/* 809A3400  41 82 00 24 */	beq lbl_809A3424
/* 809A3404  3C 60 80 9A */	lis r3, __vt__10dCcD_GStts@ha /* 0x809A5274@ha */
/* 809A3408  38 03 52 74 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809A5274@l */
/* 809A340C  90 1E 25 28 */	stw r0, 0x2528(r30)
/* 809A3410  34 1E 25 28 */	addic. r0, r30, 0x2528
/* 809A3414  41 82 00 10 */	beq lbl_809A3424
/* 809A3418  3C 60 80 9A */	lis r3, __vt__10cCcD_GStts@ha /* 0x809A5268@ha */
/* 809A341C  38 03 52 68 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809A5268@l */
/* 809A3420  90 1E 25 28 */	stw r0, 0x2528(r30)
lbl_809A3424:
/* 809A3424  34 1E 25 0C */	addic. r0, r30, 0x250c
/* 809A3428  41 82 00 10 */	beq lbl_809A3438
/* 809A342C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809A3430  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809A3434  90 1E 25 24 */	stw r0, 0x2524(r30)
lbl_809A3438:
/* 809A3438  34 1E 24 CC */	addic. r0, r30, 0x24cc
/* 809A343C  41 82 00 28 */	beq lbl_809A3464
/* 809A3440  3C 60 80 9A */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809A525C@ha */
/* 809A3444  38 03 52 5C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809A525C@l */
/* 809A3448  90 1E 24 D8 */	stw r0, 0x24d8(r30)
/* 809A344C  38 7E 24 E0 */	addi r3, r30, 0x24e0
/* 809A3450  38 80 FF FF */	li r4, -1
/* 809A3454  4B 8C BA C5 */	bl __dt__8cM3dGCirFv
/* 809A3458  38 7E 24 CC */	addi r3, r30, 0x24cc
/* 809A345C  38 80 00 00 */	li r4, 0
/* 809A3460  4B 8C 4C 51 */	bl __dt__13cBgS_PolyInfoFv
lbl_809A3464:
/* 809A3464  34 1E 1D C8 */	addic. r0, r30, 0x1dc8
/* 809A3468  41 82 00 28 */	beq lbl_809A3490
/* 809A346C  38 7E 21 E4 */	addi r3, r30, 0x21e4
/* 809A3470  3C 80 80 9A */	lis r4, __dt__8dCcD_CylFv@ha /* 0x809A3798@ha */
/* 809A3474  38 84 37 98 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x809A3798@l */
/* 809A3478  38 A0 01 3C */	li r5, 0x13c
/* 809A347C  38 C0 00 02 */	li r6, 2
/* 809A3480  4B 9B E8 69 */	bl __destroy_arr
/* 809A3484  38 7E 21 54 */	addi r3, r30, 0x2154
/* 809A3488  38 80 FF FF */	li r4, -1
/* 809A348C  4B 91 CF 95 */	bl __dt__10Z2CreatureFv
lbl_809A3490:
/* 809A3490  38 7E 15 D0 */	addi r3, r30, 0x15d0
/* 809A3494  38 80 FF FF */	li r4, -1
/* 809A3498  48 00 01 DD */	bl __dt__14daNpcChCoach_cFv
/* 809A349C  38 7E 0E 7C */	addi r3, r30, 0xe7c
/* 809A34A0  38 80 FF FF */	li r4, -1
/* 809A34A4  48 00 00 CD */	bl __dt__16daNpcChHarness_cFv
/* 809A34A8  34 1E 05 68 */	addic. r0, r30, 0x568
/* 809A34AC  41 82 00 8C */	beq lbl_809A3538
/* 809A34B0  34 1E 0D 00 */	addic. r0, r30, 0xd00
/* 809A34B4  41 82 00 34 */	beq lbl_809A34E8
/* 809A34B8  38 7E 0D F0 */	addi r3, r30, 0xdf0
/* 809A34BC  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha /* 0x8099DA24@ha */
/* 809A34C0  38 84 DA 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8099DA24@l */
/* 809A34C4  38 A0 00 0C */	li r5, 0xc
/* 809A34C8  38 C0 00 0A */	li r6, 0xa
/* 809A34CC  4B 9B E8 1D */	bl __destroy_arr
/* 809A34D0  38 7E 0D 78 */	addi r3, r30, 0xd78
/* 809A34D4  3C 80 80 9A */	lis r4, __dt__4cXyzFv@ha /* 0x8099DA24@ha */
/* 809A34D8  38 84 DA 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8099DA24@l */
/* 809A34DC  38 A0 00 0C */	li r5, 0xc
/* 809A34E0  38 C0 00 0A */	li r6, 0xa
/* 809A34E4  4B 9B E8 05 */	bl __destroy_arr
lbl_809A34E8:
/* 809A34E8  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 809A34EC  38 80 FF FF */	li r4, -1
/* 809A34F0  4B 92 1C 25 */	bl __dt__14Z2CreatureRideFv
/* 809A34F4  38 7E 07 4C */	addi r3, r30, 0x74c
/* 809A34F8  3C 80 80 9A */	lis r4, __dt__8dCcD_CylFv@ha /* 0x809A3798@ha */
/* 809A34FC  38 84 37 98 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x809A3798@l */
/* 809A3500  38 A0 01 3C */	li r5, 0x13c
/* 809A3504  38 C0 00 04 */	li r6, 4
/* 809A3508  4B 9B E7 E1 */	bl __destroy_arr
/* 809A350C  34 7E 05 74 */	addic. r3, r30, 0x574
/* 809A3510  41 82 00 28 */	beq lbl_809A3538
/* 809A3514  3C 80 80 9A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809A5238@ha */
/* 809A3518  38 84 52 38 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809A5238@l */
/* 809A351C  90 9E 05 84 */	stw r4, 0x584(r30)
/* 809A3520  38 04 00 0C */	addi r0, r4, 0xc
/* 809A3524  90 1E 05 88 */	stw r0, 0x588(r30)
/* 809A3528  38 04 00 18 */	addi r0, r4, 0x18
/* 809A352C  90 1E 05 98 */	stw r0, 0x598(r30)
/* 809A3530  38 80 00 00 */	li r4, 0
/* 809A3534  4B 6D 2A 61 */	bl __dt__9dBgS_AcchFv
lbl_809A3538:
/* 809A3538  7F C3 F3 78 */	mr r3, r30
/* 809A353C  38 80 00 00 */	li r4, 0
/* 809A3540  4B 67 57 4D */	bl __dt__10fopAc_ac_cFv
/* 809A3544  7F E0 07 35 */	extsh. r0, r31
/* 809A3548  40 81 00 0C */	ble lbl_809A3554
/* 809A354C  7F C3 F3 78 */	mr r3, r30
/* 809A3550  4B 92 B7 ED */	bl __dl__FPv
lbl_809A3554:
/* 809A3554  7F C3 F3 78 */	mr r3, r30
/* 809A3558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A355C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A3560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A3564  7C 08 03 A6 */	mtlr r0
/* 809A3568  38 21 00 10 */	addi r1, r1, 0x10
/* 809A356C  4E 80 00 20 */	blr 
