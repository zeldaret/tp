lbl_806D9514:
/* 806D9514  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806D9518  7C 08 02 A6 */	mflr r0
/* 806D951C  90 01 00 84 */	stw r0, 0x84(r1)
/* 806D9520  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806D9524  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806D9528  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 806D952C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 806D9530  39 61 00 60 */	addi r11, r1, 0x60
/* 806D9534  4B C8 8C A4 */	b _savegpr_28
/* 806D9538  7C 7C 1B 78 */	mr r28, r3
/* 806D953C  3C 80 80 6E */	lis r4, lit_3763@ha
/* 806D9540  3B C4 EE 38 */	addi r30, r4, lit_3763@l
/* 806D9544  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 806D9548  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806D954C  FC 00 00 1E */	fctiwz f0, f0
/* 806D9550  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806D9554  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 806D9558  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 806D955C  C3 DE 00 1C */	lfs f30, 0x1c(r30)
/* 806D9560  38 00 00 00 */	li r0, 0
/* 806D9564  B0 03 06 B4 */	sth r0, 0x6b4(r3)
/* 806D9568  38 00 00 01 */	li r0, 1
/* 806D956C  98 03 0D 20 */	stb r0, 0xd20(r3)
/* 806D9570  3B A0 00 00 */	li r29, 0
/* 806D9574  A8 03 06 58 */	lha r0, 0x658(r3)
/* 806D9578  2C 00 00 03 */	cmpwi r0, 3
/* 806D957C  41 82 01 A0 */	beq lbl_806D971C
/* 806D9580  40 80 00 1C */	bge lbl_806D959C
/* 806D9584  2C 00 00 01 */	cmpwi r0, 1
/* 806D9588  41 82 00 48 */	beq lbl_806D95D0
/* 806D958C  40 80 01 54 */	bge lbl_806D96E0
/* 806D9590  2C 00 00 00 */	cmpwi r0, 0
/* 806D9594  40 80 00 18 */	bge lbl_806D95AC
/* 806D9598  48 00 03 B8 */	b lbl_806D9950
lbl_806D959C:
/* 806D959C  2C 00 00 05 */	cmpwi r0, 5
/* 806D95A0  41 82 03 20 */	beq lbl_806D98C0
/* 806D95A4  40 80 03 AC */	bge lbl_806D9950
/* 806D95A8  48 00 01 F4 */	b lbl_806D979C
lbl_806D95AC:
/* 806D95AC  38 80 00 0B */	li r4, 0xb
/* 806D95B0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806D95B4  38 A0 00 00 */	li r5, 0
/* 806D95B8  FC 40 F0 90 */	fmr f2, f30
/* 806D95BC  4B FF EF BD */	bl anm_init__FP11e_gob_classifUcf
/* 806D95C0  38 00 00 01 */	li r0, 1
/* 806D95C4  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806D95C8  38 00 00 00 */	li r0, 0
/* 806D95CC  98 1C 0D 1C */	stb r0, 0xd1c(r28)
lbl_806D95D0:
/* 806D95D0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806D95D4  38 63 00 0C */	addi r3, r3, 0xc
/* 806D95D8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806D95DC  4B C4 EE 50 */	b checkPass__12J3DFrameCtrlFf
/* 806D95E0  2C 03 00 00 */	cmpwi r3, 0
/* 806D95E4  41 82 00 30 */	beq lbl_806D9614
/* 806D95E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E7@ha */
/* 806D95EC  38 03 01 E7 */	addi r0, r3, 0x01E7 /* 0x000701E7@l */
/* 806D95F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D95F4  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806D95F8  38 81 00 34 */	addi r4, r1, 0x34
/* 806D95FC  38 A0 00 00 */	li r5, 0
/* 806D9600  38 C0 FF FF */	li r6, -1
/* 806D9604  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806D9608  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D960C  7D 89 03 A6 */	mtctr r12
/* 806D9610  4E 80 04 21 */	bctrl 
lbl_806D9614:
/* 806D9614  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806D9618  38 63 00 0C */	addi r3, r3, 0xc
/* 806D961C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806D9620  4B C4 EE 0C */	b checkPass__12J3DFrameCtrlFf
/* 806D9624  2C 03 00 00 */	cmpwi r3, 0
/* 806D9628  41 82 00 30 */	beq lbl_806D9658
/* 806D962C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E8@ha */
/* 806D9630  38 03 01 E8 */	addi r0, r3, 0x01E8 /* 0x000701E8@l */
/* 806D9634  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D9638  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806D963C  38 81 00 30 */	addi r4, r1, 0x30
/* 806D9640  38 A0 00 00 */	li r5, 0
/* 806D9644  38 C0 FF FF */	li r6, -1
/* 806D9648  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806D964C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D9650  7D 89 03 A6 */	mtctr r12
/* 806D9654  4E 80 04 21 */	bctrl 
lbl_806D9658:
/* 806D9658  A8 1C 06 6A */	lha r0, 0x66a(r28)
/* 806D965C  B0 1C 06 68 */	sth r0, 0x668(r28)
/* 806D9660  C3 FE 00 68 */	lfs f31, 0x68(r30)
/* 806D9664  C3 DE 00 58 */	lfs f30, 0x58(r30)
/* 806D9668  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806D966C  38 80 00 01 */	li r4, 1
/* 806D9670  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D9674  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D9678  40 82 00 18 */	bne lbl_806D9690
/* 806D967C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806D9680  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D9684  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D9688  41 82 00 08 */	beq lbl_806D9690
/* 806D968C  38 80 00 00 */	li r4, 0
lbl_806D9690:
/* 806D9690  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D9694  41 82 02 BC */	beq lbl_806D9950
/* 806D9698  7F 83 E3 78 */	mr r3, r28
/* 806D969C  38 80 00 0A */	li r4, 0xa
/* 806D96A0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806D96A4  38 A0 00 00 */	li r5, 0
/* 806D96A8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806D96AC  4B FF EE CD */	bl anm_init__FP11e_gob_classifUcf
/* 806D96B0  38 00 00 02 */	li r0, 2
/* 806D96B4  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806D96B8  38 00 00 3C */	li r0, 0x3c
/* 806D96BC  B0 1C 06 74 */	sth r0, 0x674(r28)
/* 806D96C0  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 806D96C4  4B B8 E2 90 */	b cM_rndF__Ff
/* 806D96C8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806D96CC  EC 00 08 2A */	fadds f0, f0, f1
/* 806D96D0  FC 00 00 1E */	fctiwz f0, f0
/* 806D96D4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806D96D8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806D96DC  B0 1C 06 78 */	sth r0, 0x678(r28)
lbl_806D96E0:
/* 806D96E0  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806D96E4  38 63 F2 D4 */	addi r3, r3, l_HIO@l
/* 806D96E8  A8 03 00 18 */	lha r0, 0x18(r3)
/* 806D96EC  B0 1C 06 B4 */	sth r0, 0x6b4(r28)
/* 806D96F0  A8 1C 06 6A */	lha r0, 0x66a(r28)
/* 806D96F4  B0 1C 06 68 */	sth r0, 0x668(r28)
/* 806D96F8  C3 DE 00 58 */	lfs f30, 0x58(r30)
/* 806D96FC  A8 1C 06 74 */	lha r0, 0x674(r28)
/* 806D9700  2C 00 00 00 */	cmpwi r0, 0
/* 806D9704  40 82 02 4C */	bne lbl_806D9950
/* 806D9708  38 00 00 03 */	li r0, 3
/* 806D970C  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806D9710  38 00 00 1E */	li r0, 0x1e
/* 806D9714  B0 1C 06 76 */	sth r0, 0x676(r28)
/* 806D9718  48 00 02 38 */	b lbl_806D9950
lbl_806D971C:
/* 806D971C  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806D9720  38 63 F2 D4 */	addi r3, r3, l_HIO@l
/* 806D9724  A8 03 00 18 */	lha r0, 0x18(r3)
/* 806D9728  B0 1C 06 B4 */	sth r0, 0x6b4(r28)
/* 806D972C  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 806D9730  A8 1C 06 76 */	lha r0, 0x676(r28)
/* 806D9734  2C 00 00 00 */	cmpwi r0, 0
/* 806D9738  40 82 00 38 */	bne lbl_806D9770
/* 806D973C  88 1C 06 AB */	lbz r0, 0x6ab(r28)
/* 806D9740  7C 00 07 75 */	extsb. r0, r0
/* 806D9744  41 82 00 2C */	beq lbl_806D9770
/* 806D9748  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 806D974C  4B B8 E2 08 */	b cM_rndF__Ff
/* 806D9750  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 806D9754  EC 00 08 2A */	fadds f0, f0, f1
/* 806D9758  FC 00 00 1E */	fctiwz f0, f0
/* 806D975C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806D9760  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806D9764  B0 1C 06 74 */	sth r0, 0x674(r28)
/* 806D9768  38 00 00 02 */	li r0, 2
/* 806D976C  B0 1C 06 58 */	sth r0, 0x658(r28)
lbl_806D9770:
/* 806D9770  A8 1C 06 78 */	lha r0, 0x678(r28)
/* 806D9774  2C 00 00 00 */	cmpwi r0, 0
/* 806D9778  41 82 00 18 */	beq lbl_806D9790
/* 806D977C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D9780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D9784  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806D9788  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806D978C  41 82 01 C4 */	beq lbl_806D9950
lbl_806D9790:
/* 806D9790  38 00 00 04 */	li r0, 4
/* 806D9794  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806D9798  48 00 01 B8 */	b lbl_806D9950
lbl_806D979C:
/* 806D979C  C3 DE 00 58 */	lfs f30, 0x58(r30)
/* 806D97A0  38 7C 06 B2 */	addi r3, r28, 0x6b2
/* 806D97A4  38 80 00 00 */	li r4, 0
/* 806D97A8  38 A0 00 01 */	li r5, 1
/* 806D97AC  38 C0 08 00 */	li r6, 0x800
/* 806D97B0  4B B9 6E 58 */	b cLib_addCalcAngleS2__FPssss
/* 806D97B4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806D97B8  A8 9C 06 6A */	lha r4, 0x66a(r28)
/* 806D97BC  38 A0 00 02 */	li r5, 2
/* 806D97C0  38 C0 07 00 */	li r6, 0x700
/* 806D97C4  4B B9 6E 44 */	b cLib_addCalcAngleS2__FPssss
/* 806D97C8  A8 1C 06 B2 */	lha r0, 0x6b2(r28)
/* 806D97CC  2C 00 00 00 */	cmpwi r0, 0
/* 806D97D0  40 82 01 80 */	bne lbl_806D9950
/* 806D97D4  7F 83 E3 78 */	mr r3, r28
/* 806D97D8  38 80 00 22 */	li r4, 0x22
/* 806D97DC  FC 20 F0 90 */	fmr f1, f30
/* 806D97E0  38 A0 00 00 */	li r5, 0
/* 806D97E4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806D97E8  4B FF ED 91 */	bl anm_init__FP11e_gob_classifUcf
/* 806D97EC  38 00 00 05 */	li r0, 5
/* 806D97F0  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806D97F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D97F8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806D97FC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806D9800  38 80 00 00 */	li r4, 0
/* 806D9804  90 81 00 08 */	stw r4, 8(r1)
/* 806D9808  38 00 FF FF */	li r0, -1
/* 806D980C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D9810  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D9814  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D9818  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D981C  38 80 00 00 */	li r4, 0
/* 806D9820  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008429@ha */
/* 806D9824  38 A5 84 29 */	addi r5, r5, 0x8429 /* 0x00008429@l */
/* 806D9828  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 806D982C  38 E0 00 00 */	li r7, 0
/* 806D9830  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 806D9834  3D 20 80 6E */	lis r9, base_sc@ha
/* 806D9838  39 29 F3 08 */	addi r9, r9, base_sc@l
/* 806D983C  39 40 00 FF */	li r10, 0xff
/* 806D9840  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806D9844  4B 97 32 4C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D9848  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806D984C  38 80 00 00 */	li r4, 0
/* 806D9850  90 81 00 08 */	stw r4, 8(r1)
/* 806D9854  38 00 FF FF */	li r0, -1
/* 806D9858  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D985C  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D9860  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D9864  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D9868  38 80 00 00 */	li r4, 0
/* 806D986C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000842A@ha */
/* 806D9870  38 A5 84 2A */	addi r5, r5, 0x842A /* 0x0000842A@l */
/* 806D9874  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 806D9878  38 E0 00 00 */	li r7, 0
/* 806D987C  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 806D9880  3D 20 80 6E */	lis r9, base_sc@ha
/* 806D9884  39 29 F3 08 */	addi r9, r9, base_sc@l
/* 806D9888  39 40 00 FF */	li r10, 0xff
/* 806D988C  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806D9890  4B 97 32 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D9894  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FC@ha */
/* 806D9898  38 03 01 FC */	addi r0, r3, 0x01FC /* 0x000701FC@l */
/* 806D989C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D98A0  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806D98A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806D98A8  38 A0 FF FF */	li r5, -1
/* 806D98AC  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806D98B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D98B4  7D 89 03 A6 */	mtctr r12
/* 806D98B8  4E 80 04 21 */	bctrl 
/* 806D98BC  48 00 00 94 */	b lbl_806D9950
lbl_806D98C0:
/* 806D98C0  2C 04 00 10 */	cmpwi r4, 0x10
/* 806D98C4  40 82 00 30 */	bne lbl_806D98F4
/* 806D98C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701EB@ha */
/* 806D98CC  38 03 01 EB */	addi r0, r3, 0x01EB /* 0x000701EB@l */
/* 806D98D0  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D98D4  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806D98D8  38 81 00 28 */	addi r4, r1, 0x28
/* 806D98DC  38 A0 00 00 */	li r5, 0
/* 806D98E0  38 C0 FF FF */	li r6, -1
/* 806D98E4  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806D98E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D98EC  7D 89 03 A6 */	mtctr r12
/* 806D98F0  4E 80 04 21 */	bctrl 
lbl_806D98F4:
/* 806D98F4  3B A0 00 01 */	li r29, 1
/* 806D98F8  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 806D98FC  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806D9900  A8 9C 06 6A */	lha r4, 0x66a(r28)
/* 806D9904  38 A0 00 02 */	li r5, 2
/* 806D9908  38 C0 08 00 */	li r6, 0x800
/* 806D990C  4B B9 6C FC */	b cLib_addCalcAngleS2__FPssss
/* 806D9910  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806D9914  38 80 00 01 */	li r4, 1
/* 806D9918  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D991C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D9920  40 82 00 18 */	bne lbl_806D9938
/* 806D9924  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806D9928  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D992C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D9930  41 82 00 08 */	beq lbl_806D9938
/* 806D9934  38 80 00 00 */	li r4, 0
lbl_806D9938:
/* 806D9938  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D993C  41 82 00 14 */	beq lbl_806D9950
/* 806D9940  38 00 00 02 */	li r0, 2
/* 806D9944  B0 1C 06 56 */	sth r0, 0x656(r28)
/* 806D9948  38 00 00 00 */	li r0, 0
/* 806D994C  B0 1C 06 58 */	sth r0, 0x658(r28)
lbl_806D9950:
/* 806D9950  A8 1C 06 B2 */	lha r0, 0x6b2(r28)
/* 806D9954  2C 00 00 00 */	cmpwi r0, 0
/* 806D9958  40 82 00 10 */	bne lbl_806D9968
/* 806D995C  A8 1C 06 B4 */	lha r0, 0x6b4(r28)
/* 806D9960  2C 00 00 64 */	cmpwi r0, 0x64
/* 806D9964  40 81 00 DC */	ble lbl_806D9A40
lbl_806D9968:
/* 806D9968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D996C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806D9970  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806D9974  38 00 00 FF */	li r0, 0xff
/* 806D9978  90 01 00 08 */	stw r0, 8(r1)
/* 806D997C  38 80 00 00 */	li r4, 0
/* 806D9980  90 81 00 0C */	stw r4, 0xc(r1)
/* 806D9984  38 00 FF FF */	li r0, -1
/* 806D9988  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D998C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D9990  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D9994  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806D9998  80 9C 0D 30 */	lwz r4, 0xd30(r28)
/* 806D999C  38 A0 00 00 */	li r5, 0
/* 806D99A0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008426@ha */
/* 806D99A4  38 C6 84 26 */	addi r6, r6, 0x8426 /* 0x00008426@l */
/* 806D99A8  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 806D99AC  39 00 00 00 */	li r8, 0
/* 806D99B0  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 806D99B4  3D 40 80 6E */	lis r10, base_sc@ha
/* 806D99B8  39 4A F3 08 */	addi r10, r10, base_sc@l
/* 806D99BC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806D99C0  4B 97 3B 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D99C4  90 7C 0D 30 */	stw r3, 0xd30(r28)
/* 806D99C8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806D99CC  38 00 00 FF */	li r0, 0xff
/* 806D99D0  90 01 00 08 */	stw r0, 8(r1)
/* 806D99D4  38 80 00 00 */	li r4, 0
/* 806D99D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 806D99DC  38 00 FF FF */	li r0, -1
/* 806D99E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D99E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D99E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D99EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806D99F0  80 9C 0D 34 */	lwz r4, 0xd34(r28)
/* 806D99F4  38 A0 00 00 */	li r5, 0
/* 806D99F8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008427@ha */
/* 806D99FC  38 C6 84 27 */	addi r6, r6, 0x8427 /* 0x00008427@l */
/* 806D9A00  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 806D9A04  39 00 00 00 */	li r8, 0
/* 806D9A08  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 806D9A0C  3D 40 80 6E */	lis r10, base_sc@ha
/* 806D9A10  39 4A F3 08 */	addi r10, r10, base_sc@l
/* 806D9A14  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 806D9A18  4B 97 3A B4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D9A1C  90 7C 0D 34 */	stw r3, 0xd34(r28)
/* 806D9A20  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806D9A24  38 63 02 10 */	addi r3, r3, 0x210
/* 806D9A28  80 9C 0D 30 */	lwz r4, 0xd30(r28)
/* 806D9A2C  4B 97 1E 88 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 806D9A30  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806D9A34  38 63 02 10 */	addi r3, r3, 0x210
/* 806D9A38  80 9C 0D 34 */	lwz r4, 0xd34(r28)
/* 806D9A3C  4B 97 1E 78 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_806D9A40:
/* 806D9A40  A8 7C 06 B2 */	lha r3, 0x6b2(r28)
/* 806D9A44  A8 1C 06 B4 */	lha r0, 0x6b4(r28)
/* 806D9A48  7C 03 02 14 */	add r0, r3, r0
/* 806D9A4C  B0 1C 06 B2 */	sth r0, 0x6b2(r28)
/* 806D9A50  7C 60 07 35 */	extsh. r0, r3
/* 806D9A54  40 80 00 3C */	bge lbl_806D9A90
/* 806D9A58  A8 1C 06 B2 */	lha r0, 0x6b2(r28)
/* 806D9A5C  2C 00 00 00 */	cmpwi r0, 0
/* 806D9A60  41 80 00 30 */	blt lbl_806D9A90
/* 806D9A64  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E8@ha */
/* 806D9A68  38 03 01 E8 */	addi r0, r3, 0x01E8 /* 0x000701E8@l */
/* 806D9A6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D9A70  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806D9A74  38 81 00 24 */	addi r4, r1, 0x24
/* 806D9A78  38 A0 00 00 */	li r5, 0
/* 806D9A7C  38 C0 FF FF */	li r6, -1
/* 806D9A80  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806D9A84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D9A88  7D 89 03 A6 */	mtctr r12
/* 806D9A8C  4E 80 04 21 */	bctrl 
lbl_806D9A90:
/* 806D9A90  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806D9A94  A8 9C 06 68 */	lha r4, 0x668(r28)
/* 806D9A98  38 A0 00 01 */	li r5, 1
/* 806D9A9C  38 C0 03 00 */	li r6, 0x300
/* 806D9AA0  4B B9 6B 68 */	b cLib_addCalcAngleS2__FPssss
/* 806D9AA4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 806D9AA8  FC 20 F8 90 */	fmr f1, f31
/* 806D9AAC  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 806D9AB0  FC 60 F0 90 */	fmr f3, f30
/* 806D9AB4  4B B9 5F 88 */	b cLib_addCalc2__FPffff
/* 806D9AB8  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806D9ABC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806D9AC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D9AC4  40 81 00 28 */	ble lbl_806D9AEC
/* 806D9AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D9ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D9AD0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D9AD4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 806D9AD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806D9ADC  40 82 00 10 */	bne lbl_806D9AEC
/* 806D9AE0  38 00 00 02 */	li r0, 2
/* 806D9AE4  98 1C 0D 1D */	stb r0, 0xd1d(r28)
/* 806D9AE8  48 00 01 6C */	b lbl_806D9C54
lbl_806D9AEC:
/* 806D9AEC  A8 1C 06 B4 */	lha r0, 0x6b4(r28)
/* 806D9AF0  2C 00 00 64 */	cmpwi r0, 0x64
/* 806D9AF4  40 81 01 60 */	ble lbl_806D9C54
/* 806D9AF8  C3 DE 00 78 */	lfs f30, 0x78(r30)
/* 806D9AFC  C3 FE 00 34 */	lfs f31, 0x34(r30)
/* 806D9B00  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806D9B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D9B08  4C 41 13 82 */	cror 2, 1, 2
/* 806D9B0C  40 82 00 0C */	bne lbl_806D9B18
/* 806D9B10  C3 DE 00 7C */	lfs f30, 0x7c(r30)
/* 806D9B14  C3 FE 00 70 */	lfs f31, 0x70(r30)
lbl_806D9B18:
/* 806D9B18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D9B1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D9B20  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806D9B24  7C 00 00 D0 */	neg r0, r0
/* 806D9B28  7C 04 07 34 */	extsh r4, r0
/* 806D9B2C  4B 93 28 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 806D9B30  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806D9B34  FC 20 00 50 */	fneg f1, f0
/* 806D9B38  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806D9B3C  FC 40 00 50 */	fneg f2, f0
/* 806D9B40  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806D9B44  FC 60 00 50 */	fneg f3, f0
/* 806D9B48  4B 93 32 54 */	b transM__14mDoMtx_stack_cFfff
/* 806D9B4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D9B50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D9B54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D9B58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D9B5C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806D9B60  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806D9B64  38 A1 00 38 */	addi r5, r1, 0x38
/* 806D9B68  4B C6 D2 04 */	b PSMTXMultVec
/* 806D9B6C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806D9B70  FC 00 02 10 */	fabs f0, f0
/* 806D9B74  FC 00 00 18 */	frsp f0, f0
/* 806D9B78  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 806D9B7C  40 80 00 28 */	bge lbl_806D9BA4
/* 806D9B80  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 806D9B84  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 806D9B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D9B8C  40 81 00 18 */	ble lbl_806D9BA4
/* 806D9B90  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 806D9B94  40 80 00 10 */	bge lbl_806D9BA4
/* 806D9B98  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806D9B9C  60 00 00 10 */	ori r0, r0, 0x10
/* 806D9BA0  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_806D9BA4:
/* 806D9BA4  88 1C 05 8D */	lbz r0, 0x58d(r28)
/* 806D9BA8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806D9BAC  41 82 00 54 */	beq lbl_806D9C00
/* 806D9BB0  88 1C 05 8D */	lbz r0, 0x58d(r28)
/* 806D9BB4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 806D9BB8  98 1C 05 8D */	stb r0, 0x58d(r28)
/* 806D9BBC  38 00 00 08 */	li r0, 8
/* 806D9BC0  B0 1C 06 56 */	sth r0, 0x656(r28)
/* 806D9BC4  38 00 00 00 */	li r0, 0
/* 806D9BC8  B0 1C 06 58 */	sth r0, 0x658(r28)
/* 806D9BCC  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha
/* 806D9BD0  93 83 06 18 */	stw r28, g_dComIfGoat_gameInfo@l(r3)
/* 806D9BD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701FD@ha */
/* 806D9BD8  38 03 01 FD */	addi r0, r3, 0x01FD /* 0x000701FD@l */
/* 806D9BDC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D9BE0  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806D9BE4  38 81 00 20 */	addi r4, r1, 0x20
/* 806D9BE8  38 A0 FF FF */	li r5, -1
/* 806D9BEC  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806D9BF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D9BF4  7D 89 03 A6 */	mtctr r12
/* 806D9BF8  4E 80 04 21 */	bctrl 
/* 806D9BFC  48 00 00 58 */	b lbl_806D9C54
lbl_806D9C00:
/* 806D9C00  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 806D9C04  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 806D9C08  80 03 00 30 */	lwz r0, 0x30(r3)
/* 806D9C0C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806D9C10  40 82 00 44 */	bne lbl_806D9C54
/* 806D9C14  88 1C 0D 1C */	lbz r0, 0xd1c(r28)
/* 806D9C18  7C 00 07 75 */	extsb. r0, r0
/* 806D9C1C  40 82 00 28 */	bne lbl_806D9C44
/* 806D9C20  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 806D9C24  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806D9C28  38 63 F2 D4 */	addi r3, r3, l_HIO@l
/* 806D9C2C  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 806D9C30  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806D9C34  EC 01 00 28 */	fsubs f0, f1, f0
/* 806D9C38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806D9C3C  4C 41 13 82 */	cror 2, 1, 2
/* 806D9C40  40 82 00 14 */	bne lbl_806D9C54
lbl_806D9C44:
/* 806D9C44  38 00 00 02 */	li r0, 2
/* 806D9C48  98 1C 0D 1D */	stb r0, 0xd1d(r28)
/* 806D9C4C  38 00 00 01 */	li r0, 1
/* 806D9C50  98 1C 0D 1C */	stb r0, 0xd1c(r28)
lbl_806D9C54:
/* 806D9C54  7F A3 EB 78 */	mr r3, r29
/* 806D9C58  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806D9C5C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806D9C60  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 806D9C64  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 806D9C68  39 61 00 60 */	addi r11, r1, 0x60
/* 806D9C6C  4B C8 85 B8 */	b _restgpr_28
/* 806D9C70  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806D9C74  7C 08 03 A6 */	mtlr r0
/* 806D9C78  38 21 00 80 */	addi r1, r1, 0x80
/* 806D9C7C  4E 80 00 20 */	blr 
