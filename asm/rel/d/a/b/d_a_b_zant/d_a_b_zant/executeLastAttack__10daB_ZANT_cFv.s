lbl_806494A8:
/* 806494A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806494AC  7C 08 02 A6 */	mflr r0
/* 806494B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 806494B4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806494B8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806494BC  39 61 00 70 */	addi r11, r1, 0x70
/* 806494C0  4B D1 8D 0C */	b _savegpr_25
/* 806494C4  7C 7A 1B 78 */	mr r26, r3
/* 806494C8  3C 80 80 65 */	lis r4, lit_3757@ha
/* 806494CC  3B C4 EB 1C */	addi r30, r4, lit_3757@l
/* 806494D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806494D4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 806494D8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806494DC  4B 9D 12 34 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806494E0  7C 7D 1B 78 */	mr r29, r3
/* 806494E4  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 806494E8  28 00 00 1F */	cmplwi r0, 0x1f
/* 806494EC  41 81 10 80 */	bgt lbl_8064A56C
/* 806494F0  3C 60 80 65 */	lis r3, lit_9169@ha
/* 806494F4  38 63 F2 78 */	addi r3, r3, lit_9169@l
/* 806494F8  54 00 10 3A */	slwi r0, r0, 2
/* 806494FC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80649500  7C 09 03 A6 */	mtctr r0
/* 80649504  4E 80 04 20 */	bctr 
lbl_80649508:
/* 80649508  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 8064950C  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 80649510  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 80649514  28 00 00 00 */	cmplwi r0, 0
/* 80649518  40 82 00 30 */	bne lbl_80649548
/* 8064951C  38 00 00 01 */	li r0, 1
/* 80649520  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649524  7F 43 D3 78 */	mr r3, r26
/* 80649528  38 80 00 3B */	li r4, 0x3b
/* 8064952C  38 A0 00 02 */	li r5, 2
/* 80649530  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80649534  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80649538  4B FF 50 8D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064953C  38 00 00 3C */	li r0, 0x3c
/* 80649540  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80649544  48 00 10 28 */	b lbl_8064A56C
lbl_80649548:
/* 80649548  38 00 00 05 */	li r0, 5
/* 8064954C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649550  48 00 10 1C */	b lbl_8064A56C
lbl_80649554:
/* 80649554  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649558  38 63 00 0C */	addi r3, r3, 0xc
/* 8064955C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80649560  4B CD EE CC */	b checkPass__12J3DFrameCtrlFf
/* 80649564  2C 03 00 00 */	cmpwi r3, 0
/* 80649568  40 82 00 1C */	bne lbl_80649584
/* 8064956C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649570  38 63 00 0C */	addi r3, r3, 0xc
/* 80649574  C0 3E 02 04 */	lfs f1, 0x204(r30)
/* 80649578  4B CD EE B4 */	b checkPass__12J3DFrameCtrlFf
/* 8064957C  2C 03 00 00 */	cmpwi r3, 0
/* 80649580  41 82 00 30 */	beq lbl_806495B0
lbl_80649584:
/* 80649584  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007043B@ha */
/* 80649588  38 03 04 3B */	addi r0, r3, 0x043B /* 0x0007043B@l */
/* 8064958C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80649590  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649594  38 81 00 3C */	addi r4, r1, 0x3c
/* 80649598  38 A0 00 00 */	li r5, 0
/* 8064959C  38 C0 FF FF */	li r6, -1
/* 806495A0  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 806495A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806495A8  7D 89 03 A6 */	mtctr r12
/* 806495AC  4E 80 04 21 */	bctrl 
lbl_806495B0:
/* 806495B0  7F 43 D3 78 */	mr r3, r26
/* 806495B4  38 80 00 00 */	li r4, 0
/* 806495B8  4B FF 64 FD */	bl checkAvoidWeapon__10daB_ZANT_cFi
/* 806495BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806495C0  41 82 00 70 */	beq lbl_80649630
/* 806495C4  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 806495C8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806495CC  90 1A 36 24 */	stw r0, 0x3624(r26)
/* 806495D0  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 806495D4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806495D8  90 1A 37 5C */	stw r0, 0x375c(r26)
/* 806495DC  7F 43 D3 78 */	mr r3, r26
/* 806495E0  38 80 00 00 */	li r4, 0
/* 806495E4  4B FF 69 89 */	bl setTgHitBit__10daB_ZANT_cFi
/* 806495E8  88 7A 07 1C */	lbz r3, 0x71c(r26)
/* 806495EC  38 03 00 01 */	addi r0, r3, 1
/* 806495F0  98 1A 07 1C */	stb r0, 0x71c(r26)
/* 806495F4  88 1A 07 1C */	lbz r0, 0x71c(r26)
/* 806495F8  28 00 00 05 */	cmplwi r0, 5
/* 806495FC  40 80 00 18 */	bge lbl_80649614
/* 80649600  7F 43 D3 78 */	mr r3, r26
/* 80649604  38 80 00 02 */	li r4, 2
/* 80649608  38 A0 00 00 */	li r5, 0
/* 8064960C  4B FF F1 6D */	bl setLastWarp__10daB_ZANT_cFii
/* 80649610  48 00 0F 5C */	b lbl_8064A56C
lbl_80649614:
/* 80649614  38 00 00 07 */	li r0, 7
/* 80649618  98 1A 07 03 */	stb r0, 0x703(r26)
/* 8064961C  7F 43 D3 78 */	mr r3, r26
/* 80649620  38 80 00 01 */	li r4, 1
/* 80649624  38 A0 00 00 */	li r5, 0
/* 80649628  4B FF F1 51 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064962C  48 00 0F 40 */	b lbl_8064A56C
lbl_80649630:
/* 80649630  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 80649634  7F A4 EB 78 */	mr r4, r29
/* 80649638  38 A0 00 10 */	li r5, 0x10
/* 8064963C  38 C0 04 00 */	li r6, 0x400
/* 80649640  4B C2 6F C8 */	b cLib_addCalcAngleS2__FPssss
/* 80649644  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80649648  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8064964C  7F 43 D3 78 */	mr r3, r26
/* 80649650  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80649654  4B 9D 11 8C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80649658  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8064965C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80649660  41 80 00 10 */	blt lbl_80649670
/* 80649664  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80649668  2C 00 00 00 */	cmpwi r0, 0
/* 8064966C  40 82 0F 00 */	bne lbl_8064A56C
lbl_80649670:
/* 80649670  38 00 00 02 */	li r0, 2
/* 80649674  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649678  7F 43 D3 78 */	mr r3, r26
/* 8064967C  38 80 00 3C */	li r4, 0x3c
/* 80649680  38 A0 00 02 */	li r5, 2
/* 80649684  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80649688  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064968C  4B FF 4F 39 */	bl setBck__10daB_ZANT_cFiUcff
/* 80649690  48 00 0E DC */	b lbl_8064A56C
lbl_80649694:
/* 80649694  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649698  38 63 00 0C */	addi r3, r3, 0xc
/* 8064969C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 806496A0  4B CD ED 8C */	b checkPass__12J3DFrameCtrlFf
/* 806496A4  2C 03 00 00 */	cmpwi r3, 0
/* 806496A8  40 82 00 1C */	bne lbl_806496C4
/* 806496AC  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806496B0  38 63 00 0C */	addi r3, r3, 0xc
/* 806496B4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 806496B8  4B CD ED 74 */	b checkPass__12J3DFrameCtrlFf
/* 806496BC  2C 03 00 00 */	cmpwi r3, 0
/* 806496C0  41 82 00 30 */	beq lbl_806496F0
lbl_806496C4:
/* 806496C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007043C@ha */
/* 806496C8  38 03 04 3C */	addi r0, r3, 0x043C /* 0x0007043C@l */
/* 806496CC  90 01 00 38 */	stw r0, 0x38(r1)
/* 806496D0  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 806496D4  38 81 00 38 */	addi r4, r1, 0x38
/* 806496D8  38 A0 00 00 */	li r5, 0
/* 806496DC  38 C0 FF FF */	li r6, -1
/* 806496E0  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 806496E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806496E8  7D 89 03 A6 */	mtctr r12
/* 806496EC  4E 80 04 21 */	bctrl 
lbl_806496F0:
/* 806496F0  7F 43 D3 78 */	mr r3, r26
/* 806496F4  38 80 00 00 */	li r4, 0
/* 806496F8  4B FF 63 BD */	bl checkAvoidWeapon__10daB_ZANT_cFi
/* 806496FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80649700  41 82 00 70 */	beq lbl_80649770
/* 80649704  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 80649708  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064970C  90 1A 36 24 */	stw r0, 0x3624(r26)
/* 80649710  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 80649714  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649718  90 1A 37 5C */	stw r0, 0x375c(r26)
/* 8064971C  7F 43 D3 78 */	mr r3, r26
/* 80649720  38 80 00 00 */	li r4, 0
/* 80649724  4B FF 68 49 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80649728  88 7A 07 1C */	lbz r3, 0x71c(r26)
/* 8064972C  38 03 00 01 */	addi r0, r3, 1
/* 80649730  98 1A 07 1C */	stb r0, 0x71c(r26)
/* 80649734  88 1A 07 1C */	lbz r0, 0x71c(r26)
/* 80649738  28 00 00 05 */	cmplwi r0, 5
/* 8064973C  40 80 00 18 */	bge lbl_80649754
/* 80649740  7F 43 D3 78 */	mr r3, r26
/* 80649744  38 80 00 02 */	li r4, 2
/* 80649748  38 A0 00 00 */	li r5, 0
/* 8064974C  4B FF F0 2D */	bl setLastWarp__10daB_ZANT_cFii
/* 80649750  48 00 0E 1C */	b lbl_8064A56C
lbl_80649754:
/* 80649754  38 00 00 07 */	li r0, 7
/* 80649758  98 1A 07 03 */	stb r0, 0x703(r26)
/* 8064975C  7F 43 D3 78 */	mr r3, r26
/* 80649760  38 80 00 01 */	li r4, 1
/* 80649764  38 A0 00 00 */	li r5, 0
/* 80649768  4B FF F0 11 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064976C  48 00 0E 00 */	b lbl_8064A56C
lbl_80649770:
/* 80649770  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 80649774  7F A4 EB 78 */	mr r4, r29
/* 80649778  38 A0 00 10 */	li r5, 0x10
/* 8064977C  38 C0 04 00 */	li r6, 0x400
/* 80649780  4B C2 6E 88 */	b cLib_addCalcAngleS2__FPssss
/* 80649784  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80649788  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8064978C  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80649790  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80649794  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80649798  4B C2 6F A8 */	b cLib_chaseF__FPfff
/* 8064979C  7F 43 D3 78 */	mr r3, r26
/* 806497A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806497A4  4B 9D 10 3C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806497A8  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 806497AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806497B0  40 80 0D BC */	bge lbl_8064A56C
/* 806497B4  38 00 00 05 */	li r0, 5
/* 806497B8  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 806497BC  48 00 0D B0 */	b lbl_8064A56C
lbl_806497C0:
/* 806497C0  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 806497C4  28 00 00 00 */	cmplwi r0, 0
/* 806497C8  40 82 00 30 */	bne lbl_806497F8
/* 806497CC  7F 43 D3 78 */	mr r3, r26
/* 806497D0  38 80 00 36 */	li r4, 0x36
/* 806497D4  38 A0 00 02 */	li r5, 2
/* 806497D8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806497DC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 806497E0  4B FF 4D E5 */	bl setBck__10daB_ZANT_cFiUcff
/* 806497E4  38 00 00 C8 */	li r0, 0xc8
/* 806497E8  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 806497EC  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 806497F0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 806497F4  48 00 00 74 */	b lbl_80649868
lbl_806497F8:
/* 806497F8  7F 43 D3 78 */	mr r3, r26
/* 806497FC  38 80 00 37 */	li r4, 0x37
/* 80649800  38 A0 00 02 */	li r5, 2
/* 80649804  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80649808  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064980C  4B FF 4D B9 */	bl setBck__10daB_ZANT_cFiUcff
/* 80649810  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 80649814  28 00 00 02 */	cmplwi r0, 2
/* 80649818  41 82 00 28 */	beq lbl_80649840
/* 8064981C  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80649820  4B C1 E1 34 */	b cM_rndF__Ff
/* 80649824  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80649828  EC 00 08 2A */	fadds f0, f0, f1
/* 8064982C  FC 00 00 1E */	fctiwz f0, f0
/* 80649830  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80649834  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80649838  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 8064983C  48 00 00 24 */	b lbl_80649860
lbl_80649840:
/* 80649840  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80649844  4B C1 E1 10 */	b cM_rndF__Ff
/* 80649848  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8064984C  EC 00 08 2A */	fadds f0, f0, f1
/* 80649850  FC 00 00 1E */	fctiwz f0, f0
/* 80649854  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80649858  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8064985C  90 1A 06 E8 */	stw r0, 0x6e8(r26)
lbl_80649860:
/* 80649860  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80649864  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_80649868:
/* 80649868  38 00 00 06 */	li r0, 6
/* 8064986C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649870  38 00 00 00 */	li r0, 0
/* 80649874  B0 1A 06 F8 */	sth r0, 0x6f8(r26)
/* 80649878  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 8064987C  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80649880  7F 43 D3 78 */	mr r3, r26
/* 80649884  38 80 00 02 */	li r4, 2
/* 80649888  4B FF 68 35 */	bl setTgType__10daB_ZANT_cFUl
/* 8064988C  7F 43 D3 78 */	mr r3, r26
/* 80649890  38 80 00 01 */	li r4, 1
/* 80649894  4B FF 66 D9 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80649898  7F 43 D3 78 */	mr r3, r26
/* 8064989C  38 80 00 00 */	li r4, 0
/* 806498A0  4B FF 67 4D */	bl setTgShield__10daB_ZANT_cFi
/* 806498A4  38 00 00 00 */	li r0, 0
/* 806498A8  98 1A 07 02 */	stb r0, 0x702(r26)
lbl_806498AC:
/* 806498AC  7F 43 D3 78 */	mr r3, r26
/* 806498B0  38 80 00 00 */	li r4, 0
/* 806498B4  4B FF 62 01 */	bl checkAvoidWeapon__10daB_ZANT_cFi
/* 806498B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806498BC  41 82 00 70 */	beq lbl_8064992C
/* 806498C0  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 806498C4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806498C8  90 1A 36 24 */	stw r0, 0x3624(r26)
/* 806498CC  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 806498D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806498D4  90 1A 37 5C */	stw r0, 0x375c(r26)
/* 806498D8  7F 43 D3 78 */	mr r3, r26
/* 806498DC  38 80 00 00 */	li r4, 0
/* 806498E0  4B FF 66 8D */	bl setTgHitBit__10daB_ZANT_cFi
/* 806498E4  88 7A 07 1C */	lbz r3, 0x71c(r26)
/* 806498E8  38 03 00 01 */	addi r0, r3, 1
/* 806498EC  98 1A 07 1C */	stb r0, 0x71c(r26)
/* 806498F0  88 1A 07 1C */	lbz r0, 0x71c(r26)
/* 806498F4  28 00 00 0A */	cmplwi r0, 0xa
/* 806498F8  40 80 00 18 */	bge lbl_80649910
/* 806498FC  7F 43 D3 78 */	mr r3, r26
/* 80649900  38 80 00 02 */	li r4, 2
/* 80649904  38 A0 00 00 */	li r5, 0
/* 80649908  4B FF EE 71 */	bl setLastWarp__10daB_ZANT_cFii
/* 8064990C  48 00 0C 60 */	b lbl_8064A56C
lbl_80649910:
/* 80649910  38 00 00 07 */	li r0, 7
/* 80649914  98 1A 07 03 */	stb r0, 0x703(r26)
/* 80649918  7F 43 D3 78 */	mr r3, r26
/* 8064991C  38 80 00 01 */	li r4, 1
/* 80649920  38 A0 00 00 */	li r5, 0
/* 80649924  4B FF EE 55 */	bl setLastWarp__10daB_ZANT_cFii
/* 80649928  48 00 0C 44 */	b lbl_8064A56C
lbl_8064992C:
/* 8064992C  38 7A 06 D0 */	addi r3, r26, 0x6d0
/* 80649930  3C 80 80 65 */	lis r4, l_HIO@ha
/* 80649934  38 84 F6 04 */	addi r4, r4, l_HIO@l
/* 80649938  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8064993C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80649940  4B C2 6E 00 */	b cLib_chaseF__FPfff
/* 80649944  38 7A 04 DE */	addi r3, r26, 0x4de
/* 80649948  7F A4 EB 78 */	mr r4, r29
/* 8064994C  38 A0 00 08 */	li r5, 8
/* 80649950  38 C0 04 00 */	li r6, 0x400
/* 80649954  4B C2 6C B4 */	b cLib_addCalcAngleS2__FPssss
/* 80649958  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 8064995C  7F A4 EB 78 */	mr r4, r29
/* 80649960  38 A0 00 08 */	li r5, 8
/* 80649964  38 C0 04 00 */	li r6, 0x400
/* 80649968  4B C2 6C A0 */	b cLib_addCalcAngleS2__FPssss
/* 8064996C  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 80649970  28 00 00 00 */	cmplwi r0, 0
/* 80649974  40 82 01 DC */	bne lbl_80649B50
/* 80649978  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 8064997C  38 63 00 0C */	addi r3, r3, 0xc
/* 80649980  C0 3E 01 E4 */	lfs f1, 0x1e4(r30)
/* 80649984  4B CD EA A8 */	b checkPass__12J3DFrameCtrlFf
/* 80649988  2C 03 00 00 */	cmpwi r3, 0
/* 8064998C  40 82 00 1C */	bne lbl_806499A8
/* 80649990  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649994  38 63 00 0C */	addi r3, r3, 0xc
/* 80649998  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 8064999C  4B CD EA 90 */	b checkPass__12J3DFrameCtrlFf
/* 806499A0  2C 03 00 00 */	cmpwi r3, 0
/* 806499A4  41 82 00 34 */	beq lbl_806499D8
lbl_806499A8:
/* 806499A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007043D@ha */
/* 806499AC  38 03 04 3D */	addi r0, r3, 0x043D /* 0x0007043D@l */
/* 806499B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806499B4  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 806499B8  38 81 00 34 */	addi r4, r1, 0x34
/* 806499BC  38 A0 00 00 */	li r5, 0
/* 806499C0  38 C0 FF FF */	li r6, -1
/* 806499C4  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 806499C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806499CC  7D 89 03 A6 */	mtctr r12
/* 806499D0  4E 80 04 21 */	bctrl 
/* 806499D4  48 00 00 E8 */	b lbl_80649ABC
lbl_806499D8:
/* 806499D8  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806499DC  38 63 00 0C */	addi r3, r3, 0xc
/* 806499E0  C0 3E 01 D8 */	lfs f1, 0x1d8(r30)
/* 806499E4  4B CD EA 48 */	b checkPass__12J3DFrameCtrlFf
/* 806499E8  2C 03 00 00 */	cmpwi r3, 0
/* 806499EC  40 82 00 1C */	bne lbl_80649A08
/* 806499F0  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806499F4  38 63 00 0C */	addi r3, r3, 0xc
/* 806499F8  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 806499FC  4B CD EA 30 */	b checkPass__12J3DFrameCtrlFf
/* 80649A00  2C 03 00 00 */	cmpwi r3, 0
/* 80649A04  41 82 00 34 */	beq lbl_80649A38
lbl_80649A08:
/* 80649A08  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007043E@ha */
/* 80649A0C  38 03 04 3E */	addi r0, r3, 0x043E /* 0x0007043E@l */
/* 80649A10  90 01 00 30 */	stw r0, 0x30(r1)
/* 80649A14  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649A18  38 81 00 30 */	addi r4, r1, 0x30
/* 80649A1C  38 A0 00 00 */	li r5, 0
/* 80649A20  38 C0 FF FF */	li r6, -1
/* 80649A24  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649A28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80649A2C  7D 89 03 A6 */	mtctr r12
/* 80649A30  4E 80 04 21 */	bctrl 
/* 80649A34  48 00 00 88 */	b lbl_80649ABC
lbl_80649A38:
/* 80649A38  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649A3C  38 63 00 0C */	addi r3, r3, 0xc
/* 80649A40  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80649A44  4B CD E9 E8 */	b checkPass__12J3DFrameCtrlFf
/* 80649A48  2C 03 00 00 */	cmpwi r3, 0
/* 80649A4C  41 82 00 30 */	beq lbl_80649A7C
/* 80649A50  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007043F@ha */
/* 80649A54  38 03 04 3F */	addi r0, r3, 0x043F /* 0x0007043F@l */
/* 80649A58  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80649A5C  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649A60  38 81 00 2C */	addi r4, r1, 0x2c
/* 80649A64  38 A0 FF FF */	li r5, -1
/* 80649A68  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649A6C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80649A70  7D 89 03 A6 */	mtctr r12
/* 80649A74  4E 80 04 21 */	bctrl 
/* 80649A78  48 00 00 44 */	b lbl_80649ABC
lbl_80649A7C:
/* 80649A7C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649A80  38 63 00 0C */	addi r3, r3, 0xc
/* 80649A84  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80649A88  4B CD E9 A4 */	b checkPass__12J3DFrameCtrlFf
/* 80649A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80649A90  41 82 00 2C */	beq lbl_80649ABC
/* 80649A94  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070440@ha */
/* 80649A98  38 03 04 40 */	addi r0, r3, 0x0440 /* 0x00070440@l */
/* 80649A9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80649AA0  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649AA4  38 81 00 28 */	addi r4, r1, 0x28
/* 80649AA8  38 A0 FF FF */	li r5, -1
/* 80649AAC  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649AB0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80649AB4  7D 89 03 A6 */	mtctr r12
/* 80649AB8  4E 80 04 21 */	bctrl 
lbl_80649ABC:
/* 80649ABC  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649AC0  38 63 00 0C */	addi r3, r3, 0xc
/* 80649AC4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80649AC8  4B CD E9 64 */	b checkPass__12J3DFrameCtrlFf
/* 80649ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80649AD0  41 82 00 10 */	beq lbl_80649AE0
/* 80649AD4  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 80649AD8  60 00 00 01 */	ori r0, r0, 1
/* 80649ADC  90 1A 37 5C */	stw r0, 0x375c(r26)
lbl_80649AE0:
/* 80649AE0  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649AE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80649AE8  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 80649AEC  4B CD E9 40 */	b checkPass__12J3DFrameCtrlFf
/* 80649AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80649AF4  41 82 00 10 */	beq lbl_80649B04
/* 80649AF8  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 80649AFC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649B00  90 1A 37 5C */	stw r0, 0x375c(r26)
lbl_80649B04:
/* 80649B04  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649B08  38 63 00 0C */	addi r3, r3, 0xc
/* 80649B0C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80649B10  4B CD E9 1C */	b checkPass__12J3DFrameCtrlFf
/* 80649B14  2C 03 00 00 */	cmpwi r3, 0
/* 80649B18  41 82 00 10 */	beq lbl_80649B28
/* 80649B1C  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 80649B20  60 00 00 01 */	ori r0, r0, 1
/* 80649B24  90 1A 36 24 */	stw r0, 0x3624(r26)
lbl_80649B28:
/* 80649B28  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649B2C  38 63 00 0C */	addi r3, r3, 0xc
/* 80649B30  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 80649B34  4B CD E8 F8 */	b checkPass__12J3DFrameCtrlFf
/* 80649B38  2C 03 00 00 */	cmpwi r3, 0
/* 80649B3C  41 82 02 40 */	beq lbl_80649D7C
/* 80649B40  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 80649B44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649B48  90 1A 36 24 */	stw r0, 0x3624(r26)
/* 80649B4C  48 00 02 30 */	b lbl_80649D7C
lbl_80649B50:
/* 80649B50  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649B54  38 63 00 0C */	addi r3, r3, 0xc
/* 80649B58  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80649B5C  4B CD E8 D0 */	b checkPass__12J3DFrameCtrlFf
/* 80649B60  2C 03 00 00 */	cmpwi r3, 0
/* 80649B64  40 82 00 1C */	bne lbl_80649B80
/* 80649B68  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649B6C  38 63 00 0C */	addi r3, r3, 0xc
/* 80649B70  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 80649B74  4B CD E8 B8 */	b checkPass__12J3DFrameCtrlFf
/* 80649B78  2C 03 00 00 */	cmpwi r3, 0
/* 80649B7C  41 82 00 5C */	beq lbl_80649BD8
lbl_80649B80:
/* 80649B80  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070441@ha */
/* 80649B84  38 03 04 41 */	addi r0, r3, 0x0441 /* 0x00070441@l */
/* 80649B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80649B8C  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649B90  38 81 00 24 */	addi r4, r1, 0x24
/* 80649B94  38 A0 00 00 */	li r5, 0
/* 80649B98  38 C0 FF FF */	li r6, -1
/* 80649B9C  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649BA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80649BA4  7D 89 03 A6 */	mtctr r12
/* 80649BA8  4E 80 04 21 */	bctrl 
/* 80649BAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070443@ha */
/* 80649BB0  38 03 04 43 */	addi r0, r3, 0x0443 /* 0x00070443@l */
/* 80649BB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80649BB8  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649BBC  38 81 00 20 */	addi r4, r1, 0x20
/* 80649BC0  38 A0 FF FF */	li r5, -1
/* 80649BC4  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649BC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80649BCC  7D 89 03 A6 */	mtctr r12
/* 80649BD0  4E 80 04 21 */	bctrl 
/* 80649BD4  48 00 01 18 */	b lbl_80649CEC
lbl_80649BD8:
/* 80649BD8  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649BDC  38 63 00 0C */	addi r3, r3, 0xc
/* 80649BE0  C0 3E 02 10 */	lfs f1, 0x210(r30)
/* 80649BE4  4B CD E8 48 */	b checkPass__12J3DFrameCtrlFf
/* 80649BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80649BEC  40 82 00 1C */	bne lbl_80649C08
/* 80649BF0  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649BF4  38 63 00 0C */	addi r3, r3, 0xc
/* 80649BF8  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 80649BFC  4B CD E8 30 */	b checkPass__12J3DFrameCtrlFf
/* 80649C00  2C 03 00 00 */	cmpwi r3, 0
/* 80649C04  41 82 00 5C */	beq lbl_80649C60
lbl_80649C08:
/* 80649C08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070442@ha */
/* 80649C0C  38 03 04 42 */	addi r0, r3, 0x0442 /* 0x00070442@l */
/* 80649C10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80649C14  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649C18  38 81 00 1C */	addi r4, r1, 0x1c
/* 80649C1C  38 A0 00 00 */	li r5, 0
/* 80649C20  38 C0 FF FF */	li r6, -1
/* 80649C24  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649C28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80649C2C  7D 89 03 A6 */	mtctr r12
/* 80649C30  4E 80 04 21 */	bctrl 
/* 80649C34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070444@ha */
/* 80649C38  38 03 04 44 */	addi r0, r3, 0x0444 /* 0x00070444@l */
/* 80649C3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80649C40  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649C44  38 81 00 18 */	addi r4, r1, 0x18
/* 80649C48  38 A0 FF FF */	li r5, -1
/* 80649C4C  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649C50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80649C54  7D 89 03 A6 */	mtctr r12
/* 80649C58  4E 80 04 21 */	bctrl 
/* 80649C5C  48 00 00 90 */	b lbl_80649CEC
lbl_80649C60:
/* 80649C60  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649C64  38 63 00 0C */	addi r3, r3, 0xc
/* 80649C68  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80649C6C  4B CD E7 C0 */	b checkPass__12J3DFrameCtrlFf
/* 80649C70  2C 03 00 00 */	cmpwi r3, 0
/* 80649C74  40 82 00 4C */	bne lbl_80649CC0
/* 80649C78  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649C7C  38 63 00 0C */	addi r3, r3, 0xc
/* 80649C80  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80649C84  4B CD E7 A8 */	b checkPass__12J3DFrameCtrlFf
/* 80649C88  2C 03 00 00 */	cmpwi r3, 0
/* 80649C8C  40 82 00 34 */	bne lbl_80649CC0
/* 80649C90  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649C94  38 63 00 0C */	addi r3, r3, 0xc
/* 80649C98  C0 3E 02 04 */	lfs f1, 0x204(r30)
/* 80649C9C  4B CD E7 90 */	b checkPass__12J3DFrameCtrlFf
/* 80649CA0  2C 03 00 00 */	cmpwi r3, 0
/* 80649CA4  40 82 00 1C */	bne lbl_80649CC0
/* 80649CA8  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649CAC  38 63 00 0C */	addi r3, r3, 0xc
/* 80649CB0  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80649CB4  4B CD E7 78 */	b checkPass__12J3DFrameCtrlFf
/* 80649CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80649CBC  41 82 00 30 */	beq lbl_80649CEC
lbl_80649CC0:
/* 80649CC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007043C@ha */
/* 80649CC4  38 03 04 3C */	addi r0, r3, 0x043C /* 0x0007043C@l */
/* 80649CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80649CCC  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649CD0  38 81 00 14 */	addi r4, r1, 0x14
/* 80649CD4  38 A0 00 00 */	li r5, 0
/* 80649CD8  38 C0 FF FF */	li r6, -1
/* 80649CDC  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649CE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80649CE4  7D 89 03 A6 */	mtctr r12
/* 80649CE8  4E 80 04 21 */	bctrl 
lbl_80649CEC:
/* 80649CEC  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649CF0  38 63 00 0C */	addi r3, r3, 0xc
/* 80649CF4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80649CF8  4B CD E7 34 */	b checkPass__12J3DFrameCtrlFf
/* 80649CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80649D00  40 82 00 1C */	bne lbl_80649D1C
/* 80649D04  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649D08  38 63 00 0C */	addi r3, r3, 0xc
/* 80649D0C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80649D10  4B CD E7 1C */	b checkPass__12J3DFrameCtrlFf
/* 80649D14  2C 03 00 00 */	cmpwi r3, 0
/* 80649D18  41 82 00 1C */	beq lbl_80649D34
lbl_80649D1C:
/* 80649D1C  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 80649D20  60 00 00 01 */	ori r0, r0, 1
/* 80649D24  90 1A 37 5C */	stw r0, 0x375c(r26)
/* 80649D28  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 80649D2C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649D30  90 1A 36 24 */	stw r0, 0x3624(r26)
lbl_80649D34:
/* 80649D34  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649D38  38 63 00 0C */	addi r3, r3, 0xc
/* 80649D3C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80649D40  4B CD E6 EC */	b checkPass__12J3DFrameCtrlFf
/* 80649D44  2C 03 00 00 */	cmpwi r3, 0
/* 80649D48  40 82 00 1C */	bne lbl_80649D64
/* 80649D4C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649D50  38 63 00 0C */	addi r3, r3, 0xc
/* 80649D54  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 80649D58  4B CD E6 D4 */	b checkPass__12J3DFrameCtrlFf
/* 80649D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80649D60  41 82 00 1C */	beq lbl_80649D7C
lbl_80649D64:
/* 80649D64  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 80649D68  60 00 00 01 */	ori r0, r0, 1
/* 80649D6C  90 1A 36 24 */	stw r0, 0x3624(r26)
/* 80649D70  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 80649D74  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649D78  90 1A 37 5C */	stw r0, 0x375c(r26)
lbl_80649D7C:
/* 80649D7C  80 1A 06 E8 */	lwz r0, 0x6e8(r26)
/* 80649D80  2C 00 00 00 */	cmpwi r0, 0
/* 80649D84  40 82 07 E8 */	bne lbl_8064A56C
/* 80649D88  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80649D8C  38 63 00 0C */	addi r3, r3, 0xc
/* 80649D90  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80649D94  4B CD E6 98 */	b checkPass__12J3DFrameCtrlFf
/* 80649D98  2C 03 00 00 */	cmpwi r3, 0
/* 80649D9C  41 82 07 D0 */	beq lbl_8064A56C
/* 80649DA0  80 1A 36 24 */	lwz r0, 0x3624(r26)
/* 80649DA4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649DA8  90 1A 36 24 */	stw r0, 0x3624(r26)
/* 80649DAC  80 1A 37 5C */	lwz r0, 0x375c(r26)
/* 80649DB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80649DB4  90 1A 37 5C */	stw r0, 0x375c(r26)
/* 80649DB8  7F 43 D3 78 */	mr r3, r26
/* 80649DBC  38 80 00 00 */	li r4, 0
/* 80649DC0  4B FF 61 AD */	bl setTgHitBit__10daB_ZANT_cFi
/* 80649DC4  7F 43 D3 78 */	mr r3, r26
/* 80649DC8  38 80 00 01 */	li r4, 1
/* 80649DCC  38 A0 00 00 */	li r5, 0
/* 80649DD0  4B FF E9 A9 */	bl setLastWarp__10daB_ZANT_cFii
/* 80649DD4  48 00 07 98 */	b lbl_8064A56C
lbl_80649DD8:
/* 80649DD8  7F 43 D3 78 */	mr r3, r26
/* 80649DDC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80649DE0  4B 9D 0A 00 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80649DE4  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 80649DE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80649DEC  40 80 00 10 */	bge lbl_80649DFC
/* 80649DF0  38 00 00 05 */	li r0, 5
/* 80649DF4  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649DF8  48 00 07 74 */	b lbl_8064A56C
lbl_80649DFC:
/* 80649DFC  38 00 00 02 */	li r0, 2
/* 80649E00  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649E04  7F 43 D3 78 */	mr r3, r26
/* 80649E08  38 80 00 3C */	li r4, 0x3c
/* 80649E0C  38 A0 00 02 */	li r5, 2
/* 80649E10  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80649E14  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80649E18  4B FF 47 AD */	bl setBck__10daB_ZANT_cFiUcff
/* 80649E1C  48 00 07 50 */	b lbl_8064A56C
lbl_80649E20:
/* 80649E20  38 60 00 01 */	li r3, 1
/* 80649E24  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80649E28  7C 04 07 74 */	extsb r4, r0
/* 80649E2C  4B 9E 3C 70 */	b dComIfGs_onOneZoneSwitch__Fii
/* 80649E30  7F 43 D3 78 */	mr r3, r26
/* 80649E34  38 80 00 30 */	li r4, 0x30
/* 80649E38  38 A0 00 02 */	li r5, 2
/* 80649E3C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80649E40  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80649E44  4B FF 47 81 */	bl setBck__10daB_ZANT_cFiUcff
/* 80649E48  88 1A 07 04 */	lbz r0, 0x704(r26)
/* 80649E4C  28 00 00 00 */	cmplwi r0, 0
/* 80649E50  40 82 00 2C */	bne lbl_80649E7C
/* 80649E54  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 80649E58  28 00 00 02 */	cmplwi r0, 2
/* 80649E5C  41 82 00 34 */	beq lbl_80649E90
/* 80649E60  38 00 01 2C */	li r0, 0x12c
/* 80649E64  90 1A 06 EC */	stw r0, 0x6ec(r26)
/* 80649E68  38 00 00 01 */	li r0, 1
/* 80649E6C  98 1A 07 1D */	stb r0, 0x71d(r26)
/* 80649E70  38 00 00 00 */	li r0, 0
/* 80649E74  98 1A 06 FF */	stb r0, 0x6ff(r26)
/* 80649E78  48 00 00 18 */	b lbl_80649E90
lbl_80649E7C:
/* 80649E7C  80 1A 06 EC */	lwz r0, 0x6ec(r26)
/* 80649E80  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80649E84  40 80 00 0C */	bge lbl_80649E90
/* 80649E88  38 00 00 1E */	li r0, 0x1e
/* 80649E8C  90 1A 06 EC */	stw r0, 0x6ec(r26)
lbl_80649E90:
/* 80649E90  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 80649E94  28 00 00 00 */	cmplwi r0, 0
/* 80649E98  40 82 00 10 */	bne lbl_80649EA8
/* 80649E9C  38 00 00 0B */	li r0, 0xb
/* 80649EA0  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 80649EA4  48 00 00 0C */	b lbl_80649EB0
lbl_80649EA8:
/* 80649EA8  38 00 00 1F */	li r0, 0x1f
/* 80649EAC  90 1A 06 DC */	stw r0, 0x6dc(r26)
lbl_80649EB0:
/* 80649EB0  B3 BA 04 DE */	sth r29, 0x4de(r26)
/* 80649EB4  80 1A 34 E8 */	lwz r0, 0x34e8(r26)
/* 80649EB8  60 00 00 01 */	ori r0, r0, 1
/* 80649EBC  90 1A 34 E8 */	stw r0, 0x34e8(r26)
/* 80649EC0  80 1A 35 00 */	lwz r0, 0x3500(r26)
/* 80649EC4  60 00 00 01 */	ori r0, r0, 1
/* 80649EC8  90 1A 35 00 */	stw r0, 0x3500(r26)
/* 80649ECC  80 1A 35 14 */	lwz r0, 0x3514(r26)
/* 80649ED0  60 00 00 01 */	ori r0, r0, 1
/* 80649ED4  90 1A 35 14 */	stw r0, 0x3514(r26)
/* 80649ED8  7F 43 D3 78 */	mr r3, r26
/* 80649EDC  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80649EE0  38 84 FD FF */	addi r4, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 80649EE4  4B FF 61 D9 */	bl setTgType__10daB_ZANT_cFUl
/* 80649EE8  7F 43 D3 78 */	mr r3, r26
/* 80649EEC  38 80 00 01 */	li r4, 1
/* 80649EF0  4B FF 60 FD */	bl setTgShield__10daB_ZANT_cFi
/* 80649EF4  7F 43 D3 78 */	mr r3, r26
/* 80649EF8  38 80 00 01 */	li r4, 1
/* 80649EFC  4B FF 60 71 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80649F00  38 00 30 00 */	li r0, 0x3000
/* 80649F04  B0 1A 06 F8 */	sth r0, 0x6f8(r26)
/* 80649F08  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80649F0C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80649F10  38 00 00 00 */	li r0, 0
/* 80649F14  98 1A 06 FD */	stb r0, 0x6fd(r26)
/* 80649F18  98 1A 07 0B */	stb r0, 0x70b(r26)
lbl_80649F1C:
/* 80649F1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070446@ha */
/* 80649F20  38 03 04 46 */	addi r0, r3, 0x0446 /* 0x00070446@l */
/* 80649F24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80649F28  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 80649F2C  38 81 00 10 */	addi r4, r1, 0x10
/* 80649F30  38 A0 FF FF */	li r5, -1
/* 80649F34  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 80649F38  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80649F3C  7D 89 03 A6 */	mtctr r12
/* 80649F40  4E 80 04 21 */	bctrl 
/* 80649F44  7F 43 D3 78 */	mr r3, r26
/* 80649F48  4B FF 65 31 */	bl setLastRollEffect__10daB_ZANT_cFv
/* 80649F4C  38 7A 06 D0 */	addi r3, r26, 0x6d0
/* 80649F50  3C 80 80 65 */	lis r4, l_HIO@ha
/* 80649F54  38 84 F6 04 */	addi r4, r4, l_HIO@l
/* 80649F58  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80649F5C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 80649F60  4B C2 67 E0 */	b cLib_chaseF__FPfff
/* 80649F64  C3 FE 00 2C */	lfs f31, 0x2c(r30)
/* 80649F68  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 80649F6C  28 00 00 00 */	cmplwi r0, 0
/* 80649F70  41 82 00 08 */	beq lbl_80649F78
/* 80649F74  C3 FE 01 A8 */	lfs f31, 0x1a8(r30)
lbl_80649F78:
/* 80649F78  88 7A 07 0B */	lbz r3, 0x70b(r26)
/* 80649F7C  28 03 00 00 */	cmplwi r3, 0
/* 80649F80  41 82 00 40 */	beq lbl_80649FC0
/* 80649F84  80 1A 07 F8 */	lwz r0, 0x7f8(r26)
/* 80649F88  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80649F8C  41 82 01 68 */	beq lbl_8064A0F4
/* 80649F90  38 03 FF FF */	addi r0, r3, -1
/* 80649F94  98 1A 07 0B */	stb r0, 0x70b(r26)
/* 80649F98  88 1A 07 0B */	lbz r0, 0x70b(r26)
/* 80649F9C  28 00 00 00 */	cmplwi r0, 0
/* 80649FA0  41 82 01 54 */	beq lbl_8064A0F4
/* 80649FA4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80649FA8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80649FAC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80649FB0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80649FB4  38 00 00 00 */	li r0, 0
/* 80649FB8  90 1A 06 EC */	stw r0, 0x6ec(r26)
/* 80649FBC  48 00 01 38 */	b lbl_8064A0F4
lbl_80649FC0:
/* 80649FC0  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 80649FC4  2C 00 00 0B */	cmpwi r0, 0xb
/* 80649FC8  40 82 01 14 */	bne lbl_8064A0DC
/* 80649FCC  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80649FD0  7F BC 07 34 */	extsh r28, r29
/* 80649FD4  7C 00 E0 50 */	subf r0, r0, r28
/* 80649FD8  7C 03 07 34 */	extsh r3, r0
/* 80649FDC  4B D1 B0 F4 */	b abs
/* 80649FE0  7C 7B 1B 78 */	mr r27, r3
/* 80649FE4  2C 1B 40 00 */	cmpwi r27, 0x4000
/* 80649FE8  40 81 00 9C */	ble lbl_8064A084
/* 80649FEC  2C 1B 68 00 */	cmpwi r27, 0x6800
/* 80649FF0  40 81 00 1C */	ble lbl_8064A00C
/* 80649FF4  38 7A 05 2C */	addi r3, r26, 0x52c
/* 80649FF8  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80649FFC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8064A000  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8064A004  4B C2 67 3C */	b cLib_chaseF__FPfff
/* 8064A008  48 00 00 18 */	b lbl_8064A020
lbl_8064A00C:
/* 8064A00C  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8064A010  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8064A014  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8064A018  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8064A01C  4B C2 67 24 */	b cLib_chaseF__FPfff
lbl_8064A020:
/* 8064A020  38 7A 04 DE */	addi r3, r26, 0x4de
/* 8064A024  3C 9C 00 01 */	addis r4, r28, 1
/* 8064A028  38 04 80 00 */	addi r0, r4, -32768
/* 8064A02C  7C 04 07 34 */	extsh r4, r0
/* 8064A030  38 A0 00 10 */	li r5, 0x10
/* 8064A034  C0 1E 02 D0 */	lfs f0, 0x2d0(r30)
/* 8064A038  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8064A03C  FC 00 00 1E */	fctiwz f0, f0
/* 8064A040  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8064A044  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8064A048  4B C2 65 C0 */	b cLib_addCalcAngleS2__FPssss
/* 8064A04C  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 8064A050  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064A054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064A058  40 80 00 9C */	bge lbl_8064A0F4
/* 8064A05C  2C 1B 60 00 */	cmpwi r27, 0x6000
/* 8064A060  40 81 00 94 */	ble lbl_8064A0F4
/* 8064A064  A8 7A 04 DE */	lha r3, 0x4de(r26)
/* 8064A068  3C 63 00 01 */	addis r3, r3, 1
/* 8064A06C  38 03 80 00 */	addi r0, r3, -32768
/* 8064A070  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8064A074  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 8064A078  FC 00 00 50 */	fneg f0, f0
/* 8064A07C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8064A080  48 00 00 74 */	b lbl_8064A0F4
lbl_8064A084:
/* 8064A084  2C 1B 18 00 */	cmpwi r27, 0x1800
/* 8064A088  40 81 00 18 */	ble lbl_8064A0A0
/* 8064A08C  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8064A090  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8064A094  FC 40 F8 90 */	fmr f2, f31
/* 8064A098  4B C2 66 A8 */	b cLib_chaseF__FPfff
/* 8064A09C  48 00 00 18 */	b lbl_8064A0B4
lbl_8064A0A0:
/* 8064A0A0  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8064A0A4  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8064A0A8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8064A0AC  FC 40 F8 90 */	fmr f2, f31
/* 8064A0B0  4B C2 66 90 */	b cLib_chaseF__FPfff
lbl_8064A0B4:
/* 8064A0B4  38 7A 04 DE */	addi r3, r26, 0x4de
/* 8064A0B8  7F A4 EB 78 */	mr r4, r29
/* 8064A0BC  38 A0 00 10 */	li r5, 0x10
/* 8064A0C0  C0 1E 02 D4 */	lfs f0, 0x2d4(r30)
/* 8064A0C4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8064A0C8  FC 00 00 1E */	fctiwz f0, f0
/* 8064A0CC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8064A0D0  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8064A0D4  4B C2 65 34 */	b cLib_addCalcAngleS2__FPssss
/* 8064A0D8  48 00 00 1C */	b lbl_8064A0F4
lbl_8064A0DC:
/* 8064A0DC  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8064A0E0  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8064A0E4  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8064A0E8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8064A0EC  EC 40 07 F2 */	fmuls f2, f0, f31
/* 8064A0F0  4B C2 66 50 */	b cLib_chaseF__FPfff
lbl_8064A0F4:
/* 8064A0F4  3B A0 00 00 */	li r29, 0
/* 8064A0F8  3B 80 00 00 */	li r28, 0
/* 8064A0FC  3B 60 00 00 */	li r27, 0
/* 8064A100  3B 20 00 00 */	li r25, 0
/* 8064A104  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A108  4B A3 A3 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8064A10C  28 03 00 00 */	cmplwi r3, 0
/* 8064A110  41 82 00 90 */	beq lbl_8064A1A0
/* 8064A114  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A118  4B A3 A3 E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8064A11C  7C 79 1B 78 */	mr r25, r3
/* 8064A120  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8064A124  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 8064A128  41 82 00 0C */	beq lbl_8064A134
/* 8064A12C  3B 80 00 01 */	li r28, 1
/* 8064A130  48 00 00 3C */	b lbl_8064A16C
lbl_8064A134:
/* 8064A134  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8064A138  41 82 00 34 */	beq lbl_8064A16C
/* 8064A13C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8064A140  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8064A144  28 00 00 08 */	cmplwi r0, 8
/* 8064A148  41 82 00 20 */	beq lbl_8064A168
/* 8064A14C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8064A150  28 00 00 16 */	cmplwi r0, 0x16
/* 8064A154  41 82 00 14 */	beq lbl_8064A168
/* 8064A158  28 00 00 17 */	cmplwi r0, 0x17
/* 8064A15C  41 82 00 0C */	beq lbl_8064A168
/* 8064A160  28 00 00 18 */	cmplwi r0, 0x18
/* 8064A164  40 82 00 08 */	bne lbl_8064A16C
lbl_8064A168:
/* 8064A168  3B 80 00 01 */	li r28, 1
lbl_8064A16C:
/* 8064A16C  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A170  4B A3 A3 88 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8064A174  7C 64 1B 78 */	mr r4, r3
/* 8064A178  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 8064A17C  38 A0 00 2A */	li r5, 0x2a
/* 8064A180  7F 46 D3 78 */	mr r6, r26
/* 8064A184  4B A3 D3 90 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 8064A188  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A18C  81 9A 35 24 */	lwz r12, 0x3524(r26)
/* 8064A190  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8064A194  7D 89 03 A6 */	mtctr r12
/* 8064A198  4E 80 04 21 */	bctrl 
/* 8064A19C  48 00 00 44 */	b lbl_8064A1E0
lbl_8064A1A0:
/* 8064A1A0  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A1A4  4B A3 A1 1C */	b ChkAtHit__12dCcD_GObjInfFv
/* 8064A1A8  28 03 00 00 */	cmplwi r3, 0
/* 8064A1AC  41 82 00 34 */	beq lbl_8064A1E0
/* 8064A1B0  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A1B4  4B A3 A1 A4 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 8064A1B8  7C 79 1B 78 */	mr r25, r3
/* 8064A1BC  80 1A 35 44 */	lwz r0, 0x3544(r26)
/* 8064A1C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064A1C4  40 82 00 08 */	bne lbl_8064A1CC
/* 8064A1C8  3B 60 00 01 */	li r27, 1
lbl_8064A1CC:
/* 8064A1CC  38 7A 34 E8 */	addi r3, r26, 0x34e8
/* 8064A1D0  81 9A 35 24 */	lwz r12, 0x3524(r26)
/* 8064A1D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8064A1D8  7D 89 03 A6 */	mtctr r12
/* 8064A1DC  4E 80 04 21 */	bctrl 
lbl_8064A1E0:
/* 8064A1E0  28 19 00 00 */	cmplwi r25, 0
/* 8064A1E4  41 82 00 7C */	beq lbl_8064A260
/* 8064A1E8  7F 23 CB 78 */	mr r3, r25
/* 8064A1EC  4B C1 98 5C */	b GetAc__8cCcD_ObjFv
/* 8064A1F0  A8 03 00 08 */	lha r0, 8(r3)
/* 8064A1F4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8064A1F8  40 82 00 68 */	bne lbl_8064A260
/* 8064A1FC  3B A0 00 01 */	li r29, 1
/* 8064A200  88 7A 06 FD */	lbz r3, 0x6fd(r26)
/* 8064A204  38 03 00 01 */	addi r0, r3, 1
/* 8064A208  98 1A 06 FD */	stb r0, 0x6fd(r26)
/* 8064A20C  2C 1C 00 00 */	cmpwi r28, 0
/* 8064A210  41 82 00 24 */	beq lbl_8064A234
/* 8064A214  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 8064A218  FC 00 00 50 */	fneg f0, f0
/* 8064A21C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8064A220  38 00 00 02 */	li r0, 2
/* 8064A224  98 1A 07 0B */	stb r0, 0x70b(r26)
/* 8064A228  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8064A22C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 8064A230  48 00 00 E0 */	b lbl_8064A310
lbl_8064A234:
/* 8064A234  2C 1B 00 00 */	cmpwi r27, 0
/* 8064A238  41 82 00 1C */	beq lbl_8064A254
/* 8064A23C  88 7A 06 FD */	lbz r3, 0x6fd(r26)
/* 8064A240  38 03 00 05 */	addi r0, r3, 5
/* 8064A244  98 1A 06 FD */	stb r0, 0x6fd(r26)
/* 8064A248  C0 1E 02 D8 */	lfs f0, 0x2d8(r30)
/* 8064A24C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8064A250  48 00 00 C0 */	b lbl_8064A310
lbl_8064A254:
/* 8064A254  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 8064A258  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8064A25C  48 00 00 B4 */	b lbl_8064A310
lbl_8064A260:
/* 8064A260  80 1A 07 F8 */	lwz r0, 0x7f8(r26)
/* 8064A264  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8064A268  41 82 00 A8 */	beq lbl_8064A310
/* 8064A26C  AB 9A 07 C8 */	lha r28, 0x7c8(r26)
/* 8064A270  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 8064A274  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064A278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064A27C  40 81 00 48 */	ble lbl_8064A2C4
/* 8064A280  7F 83 E3 78 */	mr r3, r28
/* 8064A284  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 8064A288  4B C2 6B 9C */	b cLib_distanceAngleS__Fss
/* 8064A28C  7C 60 07 34 */	extsh r0, r3
/* 8064A290  2C 00 58 00 */	cmpwi r0, 0x5800
/* 8064A294  40 81 00 7C */	ble lbl_8064A310
/* 8064A298  38 1C 80 00 */	addi r0, r28, -32768
/* 8064A29C  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8064A2A0  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 8064A2A4  C0 1E 02 DC */	lfs f0, 0x2dc(r30)
/* 8064A2A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8064A2AC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8064A2B0  3B A0 00 01 */	li r29, 1
/* 8064A2B4  88 7A 06 FD */	lbz r3, 0x6fd(r26)
/* 8064A2B8  38 03 00 05 */	addi r0, r3, 5
/* 8064A2BC  98 1A 06 FD */	stb r0, 0x6fd(r26)
/* 8064A2C0  48 00 00 50 */	b lbl_8064A310
lbl_8064A2C4:
/* 8064A2C4  7F 83 E3 78 */	mr r3, r28
/* 8064A2C8  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 8064A2CC  4B C2 6B 58 */	b cLib_distanceAngleS__Fss
/* 8064A2D0  7C 60 07 34 */	extsh r0, r3
/* 8064A2D4  2C 00 28 00 */	cmpwi r0, 0x2800
/* 8064A2D8  40 80 00 38 */	bge lbl_8064A310
/* 8064A2DC  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 8064A2E0  7C 1C 00 50 */	subf r0, r28, r0
/* 8064A2E4  7C 00 07 34 */	extsh r0, r0
/* 8064A2E8  7C 00 E0 50 */	subf r0, r0, r28
/* 8064A2EC  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8064A2F0  C0 3A 05 2C */	lfs f1, 0x52c(r26)
/* 8064A2F4  C0 1E 02 DC */	lfs f0, 0x2dc(r30)
/* 8064A2F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8064A2FC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8064A300  3B A0 00 01 */	li r29, 1
/* 8064A304  88 7A 06 FD */	lbz r3, 0x6fd(r26)
/* 8064A308  38 03 00 05 */	addi r0, r3, 5
/* 8064A30C  98 1A 06 FD */	stb r0, 0x6fd(r26)
lbl_8064A310:
/* 8064A310  2C 1D 00 00 */	cmpwi r29, 0
/* 8064A314  41 82 00 7C */	beq lbl_8064A390
/* 8064A318  80 1A 06 DC */	lwz r0, 0x6dc(r26)
/* 8064A31C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8064A320  40 82 00 54 */	bne lbl_8064A374
/* 8064A324  88 1A 06 FD */	lbz r0, 0x6fd(r26)
/* 8064A328  28 00 00 05 */	cmplwi r0, 5
/* 8064A32C  41 80 00 48 */	blt lbl_8064A374
/* 8064A330  80 1A 34 E8 */	lwz r0, 0x34e8(r26)
/* 8064A334  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A338  90 1A 34 E8 */	stw r0, 0x34e8(r26)
/* 8064A33C  80 1A 35 00 */	lwz r0, 0x3500(r26)
/* 8064A340  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A344  90 1A 35 00 */	stw r0, 0x3500(r26)
/* 8064A348  80 1A 35 14 */	lwz r0, 0x3514(r26)
/* 8064A34C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A350  90 1A 35 14 */	stw r0, 0x3514(r26)
/* 8064A354  7F 43 D3 78 */	mr r3, r26
/* 8064A358  38 80 00 00 */	li r4, 0
/* 8064A35C  4B FF 5C 11 */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064A360  7F 43 D3 78 */	mr r3, r26
/* 8064A364  38 80 00 03 */	li r4, 3
/* 8064A368  7F 65 DB 78 */	mr r5, r27
/* 8064A36C  4B FF E4 0D */	bl setLastWarp__10daB_ZANT_cFii
/* 8064A370  48 00 01 FC */	b lbl_8064A56C
lbl_8064A374:
/* 8064A374  80 1A 06 EC */	lwz r0, 0x6ec(r26)
/* 8064A378  2C 00 00 0A */	cmpwi r0, 0xa
/* 8064A37C  40 80 00 14 */	bge lbl_8064A390
/* 8064A380  38 00 00 0A */	li r0, 0xa
/* 8064A384  90 1A 06 EC */	stw r0, 0x6ec(r26)
/* 8064A388  38 00 00 0C */	li r0, 0xc
/* 8064A38C  90 1A 06 DC */	stw r0, 0x6dc(r26)
lbl_8064A390:
/* 8064A390  38 7A 06 F8 */	addi r3, r26, 0x6f8
/* 8064A394  38 80 30 00 */	li r4, 0x3000
/* 8064A398  38 A0 00 80 */	li r5, 0x80
/* 8064A39C  4B C2 67 F4 */	b cLib_chaseAngleS__FPsss
/* 8064A3A0  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 8064A3A4  A8 1A 06 F8 */	lha r0, 0x6f8(r26)
/* 8064A3A8  7C 03 02 14 */	add r0, r3, r0
/* 8064A3AC  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 8064A3B0  80 1A 06 EC */	lwz r0, 0x6ec(r26)
/* 8064A3B4  2C 00 00 00 */	cmpwi r0, 0
/* 8064A3B8  40 82 01 B4 */	bne lbl_8064A56C
/* 8064A3BC  38 00 00 0C */	li r0, 0xc
/* 8064A3C0  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 8064A3C4  48 00 01 A8 */	b lbl_8064A56C
lbl_8064A3C8:
/* 8064A3C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070446@ha */
/* 8064A3CC  38 03 04 46 */	addi r0, r3, 0x0446 /* 0x00070446@l */
/* 8064A3D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064A3D4  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 8064A3D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8064A3DC  38 A0 FF FF */	li r5, -1
/* 8064A3E0  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 8064A3E4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8064A3E8  7D 89 03 A6 */	mtctr r12
/* 8064A3EC  4E 80 04 21 */	bctrl 
/* 8064A3F0  7F 43 D3 78 */	mr r3, r26
/* 8064A3F4  4B FF 60 85 */	bl setLastRollEffect__10daB_ZANT_cFv
/* 8064A3F8  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8064A3FC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064A400  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064A404  4B C2 63 3C */	b cLib_chaseF__FPfff
/* 8064A408  38 7A 06 F8 */	addi r3, r26, 0x6f8
/* 8064A40C  38 80 00 00 */	li r4, 0
/* 8064A410  38 A0 00 80 */	li r5, 0x80
/* 8064A414  4B C2 67 7C */	b cLib_chaseAngleS__FPsss
/* 8064A418  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 8064A41C  A8 1A 06 F8 */	lha r0, 0x6f8(r26)
/* 8064A420  7C 03 02 14 */	add r0, r3, r0
/* 8064A424  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 8064A428  A8 1A 06 F8 */	lha r0, 0x6f8(r26)
/* 8064A42C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8064A430  40 80 01 3C */	bge lbl_8064A56C
/* 8064A434  80 1A 34 E8 */	lwz r0, 0x34e8(r26)
/* 8064A438  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A43C  90 1A 34 E8 */	stw r0, 0x34e8(r26)
/* 8064A440  80 1A 35 00 */	lwz r0, 0x3500(r26)
/* 8064A444  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A448  90 1A 35 00 */	stw r0, 0x3500(r26)
/* 8064A44C  80 1A 35 14 */	lwz r0, 0x3514(r26)
/* 8064A450  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064A454  90 1A 35 14 */	stw r0, 0x3514(r26)
/* 8064A458  7F 43 D3 78 */	mr r3, r26
/* 8064A45C  38 80 00 3A */	li r4, 0x3a
/* 8064A460  38 A0 00 02 */	li r5, 2
/* 8064A464  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8064A468  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064A46C  4B FF 41 59 */	bl setBck__10daB_ZANT_cFiUcff
/* 8064A470  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070447@ha */
/* 8064A474  38 03 04 47 */	addi r0, r3, 0x0447 /* 0x00070447@l */
/* 8064A478  90 01 00 08 */	stw r0, 8(r1)
/* 8064A47C  38 7A 05 F0 */	addi r3, r26, 0x5f0
/* 8064A480  38 81 00 08 */	addi r4, r1, 8
/* 8064A484  38 A0 FF FF */	li r5, -1
/* 8064A488  81 9A 05 F0 */	lwz r12, 0x5f0(r26)
/* 8064A48C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8064A490  7D 89 03 A6 */	mtctr r12
/* 8064A494  4E 80 04 21 */	bctrl 
/* 8064A498  38 00 00 0D */	li r0, 0xd
/* 8064A49C  90 1A 06 DC */	stw r0, 0x6dc(r26)
/* 8064A4A0  38 60 00 01 */	li r3, 1
/* 8064A4A4  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8064A4A8  7C 04 07 74 */	extsb r4, r0
/* 8064A4AC  4B 9E 36 54 */	b dComIfGs_offOneZoneSwitch__Fii
/* 8064A4B0  88 1A 07 13 */	lbz r0, 0x713(r26)
/* 8064A4B4  28 00 00 02 */	cmplwi r0, 2
/* 8064A4B8  40 82 00 B4 */	bne lbl_8064A56C
/* 8064A4BC  38 00 01 C2 */	li r0, 0x1c2
/* 8064A4C0  90 1A 06 EC */	stw r0, 0x6ec(r26)
/* 8064A4C4  48 00 00 A8 */	b lbl_8064A56C
lbl_8064A4C8:
/* 8064A4C8  A8 1A 06 F8 */	lha r0, 0x6f8(r26)
/* 8064A4CC  2C 00 08 00 */	cmpwi r0, 0x800
/* 8064A4D0  40 80 00 40 */	bge lbl_8064A510
/* 8064A4D4  38 00 00 00 */	li r0, 0
/* 8064A4D8  98 1A 07 02 */	stb r0, 0x702(r26)
/* 8064A4DC  7F 43 D3 78 */	mr r3, r26
/* 8064A4E0  38 80 00 00 */	li r4, 0
/* 8064A4E4  4B FF 5B 09 */	bl setTgShield__10daB_ZANT_cFi
/* 8064A4E8  7F 43 D3 78 */	mr r3, r26
/* 8064A4EC  38 80 00 01 */	li r4, 1
/* 8064A4F0  4B FF 5A 7D */	bl setTgHitBit__10daB_ZANT_cFi
/* 8064A4F4  38 00 00 3C */	li r0, 0x3c
/* 8064A4F8  90 1A 06 F0 */	stw r0, 0x6f0(r26)
/* 8064A4FC  38 00 00 00 */	li r0, 0
/* 8064A500  98 1A 07 1D */	stb r0, 0x71d(r26)
/* 8064A504  98 1A 07 03 */	stb r0, 0x703(r26)
/* 8064A508  98 1A 07 1C */	stb r0, 0x71c(r26)
/* 8064A50C  98 1A 07 12 */	stb r0, 0x712(r26)
lbl_8064A510:
/* 8064A510  38 7A 06 D0 */	addi r3, r26, 0x6d0
/* 8064A514  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8064A518  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 8064A51C  4B C2 62 24 */	b cLib_chaseF__FPfff
/* 8064A520  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8064A524  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064A528  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064A52C  4B C2 62 14 */	b cLib_chaseF__FPfff
/* 8064A530  38 7A 06 F8 */	addi r3, r26, 0x6f8
/* 8064A534  38 80 00 00 */	li r4, 0
/* 8064A538  38 A0 00 80 */	li r5, 0x80
/* 8064A53C  4B C2 66 54 */	b cLib_chaseAngleS__FPsss
/* 8064A540  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 8064A544  A8 1A 06 F8 */	lha r0, 0x6f8(r26)
/* 8064A548  7C 03 02 14 */	add r0, r3, r0
/* 8064A54C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 8064A550  A8 1A 06 F8 */	lha r0, 0x6f8(r26)
/* 8064A554  2C 00 00 00 */	cmpwi r0, 0
/* 8064A558  40 82 00 14 */	bne lbl_8064A56C
/* 8064A55C  7F 43 D3 78 */	mr r3, r26
/* 8064A560  38 80 00 14 */	li r4, 0x14
/* 8064A564  38 A0 00 00 */	li r5, 0
/* 8064A568  4B FF 41 5D */	bl setActionMode__10daB_ZANT_cFii
lbl_8064A56C:
/* 8064A56C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8064A570  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8064A574  39 61 00 70 */	addi r11, r1, 0x70
/* 8064A578  4B D1 7C A0 */	b _restgpr_25
/* 8064A57C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8064A580  7C 08 03 A6 */	mtlr r0
/* 8064A584  38 21 00 80 */	addi r1, r1, 0x80
/* 8064A588  4E 80 00 20 */	blr 
