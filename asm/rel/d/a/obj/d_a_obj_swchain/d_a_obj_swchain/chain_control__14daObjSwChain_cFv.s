lbl_80CF9500:
/* 80CF9500  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80CF9504  7C 08 02 A6 */	mflr r0
/* 80CF9508  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80CF950C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80CF9510  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80CF9514  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80CF9518  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80CF951C  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80CF9520  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80CF9524  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80CF9528  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80CF952C  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80CF9530  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80CF9534  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80CF9538  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80CF953C  39 61 00 80 */	addi r11, r1, 0x80
/* 80CF9540  4B 66 8C 8D */	bl _savegpr_25
/* 80CF9544  7C 79 1B 78 */	mr r25, r3
/* 80CF9548  3C 60 80 D0 */	lis r3, lit_3734@ha /* 0x80CFB6EC@ha */
/* 80CF954C  3B E3 B6 EC */	addi r31, r3, lit_3734@l /* 0x80CFB6EC@l */
/* 80CF9550  83 59 0A 74 */	lwz r26, 0xa74(r25)
/* 80CF9554  3B 7A 00 34 */	addi r27, r26, 0x34
/* 80CF9558  C3 5F 00 3C */	lfs f26, 0x3c(r31)
/* 80CF955C  88 19 0A 62 */	lbz r0, 0xa62(r25)
/* 80CF9560  28 00 00 00 */	cmplwi r0, 0
/* 80CF9564  41 82 00 60 */	beq lbl_80CF95C4
/* 80CF9568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF956C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF9570  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CF9574  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CF9578  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80CF957C  7D 89 03 A6 */	mtctr r12
/* 80CF9580  4E 80 04 21 */	bctrl 
/* 80CF9584  2C 03 00 00 */	cmpwi r3, 0
/* 80CF9588  41 82 00 24 */	beq lbl_80CF95AC
/* 80CF958C  C0 39 0A 90 */	lfs f1, 0xa90(r25)
/* 80CF9590  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CF9594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9598  40 81 00 2C */	ble lbl_80CF95C4
/* 80CF959C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CF95A0  EF 5A 00 32 */	fmuls f26, f26, f0
/* 80CF95A4  48 00 00 20 */	b lbl_80CF95C4
/* 80CF95A8  48 00 00 1C */	b lbl_80CF95C4
lbl_80CF95AC:
/* 80CF95AC  C0 39 0A 90 */	lfs f1, 0xa90(r25)
/* 80CF95B0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80CF95B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF95B8  40 81 00 0C */	ble lbl_80CF95C4
/* 80CF95BC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80CF95C0  EF 5A 00 32 */	fmuls f26, f26, f0
lbl_80CF95C4:
/* 80CF95C4  38 79 0A 94 */	addi r3, r25, 0xa94
/* 80CF95C8  FC 20 D0 90 */	fmr f1, f26
/* 80CF95CC  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80CF95D0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80CF95D4  FC 80 10 90 */	fmr f4, f2
/* 80CF95D8  4B 57 63 A5 */	bl cLib_addCalc__FPfffff
/* 80CF95DC  C0 19 0A 94 */	lfs f0, 0xa94(r25)
/* 80CF95E0  D0 19 05 30 */	stfs f0, 0x530(r25)
/* 80CF95E4  7F 23 CB 78 */	mr r3, r25
/* 80CF95E8  48 00 1E 69 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF95EC  1C 03 00 50 */	mulli r0, r3, 0x50
/* 80CF95F0  7F BA 02 14 */	add r29, r26, r0
/* 80CF95F4  7F 23 CB 78 */	mr r3, r25
/* 80CF95F8  48 00 1E 59 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF95FC  7C 7A 1B 78 */	mr r26, r3
/* 80CF9600  3C 60 80 3F */	lis r3, mGndCheck__11fopAcM_gc_c@ha /* 0x803F1CC4@ha */
/* 80CF9604  38 63 1C C4 */	addi r3, r3, mGndCheck__11fopAcM_gc_c@l /* 0x803F1CC4@l */
/* 80CF9608  3B C3 00 14 */	addi r30, r3, 0x14
/* 80CF960C  C3 BF 00 54 */	lfs f29, 0x54(r31)
/* 80CF9610  C3 DF 00 00 */	lfs f30, 0(r31)
/* 80CF9614  C3 7F 00 08 */	lfs f27, 8(r31)
/* 80CF9618  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80CF961C  EF FB 00 28 */	fsubs f31, f27, f0
/* 80CF9620  48 00 03 48 */	b lbl_80CF9968
lbl_80CF9624:
/* 80CF9624  3B 9D 00 34 */	addi r28, r29, 0x34
/* 80CF9628  C0 19 0A 94 */	lfs f0, 0xa94(r25)
/* 80CF962C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80CF9630  C3 9D 00 38 */	lfs f28, 0x38(r29)
/* 80CF9634  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80CF9638  EC 1C 00 2A */	fadds f0, f28, f0
/* 80CF963C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80CF9640  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80CF9644  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CF9648  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 80CF964C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80CF9650  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 80CF9654  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CF9658  EC 01 E8 2A */	fadds f0, f1, f29
/* 80CF965C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CF9660  38 00 00 00 */	li r0, 0
/* 80CF9664  98 1D 00 4C */	stb r0, 0x4c(r29)
/* 80CF9668  38 61 00 48 */	addi r3, r1, 0x48
/* 80CF966C  4B 32 46 51 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CF9670  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF9674  41 82 00 4C */	beq lbl_80CF96C0
/* 80CF9678  7F C3 F3 78 */	mr r3, r30
/* 80CF967C  4B FF F0 5D */	bl GetActorName__FR13cBgS_PolyInfo
/* 80CF9680  7C 60 07 34 */	extsh r0, r3
/* 80CF9684  2C 00 00 A9 */	cmpwi r0, 0xa9
/* 80CF9688  41 82 00 38 */	beq lbl_80CF96C0
/* 80CF968C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CF9690  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80CF9694  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80CF9698  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF969C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CF96A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF96A4  40 81 00 30 */	ble lbl_80CF96D4
/* 80CF96A8  D0 3C 00 04 */	stfs f1, 4(r28)
/* 80CF96AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF96B0  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80CF96B4  38 00 00 01 */	li r0, 1
/* 80CF96B8  98 1D 00 4C */	stb r0, 0x4c(r29)
/* 80CF96BC  48 00 00 18 */	b lbl_80CF96D4
lbl_80CF96C0:
/* 80CF96C0  D3 9C 00 04 */	stfs f28, 4(r28)
/* 80CF96C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF96C8  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80CF96CC  38 00 00 01 */	li r0, 1
/* 80CF96D0  98 1D 00 4C */	stb r0, 0x4c(r29)
lbl_80CF96D4:
/* 80CF96D4  88 1D 00 4C */	lbz r0, 0x4c(r29)
/* 80CF96D8  28 00 00 00 */	cmplwi r0, 0
/* 80CF96DC  40 82 00 88 */	bne lbl_80CF9764
/* 80CF96E0  7F 23 CB 78 */	mr r3, r25
/* 80CF96E4  48 00 1D 6D */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF96E8  7C 1A 18 00 */	cmpw r26, r3
/* 80CF96EC  41 82 00 28 */	beq lbl_80CF9714
/* 80CF96F0  88 1D FF FC */	lbz r0, -4(r29)
/* 80CF96F4  28 00 00 00 */	cmplwi r0, 0
/* 80CF96F8  41 82 00 1C */	beq lbl_80CF9714
/* 80CF96FC  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80CF9700  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CF9704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF9708  4C 41 13 82 */	cror 2, 1, 2
/* 80CF970C  40 82 00 08 */	bne lbl_80CF9714
/* 80CF9710  D3 9C 00 04 */	stfs f28, 4(r28)
lbl_80CF9714:
/* 80CF9714  7F A4 EB 78 */	mr r4, r29
/* 80CF9718  7F 45 D3 78 */	mr r5, r26
/* 80CF971C  88 79 0A 65 */	lbz r3, 0xa65(r25)
/* 80CF9720  7C 1A 18 50 */	subf r0, r26, r3
/* 80CF9724  7C 09 03 A6 */	mtctr r0
/* 80CF9728  7C 1A 18 00 */	cmpw r26, r3
/* 80CF972C  40 80 00 38 */	bge lbl_80CF9764
lbl_80CF9730:
/* 80CF9730  88 04 00 9C */	lbz r0, 0x9c(r4)
/* 80CF9734  28 00 00 00 */	cmplwi r0, 0
/* 80CF9738  38 84 00 50 */	addi r4, r4, 0x50
/* 80CF973C  41 82 00 20 */	beq lbl_80CF975C
/* 80CF9740  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 80CF9744  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CF9748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF974C  4C 41 13 82 */	cror 2, 1, 2
/* 80CF9750  40 82 00 0C */	bne lbl_80CF975C
/* 80CF9754  D3 9C 00 04 */	stfs f28, 4(r28)
/* 80CF9758  48 00 00 0C */	b lbl_80CF9764
lbl_80CF975C:
/* 80CF975C  38 A5 00 01 */	addi r5, r5, 1
/* 80CF9760  42 00 FF D0 */	bdnz lbl_80CF9730
lbl_80CF9764:
/* 80CF9764  38 61 00 30 */	addi r3, r1, 0x30
/* 80CF9768  7F 84 E3 78 */	mr r4, r28
/* 80CF976C  7F 65 DB 78 */	mr r5, r27
/* 80CF9770  4B 56 D3 C5 */	bl __mi__4cXyzCFRC3Vec
/* 80CF9774  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CF9778  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CF977C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CF9780  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CF9784  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CF9788  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CF978C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CF9790  4B 64 D9 A9 */	bl PSVECSquareMag
/* 80CF9794  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80CF9798  40 81 00 58 */	ble lbl_80CF97F0
/* 80CF979C  FC 00 08 34 */	frsqrte f0, f1
/* 80CF97A0  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80CF97A4  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF97A8  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80CF97AC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF97B0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF97B4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF97B8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF97BC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF97C0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF97C4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF97C8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF97CC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF97D0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CF97D4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CF97D8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CF97DC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CF97E0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CF97E4  FF 41 00 32 */	fmul f26, f1, f0
/* 80CF97E8  FF 40 D0 18 */	frsp f26, f26
/* 80CF97EC  48 00 00 90 */	b lbl_80CF987C
lbl_80CF97F0:
/* 80CF97F0  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80CF97F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF97F8  40 80 00 10 */	bge lbl_80CF9808
/* 80CF97FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CF9800  C3 43 0A E0 */	lfs f26, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CF9804  48 00 00 78 */	b lbl_80CF987C
lbl_80CF9808:
/* 80CF9808  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CF980C  80 81 00 08 */	lwz r4, 8(r1)
/* 80CF9810  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CF9814  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CF9818  7C 03 00 00 */	cmpw r3, r0
/* 80CF981C  41 82 00 14 */	beq lbl_80CF9830
/* 80CF9820  40 80 00 40 */	bge lbl_80CF9860
/* 80CF9824  2C 03 00 00 */	cmpwi r3, 0
/* 80CF9828  41 82 00 20 */	beq lbl_80CF9848
/* 80CF982C  48 00 00 34 */	b lbl_80CF9860
lbl_80CF9830:
/* 80CF9830  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF9834  41 82 00 0C */	beq lbl_80CF9840
/* 80CF9838  38 00 00 01 */	li r0, 1
/* 80CF983C  48 00 00 28 */	b lbl_80CF9864
lbl_80CF9840:
/* 80CF9840  38 00 00 02 */	li r0, 2
/* 80CF9844  48 00 00 20 */	b lbl_80CF9864
lbl_80CF9848:
/* 80CF9848  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CF984C  41 82 00 0C */	beq lbl_80CF9858
/* 80CF9850  38 00 00 05 */	li r0, 5
/* 80CF9854  48 00 00 10 */	b lbl_80CF9864
lbl_80CF9858:
/* 80CF9858  38 00 00 03 */	li r0, 3
/* 80CF985C  48 00 00 08 */	b lbl_80CF9864
lbl_80CF9860:
/* 80CF9860  38 00 00 04 */	li r0, 4
lbl_80CF9864:
/* 80CF9864  2C 00 00 01 */	cmpwi r0, 1
/* 80CF9868  40 82 00 10 */	bne lbl_80CF9878
/* 80CF986C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CF9870  C3 43 0A E0 */	lfs f26, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CF9874  48 00 00 08 */	b lbl_80CF987C
lbl_80CF9878:
/* 80CF9878  FF 40 08 90 */	fmr f26, f1
lbl_80CF987C:
/* 80CF987C  38 61 00 24 */	addi r3, r1, 0x24
/* 80CF9880  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CF9884  4B 56 D6 C5 */	bl normalizeZP__4cXyzFv
/* 80CF9888  88 79 0A 65 */	lbz r3, 0xa65(r25)
/* 80CF988C  38 03 FF FF */	addi r0, r3, -1
/* 80CF9890  7C 1A 00 00 */	cmpw r26, r0
/* 80CF9894  FC 1A F8 40 */	fcmpo cr0, f26, f31
/* 80CF9898  4C 40 13 82 */	cror 2, 0, 2
/* 80CF989C  40 82 00 08 */	bne lbl_80CF98A4
/* 80CF98A0  FF 40 F8 90 */	fmr f26, f31
lbl_80CF98A4:
/* 80CF98A4  FC 1A D8 40 */	fcmpo cr0, f26, f27
/* 80CF98A8  40 81 00 08 */	ble lbl_80CF98B0
/* 80CF98AC  FF 40 D8 90 */	fmr f26, f27
lbl_80CF98B0:
/* 80CF98B0  38 61 00 18 */	addi r3, r1, 0x18
/* 80CF98B4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CF98B8  FC 20 D0 90 */	fmr f1, f26
/* 80CF98BC  4B 56 D2 C9 */	bl __ml__4cXyzCFf
/* 80CF98C0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF98C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CF98C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CF98CC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CF98D0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CF98D4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CF98D8  7F 23 CB 78 */	mr r3, r25
/* 80CF98DC  48 00 1B 75 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF98E0  7C 1A 18 00 */	cmpw r26, r3
/* 80CF98E4  41 82 00 30 */	beq lbl_80CF9914
/* 80CF98E8  38 61 00 0C */	addi r3, r1, 0xc
/* 80CF98EC  7F 64 DB 78 */	mr r4, r27
/* 80CF98F0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80CF98F4  4B 56 D1 F1 */	bl __pl__4cXyzCFRC3Vec
/* 80CF98F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CF98FC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80CF9900  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF9904  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CF9908  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF990C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80CF9910  48 00 00 08 */	b lbl_80CF9918
lbl_80CF9914:
/* 80CF9914  D3 9C 00 04 */	stfs f28, 4(r28)
lbl_80CF9918:
/* 80CF9918  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80CF991C  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80CF9920  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CF9924  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80CF9928  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80CF992C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80CF9930  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80CF9934  FC 00 02 10 */	fabs f0, f0
/* 80CF9938  FC 20 00 18 */	frsp f1, f0
/* 80CF993C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CF9940  EC 1C 00 28 */	fsubs f0, f28, f0
/* 80CF9944  FC 00 02 10 */	fabs f0, f0
/* 80CF9948  FC 00 00 18 */	frsp f0, f0
/* 80CF994C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CF9950  40 80 00 0C */	bge lbl_80CF995C
/* 80CF9954  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF9958  D0 1D 00 48 */	stfs f0, 0x48(r29)
lbl_80CF995C:
/* 80CF995C  7F 9B E3 78 */	mr r27, r28
/* 80CF9960  3B BD 00 50 */	addi r29, r29, 0x50
/* 80CF9964  3B 5A 00 01 */	addi r26, r26, 1
lbl_80CF9968:
/* 80CF9968  88 79 0A 65 */	lbz r3, 0xa65(r25)
/* 80CF996C  38 03 00 01 */	addi r0, r3, 1
/* 80CF9970  7C 1A 00 00 */	cmpw r26, r0
/* 80CF9974  41 80 FC B0 */	blt lbl_80CF9624
/* 80CF9978  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80CF997C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80CF9980  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80CF9984  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80CF9988  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80CF998C  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80CF9990  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80CF9994  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80CF9998  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80CF999C  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80CF99A0  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80CF99A4  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80CF99A8  39 61 00 80 */	addi r11, r1, 0x80
/* 80CF99AC  4B 66 88 6D */	bl _restgpr_25
/* 80CF99B0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80CF99B4  7C 08 03 A6 */	mtlr r0
/* 80CF99B8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80CF99BC  4E 80 00 20 */	blr 
