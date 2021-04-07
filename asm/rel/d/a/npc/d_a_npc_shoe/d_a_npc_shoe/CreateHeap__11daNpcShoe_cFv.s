lbl_80AE7FD8:
/* 80AE7FD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AE7FDC  7C 08 02 A6 */	mflr r0
/* 80AE7FE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE7FE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE7FE8  4B 87 A1 F1 */	bl _savegpr_28
/* 80AE7FEC  7C 7C 1B 78 */	mr r28, r3
/* 80AE7FF0  3C 60 80 AF */	lis r3, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE7FF4  3B E3 A3 B0 */	addi r31, r3, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE7FF8  3C 60 80 AF */	lis r3, l_arcNames@ha /* 0x80AEA5A0@ha */
/* 80AE7FFC  38 63 A5 A0 */	addi r3, r3, l_arcNames@l /* 0x80AEA5A0@l */
/* 80AE8000  80 63 00 00 */	lwz r3, 0(r3)
/* 80AE8004  38 80 00 08 */	li r4, 8
/* 80AE8008  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE800C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE8010  3F A5 00 02 */	addis r29, r5, 2
/* 80AE8014  3B BD C2 F8 */	addi r29, r29, -15624
/* 80AE8018  7F A5 EB 78 */	mr r5, r29
/* 80AE801C  38 C0 00 80 */	li r6, 0x80
/* 80AE8020  4B 55 42 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AE8024  7C 7E 1B 78 */	mr r30, r3
/* 80AE8028  38 60 00 58 */	li r3, 0x58
/* 80AE802C  4B 7E 6C 21 */	bl __nw__FUl
/* 80AE8030  7C 60 1B 79 */	or. r0, r3, r3
/* 80AE8034  41 82 00 48 */	beq lbl_80AE807C
/* 80AE8038  38 1C 0B 50 */	addi r0, r28, 0xb50
/* 80AE803C  90 01 00 08 */	stw r0, 8(r1)
/* 80AE8040  3C 00 00 08 */	lis r0, 8
/* 80AE8044  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE8048  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80AE804C  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80AE8050  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE8054  7F C4 F3 78 */	mr r4, r30
/* 80AE8058  38 A0 00 00 */	li r5, 0
/* 80AE805C  38 C0 00 00 */	li r6, 0
/* 80AE8060  38 E0 00 00 */	li r7, 0
/* 80AE8064  39 00 FF FF */	li r8, -1
/* 80AE8068  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AE806C  39 20 00 00 */	li r9, 0
/* 80AE8070  39 40 FF FF */	li r10, -1
/* 80AE8074  4B 52 87 5D */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AE8078  7C 60 1B 78 */	mr r0, r3
lbl_80AE807C:
/* 80AE807C  90 1C 05 68 */	stw r0, 0x568(r28)
/* 80AE8080  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AE8084  28 03 00 00 */	cmplwi r3, 0
/* 80AE8088  41 82 00 1C */	beq lbl_80AE80A4
/* 80AE808C  80 03 00 04 */	lwz r0, 4(r3)
/* 80AE8090  28 00 00 00 */	cmplwi r0, 0
/* 80AE8094  40 82 00 10 */	bne lbl_80AE80A4
/* 80AE8098  4B 52 92 79 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AE809C  38 00 00 00 */	li r0, 0
/* 80AE80A0  90 1C 05 68 */	stw r0, 0x568(r28)
lbl_80AE80A4:
/* 80AE80A4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AE80A8  28 03 00 00 */	cmplwi r3, 0
/* 80AE80AC  40 82 00 0C */	bne lbl_80AE80B8
/* 80AE80B0  38 60 00 00 */	li r3, 0
/* 80AE80B4  48 00 01 1C */	b lbl_80AE81D0
lbl_80AE80B8:
/* 80AE80B8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AE80BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80AE80C0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AE80C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AE80C8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80AE80CC  38 00 00 01 */	li r0, 1
/* 80AE80D0  98 03 00 54 */	stb r0, 0x54(r3)
/* 80AE80D4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AE80D8  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80AE80DC  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80AE80E0  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80AE80E4  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AE80E8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AE80EC  38 C0 00 00 */	li r6, 0
/* 80AE80F0  3C 60 80 AF */	lis r3, ctrlJointCallBack__11daNpcShoe_cFP8J3DJointi@ha /* 0x80AE85B8@ha */
/* 80AE80F4  38 83 85 B8 */	addi r4, r3, ctrlJointCallBack__11daNpcShoe_cFP8J3DJointi@l /* 0x80AE85B8@l */
/* 80AE80F8  48 00 00 18 */	b lbl_80AE8110
lbl_80AE80FC:
/* 80AE80FC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AE8100  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AE8104  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AE8108  90 83 00 04 */	stw r4, 4(r3)
/* 80AE810C  38 C6 00 01 */	addi r6, r6, 1
lbl_80AE8110:
/* 80AE8110  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AE8114  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80AE8118  7C 03 00 40 */	cmplw r3, r0
/* 80AE811C  41 80 FF E0 */	blt lbl_80AE80FC
/* 80AE8120  93 85 00 14 */	stw r28, 0x14(r5)
/* 80AE8124  3C 60 80 AF */	lis r3, l_arcNames@ha /* 0x80AEA5A0@ha */
/* 80AE8128  38 63 A5 A0 */	addi r3, r3, l_arcNames@l /* 0x80AEA5A0@l */
/* 80AE812C  80 63 00 00 */	lwz r3, 0(r3)
/* 80AE8130  38 80 00 09 */	li r4, 9
/* 80AE8134  7F A5 EB 78 */	mr r5, r29
/* 80AE8138  38 C0 00 80 */	li r6, 0x80
/* 80AE813C  4B 55 41 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AE8140  3C 80 00 08 */	lis r4, 8
/* 80AE8144  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AE8148  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AE814C  4B 52 CB 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AE8150  90 7C 0B 48 */	stw r3, 0xb48(r28)
/* 80AE8154  80 1C 0B 48 */	lwz r0, 0xb48(r28)
/* 80AE8158  28 00 00 00 */	cmplwi r0, 0
/* 80AE815C  40 82 00 0C */	bne lbl_80AE8168
/* 80AE8160  38 60 00 00 */	li r3, 0
/* 80AE8164  48 00 00 6C */	b lbl_80AE81D0
lbl_80AE8168:
/* 80AE8168  3C 60 80 AF */	lis r3, l_arcNames@ha /* 0x80AEA5A0@ha */
/* 80AE816C  38 63 A5 A0 */	addi r3, r3, l_arcNames@l /* 0x80AEA5A0@l */
/* 80AE8170  80 63 00 08 */	lwz r3, 8(r3)
/* 80AE8174  38 80 00 04 */	li r4, 4
/* 80AE8178  7F A5 EB 78 */	mr r5, r29
/* 80AE817C  38 C0 00 80 */	li r6, 0x80
/* 80AE8180  4B 55 41 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AE8184  3C 80 00 08 */	lis r4, 8
/* 80AE8188  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AE818C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AE8190  4B 52 CA C5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AE8194  90 7C 0B 4C */	stw r3, 0xb4c(r28)
/* 80AE8198  80 1C 0B 4C */	lwz r0, 0xb4c(r28)
/* 80AE819C  28 00 00 00 */	cmplwi r0, 0
/* 80AE81A0  40 82 00 0C */	bne lbl_80AE81AC
/* 80AE81A4  38 60 00 00 */	li r3, 0
/* 80AE81A8  48 00 00 28 */	b lbl_80AE81D0
lbl_80AE81AC:
/* 80AE81AC  7F 83 E3 78 */	mr r3, r28
/* 80AE81B0  38 80 00 00 */	li r4, 0
/* 80AE81B4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80AE81B8  38 A0 00 00 */	li r5, 0
/* 80AE81BC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80AE81C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AE81C4  7D 89 03 A6 */	mtctr r12
/* 80AE81C8  4E 80 04 21 */	bctrl 
/* 80AE81CC  38 60 00 01 */	li r3, 1
lbl_80AE81D0:
/* 80AE81D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE81D4  4B 87 A0 51 */	bl _restgpr_28
/* 80AE81D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AE81DC  7C 08 03 A6 */	mtlr r0
/* 80AE81E0  38 21 00 40 */	addi r1, r1, 0x40
/* 80AE81E4  4E 80 00 20 */	blr 
