lbl_8046E2F8:
/* 8046E2F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E2FC  7C 08 02 A6 */	mflr r0
/* 8046E300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E308  93 C1 00 08 */	stw r30, 8(r1)
/* 8046E30C  7C 7F 1B 78 */	mr r31, r3
/* 8046E310  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046E314  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046E318  40 82 00 A8 */	bne lbl_8046E3C0
/* 8046E31C  7F E0 FB 79 */	or. r0, r31, r31
/* 8046E320  41 82 00 94 */	beq lbl_8046E3B4
/* 8046E324  7C 1E 03 78 */	mr r30, r0
/* 8046E328  4B BA A8 3C */	b __ct__10fopAc_ac_cFv
/* 8046E32C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8046E330  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8046E334  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 8046E338  38 7E 05 A4 */	addi r3, r30, 0x5a4
/* 8046E33C  4B C1 54 24 */	b __ct__10dCcD_GSttsFv
/* 8046E340  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8046E344  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8046E348  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 8046E34C  38 03 00 20 */	addi r0, r3, 0x20
/* 8046E350  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 8046E354  3B DE 05 C4 */	addi r30, r30, 0x5c4
/* 8046E358  7F C3 F3 78 */	mr r3, r30
/* 8046E35C  4B C1 56 CC */	b __ct__12dCcD_GObjInfFv
/* 8046E360  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046E364  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046E368  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8046E36C  3C 60 80 47 */	lis r3, __vt__8cM3dGAab@ha
/* 8046E370  38 03 E5 F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046E374  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 8046E378  3C 60 80 47 */	lis r3, __vt__8cM3dGSph@ha
/* 8046E37C  38 03 E5 EC */	addi r0, r3, __vt__8cM3dGSph@l
/* 8046E380  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8046E384  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8046E388  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8046E38C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 8046E390  38 03 00 58 */	addi r0, r3, 0x58
/* 8046E394  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8046E398  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8046E39C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8046E3A0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 8046E3A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 8046E3A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8046E3AC  38 03 00 84 */	addi r0, r3, 0x84
/* 8046E3B0  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_8046E3B4:
/* 8046E3B4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8046E3B8  60 00 00 08 */	ori r0, r0, 8
/* 8046E3BC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8046E3C0:
/* 8046E3C0  38 7F 05 68 */	addi r3, r31, 0x568
/* 8046E3C4  3C 80 80 47 */	lis r4, stringBase0@ha
/* 8046E3C8  38 84 E5 38 */	addi r4, r4, stringBase0@l
/* 8046E3CC  4B BB EA F0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8046E3D0  7C 7E 1B 78 */	mr r30, r3
/* 8046E3D4  2C 1E 00 04 */	cmpwi r30, 4
/* 8046E3D8  40 82 00 9C */	bne lbl_8046E474
/* 8046E3DC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046E3E0  98 1F 05 70 */	stb r0, 0x570(r31)
/* 8046E3E4  7F E3 FB 78 */	mr r3, r31
/* 8046E3E8  3C 80 80 47 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8046E3EC  38 84 E0 F0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8046E3F0  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 8046E3F4  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 8046E3F8  4B BA C0 B8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8046E3FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046E400  40 82 00 0C */	bne lbl_8046E40C
/* 8046E404  38 60 00 05 */	li r3, 5
/* 8046E408  48 00 00 70 */	b lbl_8046E478
lbl_8046E40C:
/* 8046E40C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046E410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046E414  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8046E418  80 9F 07 38 */	lwz r4, 0x738(r31)
/* 8046E41C  7F E5 FB 78 */	mr r5, r31
/* 8046E420  4B C0 65 E8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8046E424  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046E428  41 82 00 0C */	beq lbl_8046E434
/* 8046E42C  38 60 00 05 */	li r3, 5
/* 8046E430  48 00 00 48 */	b lbl_8046E478
lbl_8046E434:
/* 8046E434  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8046E438  38 03 00 24 */	addi r0, r3, 0x24
/* 8046E43C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8046E440  38 7F 05 88 */	addi r3, r31, 0x588
/* 8046E444  38 80 00 FF */	li r4, 0xff
/* 8046E448  38 A0 00 00 */	li r5, 0
/* 8046E44C  7F E6 FB 78 */	mr r6, r31
/* 8046E450  4B C1 54 10 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8046E454  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8046E458  3C 80 80 47 */	lis r4, cc_sph_src@ha
/* 8046E45C  38 84 E5 5C */	addi r4, r4, cc_sph_src@l
/* 8046E460  4B C1 65 D4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8046E464  38 1F 05 88 */	addi r0, r31, 0x588
/* 8046E468  90 1F 06 08 */	stw r0, 0x608(r31)
/* 8046E46C  7F E3 FB 78 */	mr r3, r31
/* 8046E470  4B FF FB 41 */	bl daObj_Brakeeff_Execute__FP18obj_brakeeff_class
lbl_8046E474:
/* 8046E474  7F C3 F3 78 */	mr r3, r30
lbl_8046E478:
/* 8046E478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E47C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046E480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E484  7C 08 03 A6 */	mtlr r0
/* 8046E488  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E48C  4E 80 00 20 */	blr 
