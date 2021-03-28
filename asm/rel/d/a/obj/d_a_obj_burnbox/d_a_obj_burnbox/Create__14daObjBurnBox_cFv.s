lbl_8046E738:
/* 8046E738  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8046E73C  7C 08 02 A6 */	mflr r0
/* 8046E740  90 01 00 64 */	stw r0, 0x64(r1)
/* 8046E744  39 61 00 60 */	addi r11, r1, 0x60
/* 8046E748  4B EF 3A 84 */	b _savegpr_25
/* 8046E74C  7C 7E 1B 78 */	mr r30, r3
/* 8046E750  3C 80 80 47 */	lis r4, l_bmd@ha
/* 8046E754  3B E4 EE 48 */	addi r31, r4, l_bmd@l
/* 8046E758  4B FF FF 41 */	bl initBaseMtx__14daObjBurnBox_cFv
/* 8046E75C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8046E760  38 03 00 24 */	addi r0, r3, 0x24
/* 8046E764  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8046E768  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8046E76C  38 80 00 FF */	li r4, 0xff
/* 8046E770  38 A0 00 FF */	li r5, 0xff
/* 8046E774  7F C6 F3 78 */	mr r6, r30
/* 8046E778  4B C1 50 E8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8046E77C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8046E780  38 9F 00 18 */	addi r4, r31, 0x18
/* 8046E784  4B C1 61 30 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8046E788  38 1E 05 AC */	addi r0, r30, 0x5ac
/* 8046E78C  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 8046E790  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 8046E794  80 83 00 04 */	lwz r4, 4(r3)
/* 8046E798  7F C3 F3 78 */	mr r3, r30
/* 8046E79C  4B BA BD DC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 8046E7A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8046E7A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8046E7A8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8046E7AC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8046E7B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8046E7B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8046E7B8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046E7BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8046E7C0  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8046E7C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8046E7C8  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8046E7CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8046E7D0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8046E7D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8046E7D8  2C 00 00 01 */	cmpwi r0, 1
/* 8046E7DC  41 82 00 40 */	beq lbl_8046E81C
/* 8046E7E0  40 80 00 10 */	bge lbl_8046E7F0
/* 8046E7E4  2C 00 00 00 */	cmpwi r0, 0
/* 8046E7E8  40 80 00 10 */	bge lbl_8046E7F8
/* 8046E7EC  48 00 00 3C */	b lbl_8046E828
lbl_8046E7F0:
/* 8046E7F0  2C 00 00 03 */	cmpwi r0, 3
/* 8046E7F4  40 80 00 34 */	bge lbl_8046E828
lbl_8046E7F8:
/* 8046E7F8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8046E7FC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8046E800  EC 01 00 2A */	fadds f0, f1, f0
/* 8046E804  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8046E808  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8046E80C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8046E810  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8046E814  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8046E818  48 00 00 10 */	b lbl_8046E828
lbl_8046E81C:
/* 8046E81C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8046E820  EC 01 00 2A */	fadds f0, f1, f0
/* 8046E824  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_8046E828:
/* 8046E828  3B 20 00 00 */	li r25, 0
/* 8046E82C  3B A0 00 00 */	li r29, 0
/* 8046E830  3B 80 00 00 */	li r28, 0
/* 8046E834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046E838  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8046E83C  3B 7F 00 5C */	addi r27, r31, 0x5c
lbl_8046E840:
/* 8046E840  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8046E844  38 80 00 00 */	li r4, 0
/* 8046E848  90 81 00 08 */	stw r4, 8(r1)
/* 8046E84C  38 00 FF FF */	li r0, -1
/* 8046E850  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046E854  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046E858  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046E85C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046E860  38 80 00 00 */	li r4, 0
/* 8046E864  7C BB E2 2E */	lhzx r5, r27, r28
/* 8046E868  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8046E86C  38 E0 00 00 */	li r7, 0
/* 8046E870  39 00 00 00 */	li r8, 0
/* 8046E874  39 21 00 20 */	addi r9, r1, 0x20
/* 8046E878  39 40 00 FF */	li r10, 0xff
/* 8046E87C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8046E880  4B BD E2 10 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046E884  38 1D 07 2C */	addi r0, r29, 0x72c
/* 8046E888  7C 7E 01 2E */	stwx r3, r30, r0
/* 8046E88C  3B 39 00 01 */	addi r25, r25, 1
/* 8046E890  2C 19 00 05 */	cmpwi r25, 5
/* 8046E894  3B BD 00 04 */	addi r29, r29, 4
/* 8046E898  3B 9C 00 02 */	addi r28, r28, 2
/* 8046E89C  41 80 FF A4 */	blt lbl_8046E840
/* 8046E8A0  38 60 00 01 */	li r3, 1
/* 8046E8A4  39 61 00 60 */	addi r11, r1, 0x60
/* 8046E8A8  4B EF 39 70 */	b _restgpr_25
/* 8046E8AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8046E8B0  7C 08 03 A6 */	mtlr r0
/* 8046E8B4  38 21 00 60 */	addi r1, r1, 0x60
/* 8046E8B8  4E 80 00 20 */	blr 
