lbl_80CA9620:
/* 80CA9620  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CA9624  7C 08 02 A6 */	mflr r0
/* 80CA9628  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CA962C  39 61 00 50 */	addi r11, r1, 0x50
/* 80CA9630  4B 6B 8B AD */	bl _savegpr_29
/* 80CA9634  7C 7E 1B 78 */	mr r30, r3
/* 80CA9638  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA963C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA9640  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA9644  38 80 00 00 */	li r4, 0
/* 80CA9648  90 81 00 08 */	stw r4, 8(r1)
/* 80CA964C  38 00 FF FF */	li r0, -1
/* 80CA9650  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA9654  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA9658  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA965C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA9660  38 80 00 00 */	li r4, 0
/* 80CA9664  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A9A@ha */
/* 80CA9668  38 A5 8A 9A */	addi r5, r5, 0x8A9A /* 0x00008A9A@l */
/* 80CA966C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA9670  38 E0 00 00 */	li r7, 0
/* 80CA9674  39 00 00 00 */	li r8, 0
/* 80CA9678  39 20 00 00 */	li r9, 0
/* 80CA967C  39 40 00 FF */	li r10, 0xff
/* 80CA9680  3D 60 80 CB */	lis r11, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA9684  C0 2B 9B 78 */	lfs f1, lit_3655@l(r11)  /* 0x80CA9B78@l */
/* 80CA9688  4B 3A 34 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA968C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA9690  38 80 00 00 */	li r4, 0
/* 80CA9694  90 81 00 08 */	stw r4, 8(r1)
/* 80CA9698  38 00 FF FF */	li r0, -1
/* 80CA969C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA96A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA96A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA96A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA96AC  38 80 00 00 */	li r4, 0
/* 80CA96B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A9B@ha */
/* 80CA96B4  38 A5 8A 9B */	addi r5, r5, 0x8A9B /* 0x00008A9B@l */
/* 80CA96B8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA96BC  38 E0 00 00 */	li r7, 0
/* 80CA96C0  39 00 00 00 */	li r8, 0
/* 80CA96C4  39 20 00 00 */	li r9, 0
/* 80CA96C8  39 40 00 FF */	li r10, 0xff
/* 80CA96CC  3D 60 80 CB */	lis r11, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA96D0  C0 2B 9B 78 */	lfs f1, lit_3655@l(r11)  /* 0x80CA9B78@l */
/* 80CA96D4  4B 3A 33 BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA96D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA96DC  38 80 00 00 */	li r4, 0
/* 80CA96E0  90 81 00 08 */	stw r4, 8(r1)
/* 80CA96E4  38 00 FF FF */	li r0, -1
/* 80CA96E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA96EC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA96F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA96F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA96F8  38 80 00 00 */	li r4, 0
/* 80CA96FC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A9C@ha */
/* 80CA9700  38 A5 8A 9C */	addi r5, r5, 0x8A9C /* 0x00008A9C@l */
/* 80CA9704  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA9708  38 E0 00 00 */	li r7, 0
/* 80CA970C  39 00 00 00 */	li r8, 0
/* 80CA9710  39 20 00 00 */	li r9, 0
/* 80CA9714  39 40 00 FF */	li r10, 0xff
/* 80CA9718  3D 60 80 CB */	lis r11, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA971C  C0 2B 9B 78 */	lfs f1, lit_3655@l(r11)  /* 0x80CA9B78@l */
/* 80CA9720  4B 3A 33 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA9724  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA9728  38 80 00 00 */	li r4, 0
/* 80CA972C  90 81 00 08 */	stw r4, 8(r1)
/* 80CA9730  38 00 FF FF */	li r0, -1
/* 80CA9734  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA9738  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA973C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA9740  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA9744  38 80 00 00 */	li r4, 0
/* 80CA9748  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A9D@ha */
/* 80CA974C  38 A5 8A 9D */	addi r5, r5, 0x8A9D /* 0x00008A9D@l */
/* 80CA9750  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA9754  38 E0 00 00 */	li r7, 0
/* 80CA9758  39 00 00 00 */	li r8, 0
/* 80CA975C  39 20 00 00 */	li r9, 0
/* 80CA9760  39 40 00 FF */	li r10, 0xff
/* 80CA9764  3D 60 80 CB */	lis r11, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA9768  C0 2B 9B 78 */	lfs f1, lit_3655@l(r11)  /* 0x80CA9B78@l */
/* 80CA976C  4B 3A 33 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA9770  88 1E 09 3D */	lbz r0, 0x93d(r30)
/* 80CA9774  28 00 00 00 */	cmplwi r0, 0
/* 80CA9778  41 82 00 50 */	beq lbl_80CA97C8
/* 80CA977C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA9780  38 80 00 00 */	li r4, 0
/* 80CA9784  90 81 00 08 */	stw r4, 8(r1)
/* 80CA9788  38 00 FF FF */	li r0, -1
/* 80CA978C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA9790  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CA9794  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CA9798  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CA979C  38 80 00 00 */	li r4, 0
/* 80CA97A0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A9E@ha */
/* 80CA97A4  38 A5 8A 9E */	addi r5, r5, 0x8A9E /* 0x00008A9E@l */
/* 80CA97A8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80CA97AC  38 E0 00 00 */	li r7, 0
/* 80CA97B0  39 00 00 00 */	li r8, 0
/* 80CA97B4  39 20 00 00 */	li r9, 0
/* 80CA97B8  39 40 00 FF */	li r10, 0xff
/* 80CA97BC  3D 60 80 CB */	lis r11, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA97C0  C0 2B 9B 78 */	lfs f1, lit_3655@l(r11)  /* 0x80CA9B78@l */
/* 80CA97C4  4B 3A 32 CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CA97C8:
/* 80CA97C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CA97CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CA97D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CA97D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CA97D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80CA97DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CA97E0  3C 60 80 CB */	lis r3, lit_4186@ha /* 0x80CA9BF0@ha */
/* 80CA97E4  C0 03 9B F0 */	lfs f0, lit_4186@l(r3)  /* 0x80CA9BF0@l */
/* 80CA97E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CA97EC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CA97F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CA97F4  3C 60 80 CB */	lis r3, d_a_obj_onsenTaru__stringBase0@ha /* 0x80CA9BF4@ha */
/* 80CA97F8  38 83 9B F4 */	addi r4, r3, d_a_obj_onsenTaru__stringBase0@l /* 0x80CA9BF4@l */
/* 80CA97FC  38 64 00 09 */	addi r3, r4, 9
/* 80CA9800  38 84 00 10 */	addi r4, r4, 0x10
/* 80CA9804  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA9808  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA980C  3C A5 00 02 */	addis r5, r5, 2
/* 80CA9810  38 C0 00 80 */	li r6, 0x80
/* 80CA9814  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CA9818  4B 39 2B 65 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CA981C  7C 7D 1B 78 */	mr r29, r3
/* 80CA9820  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CA9824  7C 05 07 74 */	extsb r5, r0
/* 80CA9828  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA982C  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 80CA9830  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 80CA9834  90 01 00 08 */	stw r0, 8(r1)
/* 80CA9838  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80CA983C  38 00 00 00 */	li r0, 0
/* 80CA9840  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA9844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9848  38 01 00 20 */	addi r0, r1, 0x20
/* 80CA984C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CA9850  38 80 00 00 */	li r4, 0
/* 80CA9854  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A99@ha */
/* 80CA9858  38 A5 8A 99 */	addi r5, r5, 0x8A99 /* 0x00008A99@l */
/* 80CA985C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80CA9860  38 E0 00 00 */	li r7, 0
/* 80CA9864  39 00 00 00 */	li r8, 0
/* 80CA9868  39 20 00 00 */	li r9, 0
/* 80CA986C  39 40 00 FF */	li r10, 0xff
/* 80CA9870  3D 60 80 CB */	lis r11, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA9874  C0 2B 9B 78 */	lfs f1, lit_3655@l(r11)  /* 0x80CA9B78@l */
/* 80CA9878  4B 3A 32 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CA987C  28 03 00 00 */	cmplwi r3, 0
/* 80CA9880  41 82 00 20 */	beq lbl_80CA98A0
/* 80CA9884  7F A4 EB 78 */	mr r4, r29
/* 80CA9888  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CA988C  38 C0 00 03 */	li r6, 3
/* 80CA9890  38 E0 00 00 */	li r7, 0
/* 80CA9894  39 00 00 00 */	li r8, 0
/* 80CA9898  39 20 00 00 */	li r9, 0
/* 80CA989C  4B 3A 13 65 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
lbl_80CA98A0:
/* 80CA98A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80CA98A4  4B 6B 89 85 */	bl _restgpr_29
/* 80CA98A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CA98AC  7C 08 03 A6 */	mtlr r0
/* 80CA98B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80CA98B4  4E 80 00 20 */	blr 
