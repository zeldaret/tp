lbl_8010519C:
/* 8010519C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801051A0  7C 08 02 A6 */	mflr r0
/* 801051A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 801051A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801051AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 801051B0  39 61 00 60 */	addi r11, r1, 0x60
/* 801051B4  48 25 D0 21 */	bl _savegpr_27
/* 801051B8  7C 7D 1B 78 */	mr r29, r3
/* 801051BC  7C 9B 23 78 */	mr r27, r4
/* 801051C0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 801051C4  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 801051C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801051CC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801051D0  7D 89 03 A6 */	mtctr r12
/* 801051D4  4E 80 04 21 */	bctrl 
/* 801051D8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801051DC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801051E0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 801051E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801051E8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801051EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801051F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801051F4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 801051F8  38 80 00 02 */	li r4, 2
/* 801051FC  38 A0 00 1F */	li r5, 0x1f
/* 80105200  38 C1 00 18 */	addi r6, r1, 0x18
/* 80105204  4B F6 A8 21 */	bl StartShock__12dVibration_cFii4cXyz
/* 80105208  3B C0 00 01 */	li r30, 1
/* 8010520C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80105210  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80105214  40 82 00 54 */	bne lbl_80105268
/* 80105218  3B E0 00 00 */	li r31, 0
/* 8010521C  7F FC FB 78 */	mr r28, r31
/* 80105220  28 1B 00 00 */	cmplwi r27, 0
/* 80105224  41 82 00 18 */	beq lbl_8010523C
/* 80105228  38 7B 00 9C */	addi r3, r27, 0x9c
/* 8010522C  4B F7 E4 5D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80105230  28 03 00 00 */	cmplwi r3, 0
/* 80105234  41 82 00 08 */	beq lbl_8010523C
/* 80105238  3B 80 00 01 */	li r28, 1
lbl_8010523C:
/* 8010523C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80105240  41 82 00 1C */	beq lbl_8010525C
/* 80105244  38 7B 00 9C */	addi r3, r27, 0x9c
/* 80105248  4B F7 E4 41 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8010524C  A8 03 00 08 */	lha r0, 8(r3)
/* 80105250  2C 00 01 B6 */	cmpwi r0, 0x1b6
/* 80105254  40 82 00 08 */	bne lbl_8010525C
/* 80105258  3B E0 00 01 */	li r31, 1
lbl_8010525C:
/* 8010525C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80105260  40 82 00 08 */	bne lbl_80105268
/* 80105264  3B C0 00 00 */	li r30, 0
lbl_80105268:
/* 80105268  57 DF 06 3E */	clrlwi r31, r30, 0x18
/* 8010526C  7F A3 EB 78 */	mr r3, r29
/* 80105270  4B FF C7 49 */	bl getZoraSwim__9daAlink_cCFv
/* 80105274  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105278  40 82 00 20 */	bne lbl_80105298
/* 8010527C  2C 1F 00 00 */	cmpwi r31, 0
/* 80105280  41 82 00 18 */	beq lbl_80105298
/* 80105284  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 80105288  28 00 00 7A */	cmplwi r0, 0x7a
/* 8010528C  41 82 00 0C */	beq lbl_80105298
/* 80105290  38 60 00 01 */	li r3, 1
/* 80105294  48 00 04 74 */	b lbl_80105708
lbl_80105298:
/* 80105298  28 1B 00 00 */	cmplwi r27, 0
/* 8010529C  41 82 00 18 */	beq lbl_801052B4
/* 801052A0  7F A3 EB 78 */	mr r3, r29
/* 801052A4  7F 64 DB 78 */	mr r4, r27
/* 801052A8  4B FD 22 4D */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 801052AC  7C 7E 1B 78 */	mr r30, r3
/* 801052B0  48 00 00 3C */	b lbl_801052EC
lbl_801052B4:
/* 801052B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801052B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801052BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 801052C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801052C4  7C 64 02 14 */	add r3, r4, r0
/* 801052C8  C0 23 00 04 */	lfs f1, 4(r3)
/* 801052CC  7C 04 04 2E */	lfsx f0, r4, r0
/* 801052D0  FC 00 00 50 */	fneg f0, f0
/* 801052D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801052D8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801052DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801052E0  FC 00 08 50 */	fneg f0, f1
/* 801052E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801052E8  3B C1 00 30 */	addi r30, r1, 0x30
lbl_801052EC:
/* 801052EC  7F C3 F3 78 */	mr r3, r30
/* 801052F0  48 24 1E 49 */	bl PSVECSquareMag
/* 801052F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801052F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801052FC  40 81 00 58 */	ble lbl_80105354
/* 80105300  FC 00 08 34 */	frsqrte f0, f1
/* 80105304  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80105308  FC 44 00 32 */	fmul f2, f4, f0
/* 8010530C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80105310  FC 00 00 32 */	fmul f0, f0, f0
/* 80105314  FC 01 00 32 */	fmul f0, f1, f0
/* 80105318  FC 03 00 28 */	fsub f0, f3, f0
/* 8010531C  FC 02 00 32 */	fmul f0, f2, f0
/* 80105320  FC 44 00 32 */	fmul f2, f4, f0
/* 80105324  FC 00 00 32 */	fmul f0, f0, f0
/* 80105328  FC 01 00 32 */	fmul f0, f1, f0
/* 8010532C  FC 03 00 28 */	fsub f0, f3, f0
/* 80105330  FC 02 00 32 */	fmul f0, f2, f0
/* 80105334  FC 44 00 32 */	fmul f2, f4, f0
/* 80105338  FC 00 00 32 */	fmul f0, f0, f0
/* 8010533C  FC 01 00 32 */	fmul f0, f1, f0
/* 80105340  FC 03 00 28 */	fsub f0, f3, f0
/* 80105344  FC 02 00 32 */	fmul f0, f2, f0
/* 80105348  FC 21 00 32 */	fmul f1, f1, f0
/* 8010534C  FC 20 08 18 */	frsp f1, f1
/* 80105350  48 00 00 88 */	b lbl_801053D8
lbl_80105354:
/* 80105354  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80105358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010535C  40 80 00 10 */	bge lbl_8010536C
/* 80105360  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80105364  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80105368  48 00 00 70 */	b lbl_801053D8
lbl_8010536C:
/* 8010536C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80105370  80 81 00 08 */	lwz r4, 8(r1)
/* 80105374  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80105378  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010537C  7C 03 00 00 */	cmpw r3, r0
/* 80105380  41 82 00 14 */	beq lbl_80105394
/* 80105384  40 80 00 40 */	bge lbl_801053C4
/* 80105388  2C 03 00 00 */	cmpwi r3, 0
/* 8010538C  41 82 00 20 */	beq lbl_801053AC
/* 80105390  48 00 00 34 */	b lbl_801053C4
lbl_80105394:
/* 80105394  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80105398  41 82 00 0C */	beq lbl_801053A4
/* 8010539C  38 00 00 01 */	li r0, 1
/* 801053A0  48 00 00 28 */	b lbl_801053C8
lbl_801053A4:
/* 801053A4  38 00 00 02 */	li r0, 2
/* 801053A8  48 00 00 20 */	b lbl_801053C8
lbl_801053AC:
/* 801053AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801053B0  41 82 00 0C */	beq lbl_801053BC
/* 801053B4  38 00 00 05 */	li r0, 5
/* 801053B8  48 00 00 10 */	b lbl_801053C8
lbl_801053BC:
/* 801053BC  38 00 00 03 */	li r0, 3
/* 801053C0  48 00 00 08 */	b lbl_801053C8
lbl_801053C4:
/* 801053C4  38 00 00 04 */	li r0, 4
lbl_801053C8:
/* 801053C8  2C 00 00 01 */	cmpwi r0, 1
/* 801053CC  40 82 00 0C */	bne lbl_801053D8
/* 801053D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801053D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_801053D8:
/* 801053D8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 801053DC  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 801053E0  C0 43 00 7C */	lfs f2, 0x7c(r3)
/* 801053E4  C0 03 00 80 */	lfs f0, 0x80(r3)
/* 801053E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801053EC  EF E2 00 2A */	fadds f31, f2, f0
/* 801053F0  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 801053F4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801053F8  40 81 00 08 */	ble lbl_80105400
/* 801053FC  FF E0 00 90 */	fmr f31, f0
lbl_80105400:
/* 80105400  38 61 00 0C */	addi r3, r1, 0xc
/* 80105404  7F C4 F3 78 */	mr r4, r30
/* 80105408  48 16 19 29 */	bl normZP__4cXyzCFv
/* 8010540C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80105410  D0 1D 37 50 */	stfs f0, 0x3750(r29)
/* 80105414  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80105418  D0 1D 37 54 */	stfs f0, 0x3754(r29)
/* 8010541C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80105420  D0 1D 37 58 */	stfs f0, 0x3758(r29)
/* 80105424  38 7D 37 50 */	addi r3, r29, 0x3750
/* 80105428  7C 64 1B 78 */	mr r4, r3
/* 8010542C  FC 20 F8 90 */	fmr f1, f31
/* 80105430  48 24 1C A9 */	bl PSVECScale
/* 80105434  7F A3 EB 78 */	mr r3, r29
/* 80105438  4B FF C5 81 */	bl getZoraSwim__9daAlink_cCFv
/* 8010543C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105440  41 82 00 4C */	beq lbl_8010548C
/* 80105444  7F A3 EB 78 */	mr r3, r29
/* 80105448  38 80 00 BF */	li r4, 0xbf
/* 8010544C  38 A0 00 02 */	li r5, 2
/* 80105450  3C C0 80 39 */	lis r6, m__21daAlinkHIO_damSwim_c0@ha
/* 80105454  38 C6 E4 C0 */	addi r6, r6, m__21daAlinkHIO_damSwim_c0@l
/* 80105458  38 C6 00 50 */	addi r6, r6, 0x50
/* 8010545C  4B FA 82 95 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 80105460  7F A3 EB 78 */	mr r3, r29
/* 80105464  38 80 00 EA */	li r4, 0xea
/* 80105468  38 A0 00 01 */	li r5, 1
/* 8010546C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80105470  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80105474  4B FA A0 3D */	bl setFaceBck__9daAlink_cFUsiUs
/* 80105478  7F A3 EB 78 */	mr r3, r29
/* 8010547C  38 80 00 27 */	li r4, 0x27
/* 80105480  4B FA A6 29 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80105484  38 60 00 01 */	li r3, 1
/* 80105488  48 00 02 80 */	b lbl_80105708
lbl_8010548C:
/* 8010548C  7F A3 EB 78 */	mr r3, r29
/* 80105490  38 80 00 7F */	li r4, 0x7f
/* 80105494  4B FB CA D9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80105498  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010549C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801054A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801054A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801054A8  7C 63 04 2E */	lfsx f3, r3, r0
/* 801054AC  7C 63 02 14 */	add r3, r3, r0
/* 801054B0  C0 83 00 04 */	lfs f4, 4(r3)
/* 801054B4  C0 DE 00 08 */	lfs f6, 8(r30)
/* 801054B8  EC 26 01 32 */	fmuls f1, f6, f4
/* 801054BC  C0 BE 00 00 */	lfs f5, 0(r30)
/* 801054C0  EC 05 00 F2 */	fmuls f0, f5, f3
/* 801054C4  EC 21 00 2A */	fadds f1, f1, f0
/* 801054C8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 801054CC  FC 00 18 50 */	fneg f0, f3
/* 801054D0  EC 66 00 32 */	fmuls f3, f6, f0
/* 801054D4  EC 05 01 32 */	fmuls f0, f5, f4
/* 801054D8  EC 03 00 2A */	fadds f0, f3, f0
/* 801054DC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801054E0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801054E4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801054E8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 801054EC  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 801054F0  AB 83 00 78 */	lha r28, 0x78(r3)
/* 801054F4  7C 1C 00 D0 */	neg r0, r28
/* 801054F8  7C 1E 07 34 */	extsh r30, r0
/* 801054FC  48 16 21 79 */	bl cM_atan2s__Fff
/* 80105500  7C 64 07 34 */	extsh r4, r3
/* 80105504  7C 04 F0 00 */	cmpw r4, r30
/* 80105508  40 80 00 08 */	bge lbl_80105510
/* 8010550C  48 00 00 18 */	b lbl_80105524
lbl_80105510:
/* 80105510  7F 80 07 34 */	extsh r0, r28
/* 80105514  7C 04 00 00 */	cmpw r4, r0
/* 80105518  40 81 00 08 */	ble lbl_80105520
/* 8010551C  7F 83 E3 78 */	mr r3, r28
lbl_80105520:
/* 80105520  7C 7E 1B 78 */	mr r30, r3
lbl_80105524:
/* 80105524  B3 DD 30 08 */	sth r30, 0x3008(r29)
/* 80105528  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 8010552C  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 80105530  AB 83 00 7A */	lha r28, 0x7a(r3)
/* 80105534  7C 1C 00 D0 */	neg r0, r28
/* 80105538  7C 1E 07 34 */	extsh r30, r0
/* 8010553C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80105540  EC 20 00 32 */	fmuls f1, f0, f0
/* 80105544  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80105548  EC 00 00 32 */	fmuls f0, f0, f0
/* 8010554C  EC 41 00 2A */	fadds f2, f1, f0
/* 80105550  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80105554  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80105558  40 81 00 0C */	ble lbl_80105564
/* 8010555C  FC 00 10 34 */	frsqrte f0, f2
/* 80105560  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80105564:
/* 80105564  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80105568  FC 40 10 50 */	fneg f2, f2
/* 8010556C  48 16 21 09 */	bl cM_atan2s__Fff
/* 80105570  7C 64 07 34 */	extsh r4, r3
/* 80105574  7C 04 F0 00 */	cmpw r4, r30
/* 80105578  40 80 00 08 */	bge lbl_80105580
/* 8010557C  48 00 00 18 */	b lbl_80105594
lbl_80105580:
/* 80105580  7F 80 07 34 */	extsh r0, r28
/* 80105584  7C 04 00 00 */	cmpw r4, r0
/* 80105588  40 81 00 08 */	ble lbl_80105590
/* 8010558C  7F 83 E3 78 */	mr r3, r28
lbl_80105590:
/* 80105590  7C 7E 1B 78 */	mr r30, r3
lbl_80105594:
/* 80105594  B3 DD 30 0A */	sth r30, 0x300a(r29)
/* 80105598  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8010559C  FC 20 00 50 */	fneg f1, f0
/* 801055A0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801055A4  FC 40 00 50 */	fneg f2, f0
/* 801055A8  48 16 20 CD */	bl cM_atan2s__Fff
/* 801055AC  4B FA DE E9 */	bl getDirectionFromAngle__9daAlink_cFs
/* 801055B0  2C 1F 00 00 */	cmpwi r31, 0
/* 801055B4  41 82 00 3C */	beq lbl_801055F0
/* 801055B8  7F A3 EB 78 */	mr r3, r29
/* 801055BC  38 80 00 CE */	li r4, 0xce
/* 801055C0  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damSwim_c0@ha
/* 801055C4  38 A5 E4 C0 */	addi r5, r5, m__21daAlinkHIO_damSwim_c0@l
/* 801055C8  38 A5 00 64 */	addi r5, r5, 0x64
/* 801055CC  4B FA 7B 29 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 801055D0  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 801055D4  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 801055D8  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 801055DC  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 801055E0  38 00 00 00 */	li r0, 0
/* 801055E4  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 801055E8  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 801055EC  48 00 00 C4 */	b lbl_801056B0
lbl_801055F0:
/* 801055F0  2C 03 00 00 */	cmpwi r3, 0
/* 801055F4  40 82 00 2C */	bne lbl_80105620
/* 801055F8  7F A3 EB 78 */	mr r3, r29
/* 801055FC  38 80 00 CA */	li r4, 0xca
/* 80105600  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damSwim_c0@ha
/* 80105604  38 A5 E4 C0 */	addi r5, r5, m__21daAlinkHIO_damSwim_c0@l
/* 80105608  4B FA 7A ED */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010560C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 80105610  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 80105614  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80105618  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8010561C  48 00 00 94 */	b lbl_801056B0
lbl_80105620:
/* 80105620  2C 03 00 01 */	cmpwi r3, 1
/* 80105624  40 82 00 30 */	bne lbl_80105654
/* 80105628  7F A3 EB 78 */	mr r3, r29
/* 8010562C  38 80 00 CB */	li r4, 0xcb
/* 80105630  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damSwim_c0@ha
/* 80105634  38 A5 E4 C0 */	addi r5, r5, m__21daAlinkHIO_damSwim_c0@l
/* 80105638  38 A5 00 14 */	addi r5, r5, 0x14
/* 8010563C  4B FA 7A B9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80105640  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 80105644  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 80105648  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8010564C  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 80105650  48 00 00 60 */	b lbl_801056B0
lbl_80105654:
/* 80105654  2C 03 00 02 */	cmpwi r3, 2
/* 80105658  40 82 00 30 */	bne lbl_80105688
/* 8010565C  7F A3 EB 78 */	mr r3, r29
/* 80105660  38 80 00 CC */	li r4, 0xcc
/* 80105664  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damSwim_c0@ha
/* 80105668  38 A5 E4 C0 */	addi r5, r5, m__21daAlinkHIO_damSwim_c0@l
/* 8010566C  38 A5 00 28 */	addi r5, r5, 0x28
/* 80105670  4B FA 7A 85 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80105674  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 80105678  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 8010567C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80105680  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 80105684  48 00 00 2C */	b lbl_801056B0
lbl_80105688:
/* 80105688  7F A3 EB 78 */	mr r3, r29
/* 8010568C  38 80 00 CD */	li r4, 0xcd
/* 80105690  3C A0 80 39 */	lis r5, m__21daAlinkHIO_damSwim_c0@ha
/* 80105694  38 A5 E4 C0 */	addi r5, r5, m__21daAlinkHIO_damSwim_c0@l
/* 80105698  38 A5 00 3C */	addi r5, r5, 0x3c
/* 8010569C  4B FA 7A 59 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 801056A0  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damSwim_c0@ha
/* 801056A4  38 63 E4 C0 */	addi r3, r3, m__21daAlinkHIO_damSwim_c0@l
/* 801056A8  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 801056AC  D0 1D 34 78 */	stfs f0, 0x3478(r29)
lbl_801056B0:
/* 801056B0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801056B4  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 801056B8  C0 42 93 AC */	lfs f2, lit_9828(r2)
/* 801056BC  A8 7D 1F D6 */	lha r3, 0x1fd6(r29)
/* 801056C0  A8 1D 1F D8 */	lha r0, 0x1fd8(r29)
/* 801056C4  7C 03 00 50 */	subf r0, r3, r0
/* 801056C8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 801056CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801056D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801056D4  3C 00 43 30 */	lis r0, 0x4330
/* 801056D8  90 01 00 40 */	stw r0, 0x40(r1)
/* 801056DC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801056E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801056E4  EC 02 00 24 */	fdivs f0, f2, f0
/* 801056E8  D0 1D 34 7C */	stfs f0, 0x347c(r29)
/* 801056EC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 801056F0  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 801056F4  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801056F8  D0 1D 34 80 */	stfs f0, 0x3480(r29)
/* 801056FC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80105700  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80105704  38 60 00 01 */	li r3, 1
lbl_80105708:
/* 80105708  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8010570C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80105710  39 61 00 60 */	addi r11, r1, 0x60
/* 80105714  48 25 CB 0D */	bl _restgpr_27
/* 80105718  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8010571C  7C 08 03 A6 */	mtlr r0
/* 80105720  38 21 00 70 */	addi r1, r1, 0x70
/* 80105724  4E 80 00 20 */	blr 
