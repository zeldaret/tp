lbl_800CD7AC:
/* 800CD7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CD7B0  7C 08 02 A6 */	mflr r0
/* 800CD7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CD7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CD7BC  93 C1 00 08 */	stw r30, 8(r1)
/* 800CD7C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800CD7C4  7C 9E 23 78 */	mr r30, r4
/* 800CD7C8  41 82 0A 24 */	beq lbl_800CE1EC
/* 800CD7CC  3C 60 80 3B */	lis r3, __vt__9daAlink_c@ha /* 0x803B32B8@ha */
/* 800CD7D0  38 03 32 B8 */	addi r0, r3, __vt__9daAlink_c@l /* 0x803B32B8@l */
/* 800CD7D4  90 1F 06 28 */	stw r0, 0x628(r31)
/* 800CD7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CD7DC  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CD7E0  80 85 5F 18 */	lwz r4, 0x5f18(r5)
/* 800CD7E4  3C 60 00 40 */	lis r3, 0x0040 /* 0x00400030@ha */
/* 800CD7E8  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00400030@l */
/* 800CD7EC  7C 80 00 38 */	and r0, r4, r0
/* 800CD7F0  90 05 5F 18 */	stw r0, 0x5f18(r5)
/* 800CD7F4  80 85 5F 1C */	lwz r4, 0x5f1c(r5)
/* 800CD7F8  3C 60 F8 05 */	lis r3, 0xF805 /* 0xF8048487@ha */
/* 800CD7FC  38 03 84 87 */	addi r0, r3, 0x8487 /* 0xF8048487@l */
/* 800CD800  7C 80 00 38 */	and r0, r4, r0
/* 800CD804  90 05 5F 1C */	stw r0, 0x5f1c(r5)
/* 800CD808  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CD80C  48 1F 5F 41 */	bl deleteKantera__14Z2CreatureLinkFv
/* 800CD810  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CD814  81 9F 2C A8 */	lwz r12, 0x2ca8(r31)
/* 800CD818  81 8C 00 08 */	lwz r12, 8(r12)
/* 800CD81C  7D 89 03 A6 */	mtctr r12
/* 800CD820  4E 80 04 21 */	bctrl 
/* 800CD824  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 800CD828  28 03 00 00 */	cmplwi r3, 0
/* 800CD82C  41 82 00 10 */	beq lbl_800CD83C
/* 800CD830  48 1F 07 C9 */	bl deleteObject__14Z2SoundObjBaseFv
/* 800CD834  38 00 00 00 */	li r0, 0
/* 800CD838  90 1F 07 6C */	stw r0, 0x76c(r31)
lbl_800CD83C:
/* 800CD83C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800CD840  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800CD844  41 82 00 20 */	beq lbl_800CD864
/* 800CD848  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800CD84C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800CD850  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800CD854  38 00 00 01 */	li r0, 1
/* 800CD858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CD85C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CD860  98 03 5E B8 */	stb r0, 0x5eb8(r3)
lbl_800CD864:
/* 800CD864  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800CD868  28 00 01 4F */	cmplwi r0, 0x14f
/* 800CD86C  41 82 00 18 */	beq lbl_800CD884
/* 800CD870  28 00 01 3D */	cmplwi r0, 0x13d
/* 800CD874  40 82 00 1C */	bne lbl_800CD890
/* 800CD878  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800CD87C  2C 00 00 00 */	cmpwi r0, 0
/* 800CD880  41 82 00 10 */	beq lbl_800CD890
lbl_800CD884:
/* 800CD884  7F E3 FB 78 */	mr r3, r31
/* 800CD888  38 80 00 01 */	li r4, 1
/* 800CD88C  4B FF 45 81 */	bl changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE
lbl_800CD890:
/* 800CD890  38 7F 06 2C */	addi r3, r31, 0x62c
/* 800CD894  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 800CD898  4B F5 F7 71 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 800CD89C  80 7F 06 38 */	lwz r3, 0x638(r31)
/* 800CD8A0  28 03 00 00 */	cmplwi r3, 0
/* 800CD8A4  41 82 00 08 */	beq lbl_800CD8AC
/* 800CD8A8  4B F4 19 05 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
lbl_800CD8AC:
/* 800CD8AC  38 7F 06 3C */	addi r3, r31, 0x63c
/* 800CD8B0  80 9F 06 44 */	lwz r4, 0x644(r31)
/* 800CD8B4  4B F5 F7 55 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 800CD8B8  80 7F 06 48 */	lwz r3, 0x648(r31)
/* 800CD8BC  28 03 00 00 */	cmplwi r3, 0
/* 800CD8C0  41 82 00 08 */	beq lbl_800CD8C8
/* 800CD8C4  4B F4 18 E9 */	bl mDoExt_destroyExpHeap__FP10JKRExpHeap
lbl_800CD8C8:
/* 800CD8C8  38 7F 2F 5C */	addi r3, r31, 0x2f5c
/* 800CD8CC  48 0D A0 61 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 800CD8D0  38 00 00 00 */	li r0, 0
/* 800CD8D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CD8D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CD8DC  90 03 5D AC */	stw r0, 0x5dac(r3)
/* 800CD8E0  90 03 5D B4 */	stw r0, 0x5db4(r3)
/* 800CD8E4  38 7F 37 B0 */	addi r3, r31, 0x37b0
/* 800CD8E8  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CD8EC  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CD8F0  38 A0 00 0C */	li r5, 0xc
/* 800CD8F4  38 C0 00 02 */	li r6, 2
/* 800CD8F8  48 29 43 F1 */	bl __destroy_arr
/* 800CD8FC  38 7F 36 F0 */	addi r3, r31, 0x36f0
/* 800CD900  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CD904  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CD908  38 A0 00 0C */	li r5, 0xc
/* 800CD90C  38 C0 00 04 */	li r6, 4
/* 800CD910  48 29 43 D9 */	bl __destroy_arr
/* 800CD914  38 7F 36 C0 */	addi r3, r31, 0x36c0
/* 800CD918  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CD91C  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CD920  38 A0 00 0C */	li r5, 0xc
/* 800CD924  38 C0 00 04 */	li r6, 4
/* 800CD928  48 29 43 C1 */	bl __destroy_arr
/* 800CD92C  38 7F 36 6C */	addi r3, r31, 0x366c
/* 800CD930  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CD934  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CD938  38 A0 00 0C */	li r5, 0xc
/* 800CD93C  38 C0 00 04 */	li r6, 4
/* 800CD940  48 29 43 A9 */	bl __destroy_arr
/* 800CD944  38 7F 36 3C */	addi r3, r31, 0x363c
/* 800CD948  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CD94C  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CD950  38 A0 00 0C */	li r5, 0xc
/* 800CD954  38 C0 00 04 */	li r6, 4
/* 800CD958  48 29 43 91 */	bl __destroy_arr
/* 800CD95C  38 7F 35 4C */	addi r3, r31, 0x354c
/* 800CD960  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CD964  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CD968  38 A0 00 0C */	li r5, 0xc
/* 800CD96C  38 C0 00 04 */	li r6, 4
/* 800CD970  48 29 43 79 */	bl __destroy_arr
/* 800CD974  38 7F 32 D8 */	addi r3, r31, 0x32d8
/* 800CD978  3C 80 80 0D */	lis r4, __dt__Q29daAlink_c14firePointEff_cFv@ha /* 0x800CFC3C@ha */
/* 800CD97C  38 84 FC 3C */	addi r4, r4, __dt__Q29daAlink_c14firePointEff_cFv@l /* 0x800CFC3C@l */
/* 800CD980  38 A0 00 30 */	li r5, 0x30
/* 800CD984  38 C0 00 04 */	li r6, 4
/* 800CD988  48 29 43 61 */	bl __destroy_arr
/* 800CD98C  38 7F 31 42 */	addi r3, r31, 0x3142
/* 800CD990  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800CD994  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800CD998  38 A0 00 06 */	li r5, 6
/* 800CD99C  38 C0 00 04 */	li r6, 4
/* 800CD9A0  48 29 43 49 */	bl __destroy_arr
/* 800CD9A4  38 7F 31 36 */	addi r3, r31, 0x3136
/* 800CD9A8  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800CD9AC  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800CD9B0  38 A0 00 06 */	li r5, 6
/* 800CD9B4  38 C0 00 02 */	li r6, 2
/* 800CD9B8  48 29 43 31 */	bl __destroy_arr
/* 800CD9BC  38 7F 31 2A */	addi r3, r31, 0x312a
/* 800CD9C0  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha /* 0x80018BD0@ha */
/* 800CD9C4  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80018BD0@l */
/* 800CD9C8  38 A0 00 06 */	li r5, 6
/* 800CD9CC  38 C0 00 02 */	li r6, 2
/* 800CD9D0  48 29 43 19 */	bl __destroy_arr
/* 800CD9D4  34 1F 2F 38 */	addic. r0, r31, 0x2f38
/* 800CD9D8  41 82 00 44 */	beq lbl_800CDA1C
/* 800CD9DC  3C 60 80 3B */	lis r3, __vt__22dPa_hermiteEcallBack_c@ha /* 0x803A83A0@ha */
/* 800CD9E0  38 03 83 A0 */	addi r0, r3, __vt__22dPa_hermiteEcallBack_c@l /* 0x803A83A0@l */
/* 800CD9E4  90 1F 2F 38 */	stw r0, 0x2f38(r31)
/* 800CD9E8  34 1F 2F 38 */	addic. r0, r31, 0x2f38
/* 800CD9EC  41 82 00 30 */	beq lbl_800CDA1C
/* 800CD9F0  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800CD9F4  38 03 85 54 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800CD9F8  90 1F 2F 38 */	stw r0, 0x2f38(r31)
/* 800CD9FC  38 7F 2F 38 */	addi r3, r31, 0x2f38
/* 800CDA00  81 9F 2F 38 */	lwz r12, 0x2f38(r31)
/* 800CDA04  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800CDA08  7D 89 03 A6 */	mtctr r12
/* 800CDA0C  4E 80 04 21 */	bctrl 
/* 800CDA10  38 7F 2F 38 */	addi r3, r31, 0x2f38
/* 800CDA14  38 80 00 00 */	li r4, 0
/* 800CDA18  48 1B 0C 8D */	bl __dt__18JPAEmitterCallBackFv
lbl_800CDA1C:
/* 800CDA1C  34 1F 2F 20 */	addic. r0, r31, 0x2f20
/* 800CDA20  41 82 00 44 */	beq lbl_800CDA64
/* 800CDA24  3C 60 80 3B */	lis r3, __vt__22dPa_hermiteEcallBack_c@ha /* 0x803A83A0@ha */
/* 800CDA28  38 03 83 A0 */	addi r0, r3, __vt__22dPa_hermiteEcallBack_c@l /* 0x803A83A0@l */
/* 800CDA2C  90 1F 2F 20 */	stw r0, 0x2f20(r31)
/* 800CDA30  34 1F 2F 20 */	addic. r0, r31, 0x2f20
/* 800CDA34  41 82 00 30 */	beq lbl_800CDA64
/* 800CDA38  3C 60 80 3B */	lis r3, __vt__18dPa_levelEcallBack@ha /* 0x803A8554@ha */
/* 800CDA3C  38 03 85 54 */	addi r0, r3, __vt__18dPa_levelEcallBack@l /* 0x803A8554@l */
/* 800CDA40  90 1F 2F 20 */	stw r0, 0x2f20(r31)
/* 800CDA44  38 7F 2F 20 */	addi r3, r31, 0x2f20
/* 800CDA48  81 9F 2F 20 */	lwz r12, 0x2f20(r31)
/* 800CDA4C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800CDA50  7D 89 03 A6 */	mtctr r12
/* 800CDA54  4E 80 04 21 */	bctrl 
/* 800CDA58  38 7F 2F 20 */	addi r3, r31, 0x2f20
/* 800CDA5C  38 80 00 00 */	li r4, 0
/* 800CDA60  48 1B 0C 45 */	bl __dt__18JPAEmitterCallBackFv
lbl_800CDA64:
/* 800CDA64  34 1F 2D 84 */	addic. r0, r31, 0x2d84
/* 800CDA68  41 82 00 4C */	beq lbl_800CDAB4
/* 800CDA6C  34 7F 2D 8C */	addic. r3, r31, 0x2d8c
/* 800CDA70  41 82 00 08 */	beq lbl_800CDA78
/* 800CDA74  48 1D 47 11 */	bl releaseSound__14JAISoundHandleFv
lbl_800CDA78:
/* 800CDA78  34 7F 2D 88 */	addic. r3, r31, 0x2d88
/* 800CDA7C  41 82 00 08 */	beq lbl_800CDA84
/* 800CDA80  48 1D 47 05 */	bl releaseSound__14JAISoundHandleFv
lbl_800CDA84:
/* 800CDA84  34 1F 2D 84 */	addic. r0, r31, 0x2d84
/* 800CDA88  41 82 00 0C */	beq lbl_800CDA94
/* 800CDA8C  38 7F 2D 84 */	addi r3, r31, 0x2d84
/* 800CDA90  48 1D 46 F5 */	bl releaseSound__14JAISoundHandleFv
lbl_800CDA94:
/* 800CDA94  34 1F 2D 84 */	addic. r0, r31, 0x2d84
/* 800CDA98  41 82 00 1C */	beq lbl_800CDAB4
/* 800CDA9C  80 6D 85 B8 */	lwz r3, __OSReport_disable-0x60(r13)
/* 800CDAA0  38 1F 2D 84 */	addi r0, r31, 0x2d84
/* 800CDAA4  7C 03 00 40 */	cmplw r3, r0
/* 800CDAA8  40 82 00 0C */	bne lbl_800CDAB4
/* 800CDAAC  38 00 00 00 */	li r0, 0
/* 800CDAB0  90 0D 85 B8 */	stw r0, __OSReport_disable-0x60(r13)
lbl_800CDAB4:
/* 800CDAB4  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800CDAB8  38 80 FF FF */	li r4, -1
/* 800CDABC  48 1F 5A 45 */	bl __dt__14Z2CreatureLinkFv
/* 800CDAC0  38 7F 2A 4C */	addi r3, r31, 0x2a4c
/* 800CDAC4  3C 80 80 0D */	lis r4, __dt__18daAlink_footData_cFv@ha /* 0x800CFCB8@ha */
/* 800CDAC8  38 84 FC B8 */	addi r4, r4, __dt__18daAlink_footData_cFv@l /* 0x800CFCB8@l */
/* 800CDACC  38 A0 00 A4 */	li r5, 0xa4
/* 800CDAD0  38 C0 00 02 */	li r6, 2
/* 800CDAD4  48 29 42 15 */	bl __destroy_arr
/* 800CDAD8  38 7F 29 04 */	addi r3, r31, 0x2904
/* 800CDADC  3C 80 80 0D */	lis r4, __dt__18daAlink_footData_cFv@ha /* 0x800CFCB8@ha */
/* 800CDAE0  38 84 FC B8 */	addi r4, r4, __dt__18daAlink_footData_cFv@l /* 0x800CFCB8@l */
/* 800CDAE4  38 A0 00 A4 */	li r5, 0xa4
/* 800CDAE8  38 C0 00 02 */	li r6, 2
/* 800CDAEC  48 29 41 FD */	bl __destroy_arr
/* 800CDAF0  38 7F 28 64 */	addi r3, r31, 0x2864
/* 800CDAF4  38 80 FF FF */	li r4, -1
/* 800CDAF8  48 17 C4 51 */	bl __dt__10dMsgFlow_cFv
/* 800CDAFC  34 1F 27 C8 */	addic. r0, r31, 0x27c8
/* 800CDB00  41 82 00 1C */	beq lbl_800CDB1C
/* 800CDB04  3C 60 80 3B */	lis r3, __vt__29dAlink_bottleWaterPcallBack_c@ha /* 0x803B35B4@ha */
/* 800CDB08  38 03 35 B4 */	addi r0, r3, __vt__29dAlink_bottleWaterPcallBack_c@l /* 0x803B35B4@l */
/* 800CDB0C  90 1F 27 C8 */	stw r0, 0x27c8(r31)
/* 800CDB10  38 7F 27 C8 */	addi r3, r31, 0x27c8
/* 800CDB14  38 80 00 00 */	li r4, 0
/* 800CDB18  48 1B 14 8D */	bl __dt__19JPAParticleCallBackFv
lbl_800CDB1C:
/* 800CDB1C  34 1F 21 F0 */	addic. r0, r31, 0x21f0
/* 800CDB20  41 82 00 54 */	beq lbl_800CDB74
/* 800CDB24  3C 60 80 3B */	lis r3, __vt__14daAlink_blur_c@ha /* 0x803B35A0@ha */
/* 800CDB28  38 03 35 A0 */	addi r0, r3, __vt__14daAlink_blur_c@l /* 0x803B35A0@l */
/* 800CDB2C  90 1F 21 F0 */	stw r0, 0x21f0(r31)
/* 800CDB30  38 7F 24 F8 */	addi r3, r31, 0x24f8
/* 800CDB34  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CDB38  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CDB3C  38 A0 00 0C */	li r5, 0xc
/* 800CDB40  38 C0 00 3C */	li r6, 0x3c
/* 800CDB44  48 29 41 A5 */	bl __destroy_arr
/* 800CDB48  38 7F 22 28 */	addi r3, r31, 0x2228
/* 800CDB4C  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 800CDB50  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 800CDB54  38 A0 00 0C */	li r5, 0xc
/* 800CDB58  38 C0 00 3C */	li r6, 0x3c
/* 800CDB5C  48 29 41 8D */	bl __destroy_arr
/* 800CDB60  34 1F 21 F0 */	addic. r0, r31, 0x21f0
/* 800CDB64  41 82 00 10 */	beq lbl_800CDB74
/* 800CDB68  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 800CDB6C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 800CDB70  90 1F 21 F0 */	stw r0, 0x21f0(r31)
lbl_800CDB74:
/* 800CDB74  38 7F 21 D8 */	addi r3, r31, 0x21d8
/* 800CDB78  38 80 FF FF */	li r4, -1
/* 800CDB7C  48 09 11 D5 */	bl __dt__14daPy_anmHeap_cFv
/* 800CDB80  38 7F 21 B0 */	addi r3, r31, 0x21b0
/* 800CDB84  3C 80 80 16 */	lis r4, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 800CDB88  38 84 ED 50 */	addi r4, r4, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 800CDB8C  38 A0 00 14 */	li r5, 0x14
/* 800CDB90  38 C0 00 02 */	li r6, 2
/* 800CDB94  48 29 41 55 */	bl __destroy_arr
/* 800CDB98  34 1F 21 9C */	addic. r0, r31, 0x219c
/* 800CDB9C  41 82 00 18 */	beq lbl_800CDBB4
/* 800CDBA0  3C 60 80 3B */	lis r3, __vt__8dEyeHL_c@ha /* 0x803B2E80@ha */
/* 800CDBA4  38 03 2E 80 */	addi r0, r3, __vt__8dEyeHL_c@l /* 0x803B2E80@l */
/* 800CDBA8  90 1F 21 9C */	stw r0, 0x219c(r31)
/* 800CDBAC  38 7F 21 9C */	addi r3, r31, 0x219c
/* 800CDBB0  4B FC EE 79 */	bl remove__8dEyeHL_cFv
lbl_800CDBB4:
/* 800CDBB4  34 1F 21 88 */	addic. r0, r31, 0x2188
/* 800CDBB8  41 82 00 18 */	beq lbl_800CDBD0
/* 800CDBBC  3C 60 80 3B */	lis r3, __vt__8dEyeHL_c@ha /* 0x803B2E80@ha */
/* 800CDBC0  38 03 2E 80 */	addi r0, r3, __vt__8dEyeHL_c@l /* 0x803B2E80@l */
/* 800CDBC4  90 1F 21 88 */	stw r0, 0x2188(r31)
/* 800CDBC8  38 7F 21 88 */	addi r3, r31, 0x2188
/* 800CDBCC  4B FC EE 5D */	bl remove__8dEyeHL_cFv
lbl_800CDBD0:
/* 800CDBD0  34 1F 21 64 */	addic. r0, r31, 0x2164
/* 800CDBD4  41 82 00 20 */	beq lbl_800CDBF4
/* 800CDBD8  34 1F 21 64 */	addic. r0, r31, 0x2164
/* 800CDBDC  41 82 00 18 */	beq lbl_800CDBF4
/* 800CDBE0  34 1F 21 64 */	addic. r0, r31, 0x2164
/* 800CDBE4  41 82 00 10 */	beq lbl_800CDBF4
/* 800CDBE8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800CDBEC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800CDBF0  90 1F 21 64 */	stw r0, 0x2164(r31)
lbl_800CDBF4:
/* 800CDBF4  38 7F 21 40 */	addi r3, r31, 0x2140
/* 800CDBF8  38 80 FF FF */	li r4, -1
/* 800CDBFC  48 09 11 55 */	bl __dt__14daPy_anmHeap_cFv
/* 800CDC00  38 7F 21 2C */	addi r3, r31, 0x212c
/* 800CDC04  38 80 FF FF */	li r4, -1
/* 800CDC08  48 09 11 49 */	bl __dt__14daPy_anmHeap_cFv
/* 800CDC0C  38 7F 21 18 */	addi r3, r31, 0x2118
/* 800CDC10  38 80 FF FF */	li r4, -1
/* 800CDC14  48 09 11 3D */	bl __dt__14daPy_anmHeap_cFv
/* 800CDC18  38 7F 21 04 */	addi r3, r31, 0x2104
/* 800CDC1C  38 80 FF FF */	li r4, -1
/* 800CDC20  48 09 11 31 */	bl __dt__14daPy_anmHeap_cFv
/* 800CDC24  38 7F 20 F0 */	addi r3, r31, 0x20f0
/* 800CDC28  38 80 FF FF */	li r4, -1
/* 800CDC2C  48 09 11 25 */	bl __dt__14daPy_anmHeap_cFv
/* 800CDC30  34 1F 20 64 */	addic. r0, r31, 0x2064
/* 800CDC34  41 82 00 38 */	beq lbl_800CDC6C
/* 800CDC38  3C 60 80 3B */	lis r3, __vt__15daAlink_sight_c@ha /* 0x803B3580@ha */
/* 800CDC3C  38 03 35 80 */	addi r0, r3, __vt__15daAlink_sight_c@l /* 0x803B3580@l */
/* 800CDC40  90 1F 20 64 */	stw r0, 0x2064(r31)
/* 800CDC44  34 1F 20 B4 */	addic. r0, r31, 0x20b4
/* 800CDC48  41 82 00 10 */	beq lbl_800CDC58
/* 800CDC4C  3C 60 80 3B */	lis r3, __vt__20daAlink_lockCursor_c@ha /* 0x803B3590@ha */
/* 800CDC50  38 03 35 90 */	addi r0, r3, __vt__20daAlink_lockCursor_c@l /* 0x803B3590@l */
/* 800CDC54  90 1F 20 B4 */	stw r0, 0x20b4(r31)
lbl_800CDC58:
/* 800CDC58  34 1F 20 64 */	addic. r0, r31, 0x2064
/* 800CDC5C  41 82 00 10 */	beq lbl_800CDC6C
/* 800CDC60  3C 60 80 3C */	lis r3, __vt__18daPy_sightPacket_c@ha /* 0x803BA14C@ha */
/* 800CDC64  38 03 A1 4C */	addi r0, r3, __vt__18daPy_sightPacket_c@l /* 0x803BA14C@l */
/* 800CDC68  90 1F 20 64 */	stw r0, 0x2064(r31)
lbl_800CDC6C:
/* 800CDC6C  38 7F 20 18 */	addi r3, r31, 0x2018
/* 800CDC70  3C 80 80 14 */	lis r4, __dt__16daPy_frameCtrl_cFv@ha /* 0x80140D24@ha */
/* 800CDC74  38 84 0D 24 */	addi r4, r4, __dt__16daPy_frameCtrl_cFv@l /* 0x80140D24@l */
/* 800CDC78  38 A0 00 18 */	li r5, 0x18
/* 800CDC7C  38 C0 00 03 */	li r6, 3
/* 800CDC80  48 29 40 69 */	bl __destroy_arr
/* 800CDC84  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800CDC88  3C 80 80 14 */	lis r4, __dt__16daPy_frameCtrl_cFv@ha /* 0x80140D24@ha */
/* 800CDC8C  38 84 0D 24 */	addi r4, r4, __dt__16daPy_frameCtrl_cFv@l /* 0x80140D24@l */
/* 800CDC90  38 A0 00 18 */	li r5, 0x18
/* 800CDC94  38 C0 00 03 */	li r6, 3
/* 800CDC98  48 29 40 51 */	bl __destroy_arr
/* 800CDC9C  38 7F 1F 94 */	addi r3, r31, 0x1f94
/* 800CDCA0  3C 80 80 16 */	lis r4, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 800CDCA4  38 84 ED 50 */	addi r4, r4, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 800CDCA8  38 A0 00 14 */	li r5, 0x14
/* 800CDCAC  38 C0 00 03 */	li r6, 3
/* 800CDCB0  48 29 40 39 */	bl __destroy_arr
/* 800CDCB4  38 7F 1F 58 */	addi r3, r31, 0x1f58
/* 800CDCB8  3C 80 80 16 */	lis r4, __dt__14daPy_anmHeap_cFv@ha /* 0x8015ED50@ha */
/* 800CDCBC  38 84 ED 50 */	addi r4, r4, __dt__14daPy_anmHeap_cFv@l /* 0x8015ED50@l */
/* 800CDCC0  38 A0 00 14 */	li r5, 0x14
/* 800CDCC4  38 C0 00 03 */	li r6, 3
/* 800CDCC8  48 29 40 21 */	bl __destroy_arr
/* 800CDCCC  38 7F 1F 40 */	addi r3, r31, 0x1f40
/* 800CDCD0  3C 80 80 14 */	lis r4, __dt__19mDoExt_AnmRatioPackFv@ha /* 0x80140DF0@ha */
/* 800CDCD4  38 84 0D F0 */	addi r4, r4, __dt__19mDoExt_AnmRatioPackFv@l /* 0x80140DF0@l */
/* 800CDCD8  38 A0 00 08 */	li r5, 8
/* 800CDCDC  38 C0 00 03 */	li r6, 3
/* 800CDCE0  48 29 40 09 */	bl __destroy_arr
/* 800CDCE4  38 7F 1F 28 */	addi r3, r31, 0x1f28
/* 800CDCE8  3C 80 80 14 */	lis r4, __dt__19mDoExt_AnmRatioPackFv@ha /* 0x80140DF0@ha */
/* 800CDCEC  38 84 0D F0 */	addi r4, r4, __dt__19mDoExt_AnmRatioPackFv@l /* 0x80140DF0@l */
/* 800CDCF0  38 A0 00 08 */	li r5, 8
/* 800CDCF4  38 C0 00 03 */	li r6, 3
/* 800CDCF8  48 29 3F F1 */	bl __destroy_arr
/* 800CDCFC  34 1F 1E CC */	addic. r0, r31, 0x1ecc
/* 800CDD00  41 82 00 34 */	beq lbl_800CDD34
/* 800CDD04  3C 60 80 3A */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x803A382C@ha */
/* 800CDD08  38 63 38 2C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x803A382C@l */
/* 800CDD0C  90 7F 1E DC */	stw r3, 0x1edc(r31)
/* 800CDD10  38 03 00 0C */	addi r0, r3, 0xc
/* 800CDD14  90 1F 1E EC */	stw r0, 0x1eec(r31)
/* 800CDD18  38 03 00 18 */	addi r0, r3, 0x18
/* 800CDD1C  90 1F 1F 08 */	stw r0, 0x1f08(r31)
/* 800CDD20  38 03 00 24 */	addi r0, r3, 0x24
/* 800CDD24  90 1F 1F 18 */	stw r0, 0x1f18(r31)
/* 800CDD28  38 7F 1E CC */	addi r3, r31, 0x1ecc
/* 800CDD2C  38 80 00 00 */	li r4, 0
/* 800CDD30  4B FA 98 C1 */	bl __dt__11dBgS_GndChkFv
lbl_800CDD34:
/* 800CDD34  38 7F 1E 5C */	addi r3, r31, 0x1e5c
/* 800CDD38  38 80 FF FF */	li r4, -1
/* 800CDD3C  4B FA A2 7D */	bl __dt__14dBgS_ObjLinChkFv
/* 800CDD40  38 7F 1E 4C */	addi r3, r31, 0x1e4c
/* 800CDD44  38 80 FF FF */	li r4, -1
/* 800CDD48  48 19 A3 69 */	bl __dt__13cBgS_PolyInfoFv
/* 800CDD4C  38 7F 1E 3C */	addi r3, r31, 0x1e3c
/* 800CDD50  38 80 FF FF */	li r4, -1
/* 800CDD54  48 19 A3 5D */	bl __dt__13cBgS_PolyInfoFv
/* 800CDD58  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 800CDD5C  38 80 FF FF */	li r4, -1
/* 800CDD60  48 19 A3 51 */	bl __dt__13cBgS_PolyInfoFv
/* 800CDD64  38 7F 1E 1C */	addi r3, r31, 0x1e1c
/* 800CDD68  38 80 FF FF */	li r4, -1
/* 800CDD6C  48 19 A3 45 */	bl __dt__13cBgS_PolyInfoFv
/* 800CDD70  38 7F 1D AC */	addi r3, r31, 0x1dac
/* 800CDD74  38 80 FF FF */	li r4, -1
/* 800CDD78  4B FA A3 15 */	bl __dt__15dBgS_LinkLinChkFv
/* 800CDD7C  34 1F 1D 5C */	addic. r0, r31, 0x1d5c
/* 800CDD80  41 82 00 34 */	beq lbl_800CDDB4
/* 800CDD84  3C 60 80 3B */	lis r3, __vt__16dBgS_LinkRoofChk@ha /* 0x803B2EC8@ha */
/* 800CDD88  38 63 2E C8 */	addi r3, r3, __vt__16dBgS_LinkRoofChk@l /* 0x803B2EC8@l */
/* 800CDD8C  90 7F 1D 68 */	stw r3, 0x1d68(r31)
/* 800CDD90  38 03 00 0C */	addi r0, r3, 0xc
/* 800CDD94  90 1F 1D 7C */	stw r0, 0x1d7c(r31)
/* 800CDD98  38 03 00 18 */	addi r0, r3, 0x18
/* 800CDD9C  90 1F 1D 80 */	stw r0, 0x1d80(r31)
/* 800CDDA0  38 03 00 24 */	addi r0, r3, 0x24
/* 800CDDA4  90 1F 1D 90 */	stw r0, 0x1d90(r31)
/* 800CDDA8  38 7F 1D 5C */	addi r3, r31, 0x1d5c
/* 800CDDAC  38 80 00 00 */	li r4, 0
/* 800CDDB0  4B FA B2 E1 */	bl __dt__12dBgS_RoofChkFv
lbl_800CDDB4:
/* 800CDDB4  34 1F 1D 08 */	addic. r0, r31, 0x1d08
/* 800CDDB8  41 82 00 34 */	beq lbl_800CDDEC
/* 800CDDBC  3C 60 80 3B */	lis r3, __vt__15dBgS_LinkGndChk@ha /* 0x803B2EF8@ha */
/* 800CDDC0  38 63 2E F8 */	addi r3, r3, __vt__15dBgS_LinkGndChk@l /* 0x803B2EF8@l */
/* 800CDDC4  90 7F 1D 18 */	stw r3, 0x1d18(r31)
/* 800CDDC8  38 03 00 0C */	addi r0, r3, 0xc
/* 800CDDCC  90 1F 1D 28 */	stw r0, 0x1d28(r31)
/* 800CDDD0  38 03 00 18 */	addi r0, r3, 0x18
/* 800CDDD4  90 1F 1D 44 */	stw r0, 0x1d44(r31)
/* 800CDDD8  38 03 00 24 */	addi r0, r3, 0x24
/* 800CDDDC  90 1F 1D 54 */	stw r0, 0x1d54(r31)
/* 800CDDE0  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800CDDE4  38 80 00 00 */	li r4, 0
/* 800CDDE8  4B FA 98 09 */	bl __dt__11dBgS_GndChkFv
lbl_800CDDEC:
/* 800CDDEC  38 7F 1C 98 */	addi r3, r31, 0x1c98
/* 800CDDF0  38 80 FF FF */	li r4, -1
/* 800CDDF4  4B FA A4 4D */	bl __dt__16dBgS_ArrowLinChkFv
/* 800CDDF8  38 7F 1C 28 */	addi r3, r31, 0x1c28
/* 800CDDFC  38 80 FF FF */	li r4, -1
/* 800CDE00  4B FA A5 15 */	bl __dt__20dBgS_BoomerangLinChkFv
/* 800CDE04  38 7F 1B B8 */	addi r3, r31, 0x1bb8
/* 800CDE08  38 80 FF FF */	li r4, -1
/* 800CDE0C  4B FA A5 DD */	bl __dt__15dBgS_RopeLinChkFv
/* 800CDE10  38 7F 1B 48 */	addi r3, r31, 0x1b48
/* 800CDE14  38 80 FF FF */	li r4, -1
/* 800CDE18  4B FA A2 75 */	bl __dt__15dBgS_LinkLinChkFv
/* 800CDE1C  34 1F 19 70 */	addic. r0, r31, 0x1970
/* 800CDE20  41 82 00 2C */	beq lbl_800CDE4C
/* 800CDE24  3C 60 80 3B */	lis r3, __vt__13dBgS_LinkAcch@ha /* 0x803B2F28@ha */
/* 800CDE28  38 63 2F 28 */	addi r3, r3, __vt__13dBgS_LinkAcch@l /* 0x803B2F28@l */
/* 800CDE2C  90 7F 19 80 */	stw r3, 0x1980(r31)
/* 800CDE30  38 03 00 0C */	addi r0, r3, 0xc
/* 800CDE34  90 1F 19 84 */	stw r0, 0x1984(r31)
/* 800CDE38  38 03 00 18 */	addi r0, r3, 0x18
/* 800CDE3C  90 1F 19 94 */	stw r0, 0x1994(r31)
/* 800CDE40  38 7F 19 70 */	addi r3, r31, 0x1970
/* 800CDE44  38 80 00 00 */	li r4, 0
/* 800CDE48  4B FA 81 4D */	bl __dt__9dBgS_AcchFv
lbl_800CDE4C:
/* 800CDE4C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800CDE50  3C 80 80 07 */	lis r4, __dt__12dBgS_AcchCirFv@ha /* 0x80077414@ha */
/* 800CDE54  38 84 74 14 */	addi r4, r4, __dt__12dBgS_AcchCirFv@l /* 0x80077414@l */
/* 800CDE58  38 A0 00 40 */	li r5, 0x40
/* 800CDE5C  38 C0 00 03 */	li r6, 3
/* 800CDE60  48 29 3E 89 */	bl __destroy_arr
/* 800CDE64  34 1F 17 78 */	addic. r0, r31, 0x1778
/* 800CDE68  41 82 00 84 */	beq lbl_800CDEEC
/* 800CDE6C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 800CDE70  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 800CDE74  90 7F 17 B4 */	stw r3, 0x17b4(r31)
/* 800CDE78  38 03 00 2C */	addi r0, r3, 0x2c
/* 800CDE7C  90 1F 18 98 */	stw r0, 0x1898(r31)
/* 800CDE80  38 03 00 84 */	addi r0, r3, 0x84
/* 800CDE84  90 1F 18 AC */	stw r0, 0x18ac(r31)
/* 800CDE88  34 1F 18 7C */	addic. r0, r31, 0x187c
/* 800CDE8C  41 82 00 54 */	beq lbl_800CDEE0
/* 800CDE90  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 800CDE94  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 800CDE98  90 7F 18 98 */	stw r3, 0x1898(r31)
/* 800CDE9C  38 03 00 58 */	addi r0, r3, 0x58
/* 800CDEA0  90 1F 18 AC */	stw r0, 0x18ac(r31)
/* 800CDEA4  34 1F 18 9C */	addic. r0, r31, 0x189c
/* 800CDEA8  41 82 00 10 */	beq lbl_800CDEB8
/* 800CDEAC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 800CDEB0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 800CDEB4  90 1F 18 AC */	stw r0, 0x18ac(r31)
lbl_800CDEB8:
/* 800CDEB8  34 1F 18 7C */	addic. r0, r31, 0x187c
/* 800CDEBC  41 82 00 24 */	beq lbl_800CDEE0
/* 800CDEC0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CDEC4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CDEC8  90 1F 18 98 */	stw r0, 0x1898(r31)
/* 800CDECC  34 1F 18 7C */	addic. r0, r31, 0x187c
/* 800CDED0  41 82 00 10 */	beq lbl_800CDEE0
/* 800CDED4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CDED8  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CDEDC  90 1F 18 94 */	stw r0, 0x1894(r31)
lbl_800CDEE0:
/* 800CDEE0  38 7F 17 78 */	addi r3, r31, 0x1778
/* 800CDEE4  38 80 00 00 */	li r4, 0
/* 800CDEE8  4B FB 61 FD */	bl __dt__12dCcD_GObjInfFv
lbl_800CDEEC:
/* 800CDEEC  34 1F 17 3C */	addic. r0, r31, 0x173c
/* 800CDEF0  41 82 00 54 */	beq lbl_800CDF44
/* 800CDEF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 800CDEF8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 800CDEFC  90 7F 17 54 */	stw r3, 0x1754(r31)
/* 800CDF00  38 03 00 20 */	addi r0, r3, 0x20
/* 800CDF04  90 1F 17 58 */	stw r0, 0x1758(r31)
/* 800CDF08  34 1F 17 58 */	addic. r0, r31, 0x1758
/* 800CDF0C  41 82 00 24 */	beq lbl_800CDF30
/* 800CDF10  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha /* 0x803AC310@ha */
/* 800CDF14  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x803AC310@l */
/* 800CDF18  90 1F 17 58 */	stw r0, 0x1758(r31)
/* 800CDF1C  34 1F 17 58 */	addic. r0, r31, 0x1758
/* 800CDF20  41 82 00 10 */	beq lbl_800CDF30
/* 800CDF24  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha /* 0x803AC31C@ha */
/* 800CDF28  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x803AC31C@l */
/* 800CDF2C  90 1F 17 58 */	stw r0, 0x1758(r31)
lbl_800CDF30:
/* 800CDF30  34 1F 17 3C */	addic. r0, r31, 0x173c
/* 800CDF34  41 82 00 10 */	beq lbl_800CDF44
/* 800CDF38  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 800CDF3C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 800CDF40  90 1F 17 54 */	stw r0, 0x1754(r31)
lbl_800CDF44:
/* 800CDF44  34 1F 15 F8 */	addic. r0, r31, 0x15f8
/* 800CDF48  41 82 00 7C */	beq lbl_800CDFC4
/* 800CDF4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 800CDF50  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 800CDF54  90 7F 16 34 */	stw r3, 0x1634(r31)
/* 800CDF58  38 03 00 2C */	addi r0, r3, 0x2c
/* 800CDF5C  90 1F 17 18 */	stw r0, 0x1718(r31)
/* 800CDF60  38 03 00 84 */	addi r0, r3, 0x84
/* 800CDF64  90 1F 17 34 */	stw r0, 0x1734(r31)
/* 800CDF68  34 1F 16 FC */	addic. r0, r31, 0x16fc
/* 800CDF6C  41 82 00 4C */	beq lbl_800CDFB8
/* 800CDF70  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 800CDF74  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 800CDF78  90 7F 17 18 */	stw r3, 0x1718(r31)
/* 800CDF7C  38 03 00 58 */	addi r0, r3, 0x58
/* 800CDF80  90 1F 17 34 */	stw r0, 0x1734(r31)
/* 800CDF84  38 7F 17 1C */	addi r3, r31, 0x171c
/* 800CDF88  38 80 00 00 */	li r4, 0
/* 800CDF8C  48 1A 10 19 */	bl __dt__8cM3dGCpsFv
/* 800CDF90  34 1F 16 FC */	addic. r0, r31, 0x16fc
/* 800CDF94  41 82 00 24 */	beq lbl_800CDFB8
/* 800CDF98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CDF9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CDFA0  90 1F 17 18 */	stw r0, 0x1718(r31)
/* 800CDFA4  34 1F 16 FC */	addic. r0, r31, 0x16fc
/* 800CDFA8  41 82 00 10 */	beq lbl_800CDFB8
/* 800CDFAC  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CDFB0  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CDFB4  90 1F 17 14 */	stw r0, 0x1714(r31)
lbl_800CDFB8:
/* 800CDFB8  38 7F 15 F8 */	addi r3, r31, 0x15f8
/* 800CDFBC  38 80 00 00 */	li r4, 0
/* 800CDFC0  4B FB 61 25 */	bl __dt__12dCcD_GObjInfFv
lbl_800CDFC4:
/* 800CDFC4  38 7F 12 2C */	addi r3, r31, 0x122c
/* 800CDFC8  3C 80 80 08 */	lis r4, __dt__8dCcD_CpsFv@ha /* 0x8008506C@ha */
/* 800CDFCC  38 84 50 6C */	addi r4, r4, __dt__8dCcD_CpsFv@l /* 0x8008506C@l */
/* 800CDFD0  38 A0 01 44 */	li r5, 0x144
/* 800CDFD4  38 C0 00 03 */	li r6, 3
/* 800CDFD8  48 29 3D 11 */	bl __destroy_arr
/* 800CDFDC  34 1F 10 F0 */	addic. r0, r31, 0x10f0
/* 800CDFE0  41 82 00 84 */	beq lbl_800CE064
/* 800CDFE4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 800CDFE8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 800CDFEC  90 7F 11 2C */	stw r3, 0x112c(r31)
/* 800CDFF0  38 03 00 2C */	addi r0, r3, 0x2c
/* 800CDFF4  90 1F 12 10 */	stw r0, 0x1210(r31)
/* 800CDFF8  38 03 00 84 */	addi r0, r3, 0x84
/* 800CDFFC  90 1F 12 28 */	stw r0, 0x1228(r31)
/* 800CE000  34 1F 11 F4 */	addic. r0, r31, 0x11f4
/* 800CE004  41 82 00 54 */	beq lbl_800CE058
/* 800CE008  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 800CE00C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 800CE010  90 7F 12 10 */	stw r3, 0x1210(r31)
/* 800CE014  38 03 00 58 */	addi r0, r3, 0x58
/* 800CE018  90 1F 12 28 */	stw r0, 0x1228(r31)
/* 800CE01C  34 1F 12 14 */	addic. r0, r31, 0x1214
/* 800CE020  41 82 00 10 */	beq lbl_800CE030
/* 800CE024  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha /* 0x803A720C@ha */
/* 800CE028  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x803A720C@l */
/* 800CE02C  90 1F 12 28 */	stw r0, 0x1228(r31)
lbl_800CE030:
/* 800CE030  34 1F 11 F4 */	addic. r0, r31, 0x11f4
/* 800CE034  41 82 00 24 */	beq lbl_800CE058
/* 800CE038  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CE03C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CE040  90 1F 12 10 */	stw r0, 0x1210(r31)
/* 800CE044  34 1F 11 F4 */	addic. r0, r31, 0x11f4
/* 800CE048  41 82 00 10 */	beq lbl_800CE058
/* 800CE04C  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CE050  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CE054  90 1F 12 0C */	stw r0, 0x120c(r31)
lbl_800CE058:
/* 800CE058  38 7F 10 F0 */	addi r3, r31, 0x10f0
/* 800CE05C  38 80 00 00 */	li r4, 0
/* 800CE060  4B FB 60 85 */	bl __dt__12dCcD_GObjInfFv
lbl_800CE064:
/* 800CE064  34 1F 0F B8 */	addic. r0, r31, 0xfb8
/* 800CE068  41 82 00 84 */	beq lbl_800CE0EC
/* 800CE06C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 800CE070  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 800CE074  90 7F 0F F4 */	stw r3, 0xff4(r31)
/* 800CE078  38 03 00 2C */	addi r0, r3, 0x2c
/* 800CE07C  90 1F 10 D8 */	stw r0, 0x10d8(r31)
/* 800CE080  38 03 00 84 */	addi r0, r3, 0x84
/* 800CE084  90 1F 10 EC */	stw r0, 0x10ec(r31)
/* 800CE088  34 1F 10 BC */	addic. r0, r31, 0x10bc
/* 800CE08C  41 82 00 54 */	beq lbl_800CE0E0
/* 800CE090  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 800CE094  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 800CE098  90 7F 10 D8 */	stw r3, 0x10d8(r31)
/* 800CE09C  38 03 00 58 */	addi r0, r3, 0x58
/* 800CE0A0  90 1F 10 EC */	stw r0, 0x10ec(r31)
/* 800CE0A4  34 1F 10 DC */	addic. r0, r31, 0x10dc
/* 800CE0A8  41 82 00 10 */	beq lbl_800CE0B8
/* 800CE0AC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha /* 0x803A7904@ha */
/* 800CE0B0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x803A7904@l */
/* 800CE0B4  90 1F 10 EC */	stw r0, 0x10ec(r31)
lbl_800CE0B8:
/* 800CE0B8  34 1F 10 BC */	addic. r0, r31, 0x10bc
/* 800CE0BC  41 82 00 24 */	beq lbl_800CE0E0
/* 800CE0C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 800CE0C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 800CE0C8  90 1F 10 D8 */	stw r0, 0x10d8(r31)
/* 800CE0CC  34 1F 10 BC */	addic. r0, r31, 0x10bc
/* 800CE0D0  41 82 00 10 */	beq lbl_800CE0E0
/* 800CE0D4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800CE0D8  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800CE0DC  90 1F 10 D4 */	stw r0, 0x10d4(r31)
lbl_800CE0E0:
/* 800CE0E0  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 800CE0E4  38 80 00 00 */	li r4, 0
/* 800CE0E8  4B FB 5F FD */	bl __dt__12dCcD_GObjInfFv
lbl_800CE0EC:
/* 800CE0EC  38 7F 0C 04 */	addi r3, r31, 0xc04
/* 800CE0F0  3C 80 80 08 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80084D60@ha */
/* 800CE0F4  38 84 4D 60 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80084D60@l */
/* 800CE0F8  38 A0 01 3C */	li r5, 0x13c
/* 800CE0FC  38 C0 00 03 */	li r6, 3
/* 800CE100  48 29 3B E9 */	bl __destroy_arr
/* 800CE104  38 7F 08 50 */	addi r3, r31, 0x850
/* 800CE108  3C 80 80 08 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80084D60@ha */
/* 800CE10C  38 84 4D 60 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80084D60@l */
/* 800CE110  38 A0 01 3C */	li r5, 0x13c
/* 800CE114  38 C0 00 03 */	li r6, 3
/* 800CE118  48 29 3B D1 */	bl __destroy_arr
/* 800CE11C  34 1F 08 14 */	addic. r0, r31, 0x814
/* 800CE120  41 82 00 54 */	beq lbl_800CE174
/* 800CE124  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 800CE128  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 800CE12C  90 7F 08 2C */	stw r3, 0x82c(r31)
/* 800CE130  38 03 00 20 */	addi r0, r3, 0x20
/* 800CE134  90 1F 08 30 */	stw r0, 0x830(r31)
/* 800CE138  34 1F 08 30 */	addic. r0, r31, 0x830
/* 800CE13C  41 82 00 24 */	beq lbl_800CE160
/* 800CE140  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha /* 0x803AC310@ha */
/* 800CE144  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x803AC310@l */
/* 800CE148  90 1F 08 30 */	stw r0, 0x830(r31)
/* 800CE14C  34 1F 08 30 */	addic. r0, r31, 0x830
/* 800CE150  41 82 00 10 */	beq lbl_800CE160
/* 800CE154  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha /* 0x803AC31C@ha */
/* 800CE158  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x803AC31C@l */
/* 800CE15C  90 1F 08 30 */	stw r0, 0x830(r31)
lbl_800CE160:
/* 800CE160  34 1F 08 14 */	addic. r0, r31, 0x814
/* 800CE164  41 82 00 10 */	beq lbl_800CE174
/* 800CE168  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 800CE16C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 800CE170  90 1F 08 2C */	stw r0, 0x82c(r31)
lbl_800CE174:
/* 800CE174  34 1F 07 4C */	addic. r0, r31, 0x74c
/* 800CE178  41 82 00 20 */	beq lbl_800CE198
/* 800CE17C  34 1F 07 4C */	addic. r0, r31, 0x74c
/* 800CE180  41 82 00 18 */	beq lbl_800CE198
/* 800CE184  34 1F 07 4C */	addic. r0, r31, 0x74c
/* 800CE188  41 82 00 10 */	beq lbl_800CE198
/* 800CE18C  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800CE190  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800CE194  90 1F 07 4C */	stw r0, 0x74c(r31)
lbl_800CE198:
/* 800CE198  34 1F 07 30 */	addic. r0, r31, 0x730
/* 800CE19C  41 82 00 20 */	beq lbl_800CE1BC
/* 800CE1A0  34 1F 07 30 */	addic. r0, r31, 0x730
/* 800CE1A4  41 82 00 18 */	beq lbl_800CE1BC
/* 800CE1A8  34 1F 07 30 */	addic. r0, r31, 0x730
/* 800CE1AC  41 82 00 10 */	beq lbl_800CE1BC
/* 800CE1B0  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x803A3354@ha */
/* 800CE1B4  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x803A3354@l */
/* 800CE1B8  90 1F 07 30 */	stw r0, 0x730(r31)
lbl_800CE1BC:
/* 800CE1BC  28 1F 00 00 */	cmplwi r31, 0
/* 800CE1C0  41 82 00 1C */	beq lbl_800CE1DC
/* 800CE1C4  3C 60 80 3B */	lis r3, __vt__9daPy_py_c@ha /* 0x803B2F70@ha */
/* 800CE1C8  38 03 2F 70 */	addi r0, r3, __vt__9daPy_py_c@l /* 0x803B2F70@l */
/* 800CE1CC  90 1F 06 28 */	stw r0, 0x628(r31)
/* 800CE1D0  7F E3 FB 78 */	mr r3, r31
/* 800CE1D4  38 80 00 00 */	li r4, 0
/* 800CE1D8  4B F4 AA B5 */	bl __dt__10fopAc_ac_cFv
lbl_800CE1DC:
/* 800CE1DC  7F C0 07 35 */	extsh. r0, r30
/* 800CE1E0  40 81 00 0C */	ble lbl_800CE1EC
/* 800CE1E4  7F E3 FB 78 */	mr r3, r31
/* 800CE1E8  48 20 0B 55 */	bl __dl__FPv
lbl_800CE1EC:
/* 800CE1EC  7F E3 FB 78 */	mr r3, r31
/* 800CE1F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CE1F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800CE1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CE1FC  7C 08 03 A6 */	mtlr r0
/* 800CE200  38 21 00 10 */	addi r1, r1, 0x10
/* 800CE204  4E 80 00 20 */	blr 
