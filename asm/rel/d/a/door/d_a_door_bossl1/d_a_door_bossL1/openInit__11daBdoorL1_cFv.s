lbl_804E3180:
/* 804E3180  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E3184  7C 08 02 A6 */	mflr r0
/* 804E3188  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E318C  39 61 00 40 */	addi r11, r1, 0x40
/* 804E3190  4B E7 F0 3D */	bl _savegpr_25
/* 804E3194  7C 7E 1B 78 */	mr r30, r3
/* 804E3198  3C 60 80 4E */	lis r3, l_staff_name@ha /* 0x804E4A14@ha */
/* 804E319C  3B E3 4A 14 */	addi r31, r3, l_staff_name@l /* 0x804E4A14@l */
/* 804E31A0  80 7E 05 90 */	lwz r3, 0x590(r30)
/* 804E31A4  4B D8 50 31 */	bl ChkUsed__9cBgW_BgIdCFv
/* 804E31A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E31AC  41 82 00 18 */	beq lbl_804E31C4
/* 804E31B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E31B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E31B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804E31BC  80 9E 05 90 */	lwz r4, 0x590(r30)
/* 804E31C0  4B B9 10 91 */	bl Release__4cBgSFP9dBgW_Base
lbl_804E31C4:
/* 804E31C4  7F C3 F3 78 */	mr r3, r30
/* 804E31C8  4B FF EF 3D */	bl getOpenAnm__11daBdoorL1_cFv
/* 804E31CC  7C 7A 1B 78 */	mr r26, r3
/* 804E31D0  7F C3 F3 78 */	mr r3, r30
/* 804E31D4  4B FF EE 8D */	bl getAnmArcName__11daBdoorL1_cFv
/* 804E31D8  7F 44 D3 78 */	mr r4, r26
/* 804E31DC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E31E0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E31E4  3C A5 00 02 */	addis r5, r5, 2
/* 804E31E8  38 C0 00 80 */	li r6, 0x80
/* 804E31EC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804E31F0  4B B5 90 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804E31F4  7C 64 1B 78 */	mr r4, r3
/* 804E31F8  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 804E31FC  38 A0 00 01 */	li r5, 1
/* 804E3200  38 C0 00 00 */	li r6, 0
/* 804E3204  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3208  38 E0 00 00 */	li r7, 0
/* 804E320C  39 00 FF FF */	li r8, -1
/* 804E3210  39 20 00 01 */	li r9, 1
/* 804E3214  4B B2 A5 C9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804E3218  88 1E 05 9B */	lbz r0, 0x59b(r30)
/* 804E321C  28 00 00 00 */	cmplwi r0, 0
/* 804E3220  41 82 03 40 */	beq lbl_804E3560
/* 804E3224  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 804E3228  B0 1E 07 DC */	sth r0, 0x7dc(r30)
/* 804E322C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804E3230  B0 1E 07 DE */	sth r0, 0x7de(r30)
/* 804E3234  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 804E3238  B0 1E 07 E0 */	sth r0, 0x7e0(r30)
/* 804E323C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E3240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E3244  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 804E3248  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 804E324C  7D 89 03 A6 */	mtctr r12
/* 804E3250  4E 80 04 21 */	bctrl 
/* 804E3254  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804E3258  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 804E325C  28 00 00 03 */	cmplwi r0, 3
/* 804E3260  40 82 00 10 */	bne lbl_804E3270
/* 804E3264  A8 7E 07 DE */	lha r3, 0x7de(r30)
/* 804E3268  38 03 7F FF */	addi r0, r3, 0x7fff
/* 804E326C  B0 1E 07 DE */	sth r0, 0x7de(r30)
lbl_804E3270:
/* 804E3270  4B FF EB 29 */	bl getNowLevel__Fv
/* 804E3274  2C 03 00 04 */	cmpwi r3, 4
/* 804E3278  41 82 01 04 */	beq lbl_804E337C
/* 804E327C  40 80 00 1C */	bge lbl_804E3298
/* 804E3280  2C 03 00 02 */	cmpwi r3, 2
/* 804E3284  41 82 00 8C */	beq lbl_804E3310
/* 804E3288  40 80 02 D8 */	bge lbl_804E3560
/* 804E328C  2C 03 00 01 */	cmpwi r3, 1
/* 804E3290  40 80 00 14 */	bge lbl_804E32A4
/* 804E3294  48 00 02 CC */	b lbl_804E3560
lbl_804E3298:
/* 804E3298  2C 03 00 06 */	cmpwi r3, 6
/* 804E329C  41 82 01 D4 */	beq lbl_804E3470
/* 804E32A0  48 00 02 C0 */	b lbl_804E3560
lbl_804E32A4:
/* 804E32A4  3B A0 00 00 */	li r29, 0
/* 804E32A8  3B 60 00 00 */	li r27, 0
/* 804E32AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E32B0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E32B4  3B 5F 00 58 */	addi r26, r31, 0x58
lbl_804E32B8:
/* 804E32B8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804E32BC  38 80 00 00 */	li r4, 0
/* 804E32C0  90 81 00 08 */	stw r4, 8(r1)
/* 804E32C4  38 00 FF FF */	li r0, -1
/* 804E32C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E32CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E32D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E32D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E32D8  38 80 00 00 */	li r4, 0
/* 804E32DC  7C BA DA 2E */	lhzx r5, r26, r27
/* 804E32E0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E32E4  38 E0 00 00 */	li r7, 0
/* 804E32E8  39 1E 07 DC */	addi r8, r30, 0x7dc
/* 804E32EC  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804E32F0  39 40 00 FF */	li r10, 0xff
/* 804E32F4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E32F8  4B B6 97 99 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E32FC  3B BD 00 01 */	addi r29, r29, 1
/* 804E3300  28 1D 00 03 */	cmplwi r29, 3
/* 804E3304  3B 7B 00 02 */	addi r27, r27, 2
/* 804E3308  41 80 FF B0 */	blt lbl_804E32B8
/* 804E330C  48 00 02 54 */	b lbl_804E3560
lbl_804E3310:
/* 804E3310  3B A0 00 00 */	li r29, 0
/* 804E3314  3B 60 00 00 */	li r27, 0
/* 804E3318  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E331C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E3320  3B 5F 00 60 */	addi r26, r31, 0x60
lbl_804E3324:
/* 804E3324  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804E3328  38 80 00 00 */	li r4, 0
/* 804E332C  90 81 00 08 */	stw r4, 8(r1)
/* 804E3330  38 00 FF FF */	li r0, -1
/* 804E3334  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E3338  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E333C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E3340  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E3344  38 80 00 00 */	li r4, 0
/* 804E3348  7C BA DA 2E */	lhzx r5, r26, r27
/* 804E334C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E3350  38 E0 00 00 */	li r7, 0
/* 804E3354  39 1E 07 DC */	addi r8, r30, 0x7dc
/* 804E3358  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804E335C  39 40 00 FF */	li r10, 0xff
/* 804E3360  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3364  4B B6 97 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E3368  3B BD 00 01 */	addi r29, r29, 1
/* 804E336C  28 1D 00 03 */	cmplwi r29, 3
/* 804E3370  3B 7B 00 02 */	addi r27, r27, 2
/* 804E3374  41 80 FF B0 */	blt lbl_804E3324
/* 804E3378  48 00 01 E8 */	b lbl_804E3560
lbl_804E337C:
/* 804E337C  3B 80 00 00 */	li r28, 0
/* 804E3380  3B 60 00 00 */	li r27, 0
/* 804E3384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E3388  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E338C  3B 5F 00 68 */	addi r26, r31, 0x68
lbl_804E3390:
/* 804E3390  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804E3394  38 80 00 00 */	li r4, 0
/* 804E3398  90 81 00 08 */	stw r4, 8(r1)
/* 804E339C  38 00 FF FF */	li r0, -1
/* 804E33A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E33A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E33A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E33AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E33B0  38 80 00 00 */	li r4, 0
/* 804E33B4  7C BA DA 2E */	lhzx r5, r26, r27
/* 804E33B8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E33BC  38 E0 00 00 */	li r7, 0
/* 804E33C0  39 1E 07 DC */	addi r8, r30, 0x7dc
/* 804E33C4  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804E33C8  39 40 00 FF */	li r10, 0xff
/* 804E33CC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E33D0  4B B6 96 C1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E33D4  3B 9C 00 01 */	addi r28, r28, 1
/* 804E33D8  28 1C 00 02 */	cmplwi r28, 2
/* 804E33DC  3B 7B 00 02 */	addi r27, r27, 2
/* 804E33E0  41 80 FF B0 */	blt lbl_804E3390
/* 804E33E4  3B 20 00 00 */	li r25, 0
/* 804E33E8  3B 60 00 00 */	li r27, 0
/* 804E33EC  3B 80 00 00 */	li r28, 0
/* 804E33F0  3B 5F 00 6C */	addi r26, r31, 0x6c
lbl_804E33F4:
/* 804E33F4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804E33F8  38 80 00 00 */	li r4, 0
/* 804E33FC  90 81 00 08 */	stw r4, 8(r1)
/* 804E3400  38 00 FF FF */	li r0, -1
/* 804E3404  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E3408  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E340C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E3410  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E3414  38 80 00 00 */	li r4, 0
/* 804E3418  7C BA E2 2E */	lhzx r5, r26, r28
/* 804E341C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E3420  38 E0 00 00 */	li r7, 0
/* 804E3424  39 1E 07 DC */	addi r8, r30, 0x7dc
/* 804E3428  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804E342C  39 40 00 FF */	li r10, 0xff
/* 804E3430  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3434  4B B6 96 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E3438  38 1B 07 E4 */	addi r0, r27, 0x7e4
/* 804E343C  7C 7E 01 2E */	stwx r3, r30, r0
/* 804E3440  7C 7E 00 2E */	lwzx r3, r30, r0
/* 804E3444  28 03 00 00 */	cmplwi r3, 0
/* 804E3448  41 82 00 10 */	beq lbl_804E3458
/* 804E344C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804E3450  60 00 00 40 */	ori r0, r0, 0x40
/* 804E3454  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_804E3458:
/* 804E3458  3B 39 00 01 */	addi r25, r25, 1
/* 804E345C  28 19 00 02 */	cmplwi r25, 2
/* 804E3460  3B 7B 00 04 */	addi r27, r27, 4
/* 804E3464  3B 9C 00 02 */	addi r28, r28, 2
/* 804E3468  41 80 FF 8C */	blt lbl_804E33F4
/* 804E346C  48 00 00 F4 */	b lbl_804E3560
lbl_804E3470:
/* 804E3470  3B 80 00 00 */	li r28, 0
/* 804E3474  3B 60 00 00 */	li r27, 0
/* 804E3478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E347C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E3480  3B 5F 00 70 */	addi r26, r31, 0x70
lbl_804E3484:
/* 804E3484  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804E3488  38 80 00 00 */	li r4, 0
/* 804E348C  90 81 00 08 */	stw r4, 8(r1)
/* 804E3490  38 00 FF FF */	li r0, -1
/* 804E3494  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E3498  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E349C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E34A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E34A4  38 80 00 00 */	li r4, 0
/* 804E34A8  7C BA DA 2E */	lhzx r5, r26, r27
/* 804E34AC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E34B0  38 E0 00 00 */	li r7, 0
/* 804E34B4  39 1E 07 DC */	addi r8, r30, 0x7dc
/* 804E34B8  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804E34BC  39 40 00 FF */	li r10, 0xff
/* 804E34C0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E34C4  4B B6 95 CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E34C8  3B 9C 00 01 */	addi r28, r28, 1
/* 804E34CC  28 1C 00 02 */	cmplwi r28, 2
/* 804E34D0  3B 7B 00 02 */	addi r27, r27, 2
/* 804E34D4  41 80 FF B0 */	blt lbl_804E3484
/* 804E34D8  3B 20 00 00 */	li r25, 0
/* 804E34DC  3B 80 00 00 */	li r28, 0
/* 804E34E0  3B 60 00 00 */	li r27, 0
/* 804E34E4  3B 5F 00 74 */	addi r26, r31, 0x74
lbl_804E34E8:
/* 804E34E8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804E34EC  38 80 00 00 */	li r4, 0
/* 804E34F0  90 81 00 08 */	stw r4, 8(r1)
/* 804E34F4  38 00 FF FF */	li r0, -1
/* 804E34F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E34FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E3500  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E3504  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E3508  38 80 00 00 */	li r4, 0
/* 804E350C  7C BA DA 2E */	lhzx r5, r26, r27
/* 804E3510  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 804E3514  38 E0 00 00 */	li r7, 0
/* 804E3518  39 1E 07 DC */	addi r8, r30, 0x7dc
/* 804E351C  39 3E 04 EC */	addi r9, r30, 0x4ec
/* 804E3520  39 40 00 FF */	li r10, 0xff
/* 804E3524  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804E3528  4B B6 95 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E352C  38 1C 07 E4 */	addi r0, r28, 0x7e4
/* 804E3530  7C 7E 01 2E */	stwx r3, r30, r0
/* 804E3534  7C 7E 00 2E */	lwzx r3, r30, r0
/* 804E3538  28 03 00 00 */	cmplwi r3, 0
/* 804E353C  41 82 00 10 */	beq lbl_804E354C
/* 804E3540  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804E3544  60 00 00 40 */	ori r0, r0, 0x40
/* 804E3548  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_804E354C:
/* 804E354C  3B 39 00 01 */	addi r25, r25, 1
/* 804E3550  28 19 00 02 */	cmplwi r25, 2
/* 804E3554  3B 9C 00 04 */	addi r28, r28, 4
/* 804E3558  3B 7B 00 02 */	addi r27, r27, 2
/* 804E355C  41 80 FF 8C */	blt lbl_804E34E8
lbl_804E3560:
/* 804E3560  38 60 00 01 */	li r3, 1
/* 804E3564  39 61 00 40 */	addi r11, r1, 0x40
/* 804E3568  4B E7 EC B1 */	bl _restgpr_25
/* 804E356C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E3570  7C 08 03 A6 */	mtlr r0
/* 804E3574  38 21 00 40 */	addi r1, r1, 0x40
/* 804E3578  4E 80 00 20 */	blr 
