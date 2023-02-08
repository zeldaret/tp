lbl_80AA2FD4:
/* 80AA2FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2FD8  7C 08 02 A6 */	mflr r0
/* 80AA2FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA2FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA2FE8  7C 7F 1B 78 */	mr r31, r3
/* 80AA2FEC  80 03 0A 98 */	lwz r0, 0xa98(r3)
/* 80AA2FF0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA2FF4  40 80 00 1C */	bge lbl_80AA3010
/* 80AA2FF8  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA2FFC  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA3000  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 80AA3004  7C 63 02 14 */	add r3, r3, r0
/* 80AA3008  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 80AA300C  48 00 00 18 */	b lbl_80AA3024
lbl_80AA3010:
/* 80AA3010  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA3014  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA3018  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 80AA301C  7C 63 02 14 */	add r3, r3, r0
/* 80AA3020  C0 03 FF 38 */	lfs f0, -0xc8(r3)
lbl_80AA3024:
/* 80AA3024  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 80AA3028  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80AA302C  38 7F 08 10 */	addi r3, r31, 0x810
/* 80AA3030  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA3034  40 80 00 1C */	bge lbl_80AA3050
/* 80AA3038  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA303C  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA3040  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 80AA3044  7C 84 02 14 */	add r4, r4, r0
/* 80AA3048  C0 24 02 0C */	lfs f1, 0x20c(r4)
/* 80AA304C  48 00 00 18 */	b lbl_80AA3064
lbl_80AA3050:
/* 80AA3050  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA3054  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA3058  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 80AA305C  7C 84 02 14 */	add r4, r4, r0
/* 80AA3060  C0 24 FF 3C */	lfs f1, -0xc4(r4)
lbl_80AA3064:
/* 80AA3064  4B 5D 2E DD */	bl SetWallR__12dBgS_AcchCirFf
/* 80AA3068  7F E3 FB 78 */	mr r3, r31
/* 80AA306C  48 00 01 ED */	bl callExecute__13daNpcPasser_cFv
/* 80AA3070  38 7F 0B 18 */	addi r3, r31, 0xb18
/* 80AA3074  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80AA3078  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA307C  C0 44 69 8C */	lfs f2, lit_4109@l(r4)  /* 0x80AA698C@l */
/* 80AA3080  3C 80 80 AA */	lis r4, lit_4110@ha /* 0x80AA6990@ha */
/* 80AA3084  C0 64 69 90 */	lfs f3, lit_4110@l(r4)  /* 0x80AA6990@l */
/* 80AA3088  4B 7C C9 B5 */	bl cLib_addCalc2__FPffff
/* 80AA308C  7F E3 FB 78 */	mr r3, r31
/* 80AA3090  38 80 FF FF */	li r4, -1
/* 80AA3094  4B 6B 5D 95 */	bl animation__10daNpcCd2_cFi
/* 80AA3098  7F E3 FB 78 */	mr r3, r31
/* 80AA309C  48 00 18 3D */	bl setCollision__13daNpcPasser_cFv
/* 80AA30A0  7F E3 FB 78 */	mr r3, r31
/* 80AA30A4  48 00 16 DD */	bl setBaseMtx__13daNpcPasser_cFv
/* 80AA30A8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AA30AC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80AA30B0  41 82 00 90 */	beq lbl_80AA3140
/* 80AA30B4  80 7F 0B 0C */	lwz r3, 0xb0c(r31)
/* 80AA30B8  3C 03 00 00 */	addis r0, r3, 0
/* 80AA30BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AA30C0  41 82 00 80 */	beq lbl_80AA3140
/* 80AA30C4  4B 70 94 B9 */	bl dKy_darkworld_check__Fv
/* 80AA30C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA30CC  41 82 00 10 */	beq lbl_80AA30DC
/* 80AA30D0  4B 6F CA ED */	bl dKy_getDarktime_week__Fv
/* 80AA30D4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80AA30D8  48 00 00 08 */	b lbl_80AA30E0
lbl_80AA30DC:
/* 80AA30DC  4B 70 5A 5D */	bl dKy_get_dayofweek__Fv
lbl_80AA30E0:
/* 80AA30E0  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 80AA30E4  7C 00 18 00 */	cmpw r0, r3
/* 80AA30E8  40 82 00 58 */	bne lbl_80AA3140
/* 80AA30EC  4B 70 94 91 */	bl dKy_darkworld_check__Fv
/* 80AA30F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA30F4  41 82 00 10 */	beq lbl_80AA3104
/* 80AA30F8  4B 6F CA 39 */	bl dKy_getDarktime_minute__Fv
/* 80AA30FC  7C 7E 1B 78 */	mr r30, r3
/* 80AA3100  48 00 00 0C */	b lbl_80AA310C
lbl_80AA3104:
/* 80AA3104  4B 6F C9 39 */	bl dKy_getdaytime_minute__Fv
/* 80AA3108  7C 7E 1B 78 */	mr r30, r3
lbl_80AA310C:
/* 80AA310C  4B 70 94 71 */	bl dKy_darkworld_check__Fv
/* 80AA3110  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3114  41 82 00 0C */	beq lbl_80AA3120
/* 80AA3118  4B 6F C9 DD */	bl dKy_getDarktime_hour__Fv
/* 80AA311C  48 00 00 08 */	b lbl_80AA3124
lbl_80AA3120:
/* 80AA3120  4B 6F C8 F1 */	bl dKy_getdaytime_hour__Fv
lbl_80AA3124:
/* 80AA3124  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 80AA3128  7C 7E 02 14 */	add r3, r30, r0
/* 80AA312C  80 1F 0B 0C */	lwz r0, 0xb0c(r31)
/* 80AA3130  7C 03 00 00 */	cmpw r3, r0
/* 80AA3134  41 80 00 0C */	blt lbl_80AA3140
/* 80AA3138  7F E3 FB 78 */	mr r3, r31
/* 80AA313C  4B 57 6B 41 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AA3140:
/* 80AA3140  38 60 00 01 */	li r3, 1
/* 80AA3144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA3148  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA314C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA3150  7C 08 03 A6 */	mtlr r0
/* 80AA3154  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA3158  4E 80 00 20 */	blr 
