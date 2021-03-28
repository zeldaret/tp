lbl_804C955C:
/* 804C955C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804C9560  7C 08 02 A6 */	mflr r0
/* 804C9564  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804C9568  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804C956C  4B E9 8C 6C */	b _savegpr_28
/* 804C9570  7C 7E 1B 78 */	mr r30, r3
/* 804C9574  3C 60 80 4D */	lis r3, lit_3767@ha
/* 804C9578  3B E3 C3 40 */	addi r31, r3, lit_3767@l
/* 804C957C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C9580  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 804C9584  83 9D 5D B4 */	lwz r28, 0x5db4(r29)
/* 804C9588  38 7E 0B B0 */	addi r3, r30, 0xbb0
/* 804C958C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804C9590  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 804C9594  4B DA 71 AC */	b cLib_chaseF__FPfff
/* 804C9598  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C959C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 804C95A0  41 82 00 0C */	beq lbl_804C95AC
/* 804C95A4  7F C3 F3 78 */	mr r3, r30
/* 804C95A8  4B FF F2 49 */	bl setHookshotOffset__9daNbomb_cFv
lbl_804C95AC:
/* 804C95AC  80 7E 04 9C */	lwz r3, 0x49c(r30)
/* 804C95B0  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804C95B4  40 82 02 6C */	bne lbl_804C9820
/* 804C95B8  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 804C95BC  40 82 02 64 */	bne lbl_804C9820
/* 804C95C0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804C95C4  28 00 00 02 */	cmplwi r0, 2
/* 804C95C8  40 82 00 3C */	bne lbl_804C9604
/* 804C95CC  7F 83 E3 78 */	mr r3, r28
/* 804C95D0  7F C4 F3 78 */	mr r4, r30
/* 804C95D4  38 A0 00 00 */	li r5, 0
/* 804C95D8  38 C0 00 01 */	li r6, 1
/* 804C95DC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804C95E0  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 804C95E4  7D 89 03 A6 */	mtctr r12
/* 804C95E8  4E 80 04 21 */	bctrl 
/* 804C95EC  2C 03 00 00 */	cmpwi r3, 0
/* 804C95F0  41 82 00 14 */	beq lbl_804C9604
/* 804C95F4  7F C3 F3 78 */	mr r3, r30
/* 804C95F8  4B FF FD E9 */	bl procCarryInit__9daNbomb_cFv
/* 804C95FC  38 60 00 01 */	li r3, 1
/* 804C9600  48 00 03 18 */	b lbl_804C9918
lbl_804C9604:
/* 804C9604  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C9608  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C960C  41 82 02 00 */	beq lbl_804C980C
/* 804C9610  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804C9614  28 00 00 02 */	cmplwi r0, 2
/* 804C9618  41 82 01 C4 */	beq lbl_804C97DC
/* 804C961C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804C9620  38 63 00 24 */	addi r3, r3, 0x24
/* 804C9624  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha
/* 804C9628  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l
/* 804C962C  38 BE 0B F0 */	addi r5, r30, 0xbf0
/* 804C9630  4B E7 D8 1C */	b PSMTXMultVecSR
/* 804C9634  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804C9638  38 63 00 24 */	addi r3, r3, 0x24
/* 804C963C  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 804C9640  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 804C9644  38 BE 0B FC */	addi r5, r30, 0xbfc
/* 804C9648  4B E7 D8 04 */	b PSMTXMultVecSR
/* 804C964C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804C9650  38 63 00 24 */	addi r3, r3, 0x24
/* 804C9654  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha
/* 804C9658  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l
/* 804C965C  38 BE 0C 08 */	addi r5, r30, 0xc08
/* 804C9660  4B E7 D7 EC */	b PSMTXMultVecSR
/* 804C9664  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804C9668  38 63 00 24 */	addi r3, r3, 0x24
/* 804C966C  38 9E 04 E4 */	addi r4, r30, 0x4e4
/* 804C9670  4B B4 35 90 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 804C9674  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 804C9678  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 804C967C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804C9680  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804C9684  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 804C9688  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804C968C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804C9690  38 9E 0B F0 */	addi r4, r30, 0xbf0
/* 804C9694  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804C9698  4B D9 D4 EC */	b __ml__4cXyzCFf
/* 804C969C  38 61 00 50 */	addi r3, r1, 0x50
/* 804C96A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804C96A4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 804C96A8  4B D9 D4 3C */	b __pl__4cXyzCFRC3Vec
/* 804C96AC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804C96B0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804C96B4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804C96B8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804C96BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804C96C0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804C96C4  38 61 00 44 */	addi r3, r1, 0x44
/* 804C96C8  38 9E 0B F0 */	addi r4, r30, 0xbf0
/* 804C96CC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804C96D0  4B D9 D4 B4 */	b __ml__4cXyzCFf
/* 804C96D4  38 61 00 38 */	addi r3, r1, 0x38
/* 804C96D8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804C96DC  38 A1 00 44 */	addi r5, r1, 0x44
/* 804C96E0  4B D9 D4 54 */	b __mi__4cXyzCFRC3Vec
/* 804C96E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804C96E8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804C96EC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804C96F0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804C96F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804C96F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C96FC  38 7E 0A A0 */	addi r3, r30, 0xaa0
/* 804C9700  38 81 00 80 */	addi r4, r1, 0x80
/* 804C9704  38 A1 00 74 */	addi r5, r1, 0x74
/* 804C9708  7F C6 F3 78 */	mr r6, r30
/* 804C970C  4B BA E6 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804C9710  7F C3 F3 78 */	mr r3, r30
/* 804C9714  4B FF F2 15 */	bl insectLineCheck__9daNbomb_cFv
/* 804C9718  2C 03 00 01 */	cmpwi r3, 1
/* 804C971C  40 82 00 18 */	bne lbl_804C9734
/* 804C9720  7F C3 F3 78 */	mr r3, r30
/* 804C9724  48 00 0F 65 */	bl procInsectMoveInit__9daNbomb_cFv
/* 804C9728  7F C3 F3 78 */	mr r3, r30
/* 804C972C  48 00 10 55 */	bl procInsectMove__9daNbomb_cFv
/* 804C9730  48 00 01 E8 */	b lbl_804C9918
lbl_804C9734:
/* 804C9734  38 61 00 2C */	addi r3, r1, 0x2c
/* 804C9738  38 9E 0B F0 */	addi r4, r30, 0xbf0
/* 804C973C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804C9740  4B D9 D4 44 */	b __ml__4cXyzCFf
/* 804C9744  38 61 00 20 */	addi r3, r1, 0x20
/* 804C9748  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804C974C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804C9750  4B D9 D3 E4 */	b __mi__4cXyzCFRC3Vec
/* 804C9754  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804C9758  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804C975C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804C9760  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804C9764  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804C9768  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804C976C  38 61 00 14 */	addi r3, r1, 0x14
/* 804C9770  38 9E 0B FC */	addi r4, r30, 0xbfc
/* 804C9774  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804C9778  4B D9 D4 0C */	b __ml__4cXyzCFf
/* 804C977C  38 61 00 08 */	addi r3, r1, 8
/* 804C9780  38 81 00 80 */	addi r4, r1, 0x80
/* 804C9784  38 A1 00 14 */	addi r5, r1, 0x14
/* 804C9788  4B D9 D3 AC */	b __mi__4cXyzCFRC3Vec
/* 804C978C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804C9790  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804C9794  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804C9798  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804C979C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804C97A0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804C97A4  38 7E 0A A0 */	addi r3, r30, 0xaa0
/* 804C97A8  38 81 00 80 */	addi r4, r1, 0x80
/* 804C97AC  38 A1 00 74 */	addi r5, r1, 0x74
/* 804C97B0  7F C6 F3 78 */	mr r6, r30
/* 804C97B4  4B BA E5 B0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804C97B8  7F C3 F3 78 */	mr r3, r30
/* 804C97BC  4B FF F1 6D */	bl insectLineCheck__9daNbomb_cFv
/* 804C97C0  2C 03 00 01 */	cmpwi r3, 1
/* 804C97C4  40 82 00 18 */	bne lbl_804C97DC
/* 804C97C8  7F C3 F3 78 */	mr r3, r30
/* 804C97CC  48 00 0E BD */	bl procInsectMoveInit__9daNbomb_cFv
/* 804C97D0  7F C3 F3 78 */	mr r3, r30
/* 804C97D4  48 00 0F AD */	bl procInsectMove__9daNbomb_cFv
/* 804C97D8  48 00 01 40 */	b lbl_804C9918
lbl_804C97DC:
/* 804C97DC  7F C3 F3 78 */	mr r3, r30
/* 804C97E0  4B FF F1 11 */	bl checkWaterIn__9daNbomb_cFv
/* 804C97E4  2C 03 00 00 */	cmpwi r3, 0
/* 804C97E8  41 82 00 18 */	beq lbl_804C9800
/* 804C97EC  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C97F0  60 00 10 00 */	ori r0, r0, 0x1000
/* 804C97F4  90 1E 0B 4C */	stw r0, 0xb4c(r30)
/* 804C97F8  38 60 00 01 */	li r3, 1
/* 804C97FC  48 00 01 1C */	b lbl_804C9918
lbl_804C9800:
/* 804C9800  7F C3 F3 78 */	mr r3, r30
/* 804C9804  4B FF F4 F5 */	bl procExplodeInit__9daNbomb_cFv
/* 804C9808  48 00 01 10 */	b lbl_804C9918
lbl_804C980C:
/* 804C980C  7F C3 F3 78 */	mr r3, r30
/* 804C9810  48 00 01 21 */	bl procWaitInit__9daNbomb_cFv
/* 804C9814  7F C3 F3 78 */	mr r3, r30
/* 804C9818  48 00 01 6D */	bl procWait__9daNbomb_cFv
/* 804C981C  48 00 00 FC */	b lbl_804C9918
lbl_804C9820:
/* 804C9820  7F C3 F3 78 */	mr r3, r30
/* 804C9824  4B FF EA B5 */	bl checkExplode__9daNbomb_cFv
/* 804C9828  2C 03 00 00 */	cmpwi r3, 0
/* 804C982C  41 82 00 0C */	beq lbl_804C9838
/* 804C9830  38 60 00 01 */	li r3, 1
/* 804C9834  48 00 00 E4 */	b lbl_804C9918
lbl_804C9838:
/* 804C9838  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804C983C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804C9840  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804C9844  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804C9848  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804C984C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804C9850  38 7E 05 78 */	addi r3, r30, 0x578
/* 804C9854  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804C9858  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804C985C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804C9860  4B BA D2 4C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804C9864  7F C3 F3 78 */	mr r3, r30
/* 804C9868  4B FF EB C9 */	bl setRoomInfo__9daNbomb_cFv
/* 804C986C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804C9870  28 00 00 01 */	cmplwi r0, 1
/* 804C9874  40 82 00 64 */	bne lbl_804C98D8
/* 804C9878  28 1E 00 00 */	cmplwi r30, 0
/* 804C987C  41 82 00 0C */	beq lbl_804C9888
/* 804C9880  83 9E 00 04 */	lwz r28, 4(r30)
/* 804C9884  48 00 00 08 */	b lbl_804C988C
lbl_804C9888:
/* 804C9888  3B 80 FF FF */	li r28, -1
lbl_804C988C:
/* 804C988C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804C9890  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804C9894  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 804C9898  7D 89 03 A6 */	mtctr r12
/* 804C989C  4E 80 04 21 */	bctrl 
/* 804C98A0  7C 03 E0 40 */	cmplw r3, r28
/* 804C98A4  40 82 00 34 */	bne lbl_804C98D8
/* 804C98A8  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804C98AC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804C98B0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804C98B4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804C98B8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804C98BC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804C98C0  EC 42 00 28 */	fsubs f2, f2, f0
/* 804C98C4  38 80 00 00 */	li r4, 0
/* 804C98C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804C98CC  81 8C 01 24 */	lwz r12, 0x124(r12)
/* 804C98D0  7D 89 03 A6 */	mtctr r12
/* 804C98D4  4E 80 04 21 */	bctrl 
lbl_804C98D8:
/* 804C98D8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804C98DC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804C98E0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 804C98E4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804C98E8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804C98EC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804C98F0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804C98F4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804C98F8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 804C98FC  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 804C9900  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 804C9904  C0 03 00 04 */	lfs f0, 4(r3)
/* 804C9908  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804C990C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804C9910  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 804C9914  38 60 00 01 */	li r3, 1
lbl_804C9918:
/* 804C9918  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804C991C  4B E9 89 08 */	b _restgpr_28
/* 804C9920  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804C9924  7C 08 03 A6 */	mtlr r0
/* 804C9928  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804C992C  4E 80 00 20 */	blr 
