lbl_80693528:
/* 80693528  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8069352C  7C 08 02 A6 */	mflr r0
/* 80693530  90 01 00 84 */	stw r0, 0x84(r1)
/* 80693534  39 61 00 80 */	addi r11, r1, 0x80
/* 80693538  4B CC EC 8D */	bl _savegpr_23
/* 8069353C  7C 7E 1B 78 */	mr r30, r3
/* 80693540  3C 60 80 69 */	lis r3, lit_3788@ha /* 0x80694690@ha */
/* 80693544  3B E3 46 90 */	addi r31, r3, lit_3788@l /* 0x80694690@l */
/* 80693548  A8 7E 06 70 */	lha r3, 0x670(r30)
/* 8069354C  38 03 00 01 */	addi r0, r3, 1
/* 80693550  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80693554  38 60 00 00 */	li r3, 0
/* 80693558  38 00 00 04 */	li r0, 4
/* 8069355C  7C 09 03 A6 */	mtctr r0
lbl_80693560:
/* 80693560  38 A3 06 AC */	addi r5, r3, 0x6ac
/* 80693564  7C 9E 2A AE */	lhax r4, r30, r5
/* 80693568  2C 04 00 00 */	cmpwi r4, 0
/* 8069356C  41 82 00 0C */	beq lbl_80693578
/* 80693570  38 04 FF FF */	addi r0, r4, -1
/* 80693574  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80693578:
/* 80693578  38 63 00 02 */	addi r3, r3, 2
/* 8069357C  42 00 FF E4 */	bdnz lbl_80693560
/* 80693580  A8 7E 06 B4 */	lha r3, 0x6b4(r30)
/* 80693584  2C 03 00 00 */	cmpwi r3, 0
/* 80693588  41 82 00 0C */	beq lbl_80693594
/* 8069358C  38 03 FF FF */	addi r0, r3, -1
/* 80693590  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
lbl_80693594:
/* 80693594  7F C3 F3 78 */	mr r3, r30
/* 80693598  4B FF FA DD */	bl action__FP10e_bu_class
/* 8069359C  7C 7C 1B 78 */	mr r28, r3
/* 806935A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806935A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806935A8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806935AC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806935B0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 806935B4  4B CB 33 35 */	bl PSMTXTrans
/* 806935B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806935BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806935C0  A8 9E 06 B6 */	lha r4, 0x6b6(r30)
/* 806935C4  4B 97 8E 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 806935C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806935CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806935D0  A8 9E 06 BA */	lha r4, 0x6ba(r30)
/* 806935D4  4B 97 8D C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 806935D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806935DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806935E0  A8 1E 06 B6 */	lha r0, 0x6b6(r30)
/* 806935E4  7C 00 00 D0 */	neg r0, r0
/* 806935E8  7C 04 07 34 */	extsh r4, r0
/* 806935EC  4B 97 8E 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 806935F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806935F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806935F8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 806935FC  4B 97 8E 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 80693600  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80693604  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80693608  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 8069360C  4B 97 8E C1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80693610  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x80694968@ha */
/* 80693614  3B A3 49 68 */	addi r29, r3, l_HIO@l /* 0x80694968@l */
/* 80693618  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8069361C  FC 40 08 90 */	fmr f2, f1
/* 80693620  FC 60 08 90 */	fmr f3, f1
/* 80693624  4B 97 98 15 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80693628  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8069362C  80 83 00 04 */	lwz r4, 4(r3)
/* 80693630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80693634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80693638  38 84 00 24 */	addi r4, r4, 0x24
/* 8069363C  4B CB 2E 75 */	bl PSMTXCopy
/* 80693640  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80693644  7C 03 07 74 */	extsb r3, r0
/* 80693648  4B 99 9A 25 */	bl dComIfGp_getReverb__Fi
/* 8069364C  7C 65 1B 78 */	mr r5, r3
/* 80693650  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80693654  38 80 00 00 */	li r4, 0
/* 80693658  4B 97 DA 59 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8069365C  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 80693660  2C 00 00 07 */	cmpwi r0, 7
/* 80693664  40 82 00 8C */	bne lbl_806936F0
/* 80693668  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8069366C  38 63 00 0C */	addi r3, r3, 0xc
/* 80693670  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80693674  4B C9 4D B9 */	bl checkPass__12J3DFrameCtrlFf
/* 80693678  2C 03 00 00 */	cmpwi r3, 0
/* 8069367C  41 82 00 74 */	beq lbl_806936F0
/* 80693680  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80693684  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80693688  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8069368C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80693690  40 81 00 34 */	ble lbl_806936C4
/* 80693694  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070362@ha */
/* 80693698  38 03 03 62 */	addi r0, r3, 0x0362 /* 0x00070362@l */
/* 8069369C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806936A0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806936A4  38 81 00 28 */	addi r4, r1, 0x28
/* 806936A8  38 A0 00 00 */	li r5, 0
/* 806936AC  38 C0 FF FF */	li r6, -1
/* 806936B0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806936B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806936B8  7D 89 03 A6 */	mtctr r12
/* 806936BC  4E 80 04 21 */	bctrl 
/* 806936C0  48 00 00 30 */	b lbl_806936F0
lbl_806936C4:
/* 806936C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070361@ha */
/* 806936C8  38 03 03 61 */	addi r0, r3, 0x0361 /* 0x00070361@l */
/* 806936CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806936D0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806936D4  38 81 00 24 */	addi r4, r1, 0x24
/* 806936D8  38 A0 00 00 */	li r5, 0
/* 806936DC  38 C0 FF FF */	li r6, -1
/* 806936E0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806936E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806936E8  7D 89 03 A6 */	mtctr r12
/* 806936EC  4E 80 04 21 */	bctrl 
lbl_806936F0:
/* 806936F0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806936F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806936F8  FC 00 00 1E */	fctiwz f0, f0
/* 806936FC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80693700  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80693704  90 1E 06 6C */	stw r0, 0x66c(r30)
/* 80693708  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8069370C  4B 97 DA E1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80693710  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80693714  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80693718  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069371C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80693720  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80693724  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80693728  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 8069372C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80693730  EC 01 00 2A */	fadds f0, f1, f0
/* 80693734  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80693738  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8069373C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80693740  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80693744  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80693748  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8069374C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80693750  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80693754  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80693758  EC 01 00 2A */	fadds f0, f1, f0
/* 8069375C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80693760  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80693764  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80693768  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8069376C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80693770  38 61 00 44 */	addi r3, r1, 0x44
/* 80693774  38 81 00 38 */	addi r4, r1, 0x38
/* 80693778  4B BD D7 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069377C  A8 1E 06 B4 */	lha r0, 0x6b4(r30)
/* 80693780  2C 00 00 00 */	cmpwi r0, 0
/* 80693784  41 82 00 14 */	beq lbl_80693798
/* 80693788  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8069378C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80693790  EC 01 00 2A */	fadds f0, f1, f0
/* 80693794  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_80693798:
/* 80693798  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 8069379C  38 81 00 38 */	addi r4, r1, 0x38
/* 806937A0  4B BD BE A9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806937A4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 806937A8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806937AC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 806937B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806937B4  4B BD BF 55 */	bl SetR__8cM3dGSphFf
/* 806937B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806937BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806937C0  38 63 23 3C */	addi r3, r3, 0x233c
/* 806937C4  38 9E 09 20 */	addi r4, r30, 0x920
/* 806937C8  4B BD 13 E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806937CC  7F 80 07 75 */	extsb. r0, r28
/* 806937D0  41 82 02 44 */	beq lbl_80693A14
/* 806937D4  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 806937D8  28 00 00 00 */	cmplwi r0, 0
/* 806937DC  41 82 02 38 */	beq lbl_80693A14
/* 806937E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 806937E4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806937E8  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 806937EC  4B BD 33 49 */	bl __mi__4cXyzCFRC3Vec
/* 806937F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806937F4  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 806937F8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806937FC  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 80693800  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80693804  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 80693808  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 8069380C  7C 64 1B 78 */	mr r4, r3
/* 80693810  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80693814  4B CB 38 C5 */	bl PSVECScale
/* 80693818  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 8069381C  28 00 00 01 */	cmplwi r0, 1
/* 80693820  40 82 01 14 */	bne lbl_80693934
/* 80693824  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070369@ha */
/* 80693828  38 03 03 69 */	addi r0, r3, 0x0369 /* 0x00070369@l */
/* 8069382C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80693830  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80693834  38 81 00 20 */	addi r4, r1, 0x20
/* 80693838  38 A0 00 00 */	li r5, 0
/* 8069383C  38 C0 FF FF */	li r6, -1
/* 80693840  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80693844  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80693848  7D 89 03 A6 */	mtctr r12
/* 8069384C  4E 80 04 21 */	bctrl 
/* 80693850  3B 60 00 00 */	li r27, 0
/* 80693854  3B 20 00 00 */	li r25, 0
/* 80693858  3B 40 00 00 */	li r26, 0
/* 8069385C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80693860  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80693864  3B 9E 06 C0 */	addi r28, r30, 0x6c0
/* 80693868  3C 60 80 69 */	lis r3, fire_name@ha /* 0x80694840@ha */
/* 8069386C  3B 03 48 40 */	addi r24, r3, fire_name@l /* 0x80694840@l */
lbl_80693870:
/* 80693870  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80693874  38 00 00 FF */	li r0, 0xff
/* 80693878  90 01 00 08 */	stw r0, 8(r1)
/* 8069387C  38 80 00 00 */	li r4, 0
/* 80693880  90 81 00 0C */	stw r4, 0xc(r1)
/* 80693884  38 00 FF FF */	li r0, -1
/* 80693888  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069388C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80693890  90 81 00 18 */	stw r4, 0x18(r1)
/* 80693894  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80693898  3A FA 0A 84 */	addi r23, r26, 0xa84
/* 8069389C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806938A0  38 A0 00 00 */	li r5, 0
/* 806938A4  7C D8 CA 2E */	lhzx r6, r24, r25
/* 806938A8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 806938AC  39 00 00 00 */	li r8, 0
/* 806938B0  39 20 00 00 */	li r9, 0
/* 806938B4  39 40 00 00 */	li r10, 0
/* 806938B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806938BC  4B 9B 9C 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806938C0  7C 7E B9 2E */	stwx r3, r30, r23
/* 806938C4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806938C8  38 63 02 10 */	addi r3, r3, 0x210
/* 806938CC  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806938D0  4B 9B 80 49 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806938D4  7C 77 1B 79 */	or. r23, r3, r3
/* 806938D8  41 82 00 44 */	beq lbl_8069391C
/* 806938DC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806938E0  80 63 00 04 */	lwz r3, 4(r3)
/* 806938E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806938E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806938EC  38 97 00 68 */	addi r4, r23, 0x68
/* 806938F0  38 B7 00 98 */	addi r5, r23, 0x98
/* 806938F4  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806938F8  4B BE CF 11 */	bl func_80280808
/* 806938FC  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 80693900  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 80693904  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 80693908  D0 37 00 B4 */	stfs f1, 0xb4(r23)
/* 8069390C  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 80693910  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 80693914  90 17 00 F0 */	stw r0, 0xf0(r23)
/* 80693918  93 97 00 C0 */	stw r28, 0xc0(r23)
lbl_8069391C:
/* 8069391C  3B 7B 00 01 */	addi r27, r27, 1
/* 80693920  2C 1B 00 04 */	cmpwi r27, 4
/* 80693924  3B 39 00 02 */	addi r25, r25, 2
/* 80693928  3B 5A 00 04 */	addi r26, r26, 4
/* 8069392C  41 80 FF 44 */	blt lbl_80693870
/* 80693930  48 00 00 E4 */	b lbl_80693A14
lbl_80693934:
/* 80693934  3B 60 00 00 */	li r27, 0
/* 80693938  3B 40 00 00 */	li r26, 0
/* 8069393C  3B 20 00 00 */	li r25, 0
/* 80693940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80693944  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80693948  3B 9E 06 C0 */	addi r28, r30, 0x6c0
/* 8069394C  3C 60 80 69 */	lis r3, ice_name@ha /* 0x80694848@ha */
/* 80693950  3A E3 48 48 */	addi r23, r3, ice_name@l /* 0x80694848@l */
lbl_80693954:
/* 80693954  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80693958  38 00 00 FF */	li r0, 0xff
/* 8069395C  90 01 00 08 */	stw r0, 8(r1)
/* 80693960  38 80 00 00 */	li r4, 0
/* 80693964  90 81 00 0C */	stw r4, 0xc(r1)
/* 80693968  38 00 FF FF */	li r0, -1
/* 8069396C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80693970  90 81 00 14 */	stw r4, 0x14(r1)
/* 80693974  90 81 00 18 */	stw r4, 0x18(r1)
/* 80693978  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8069397C  3B 19 0A 84 */	addi r24, r25, 0xa84
/* 80693980  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80693984  38 A0 00 00 */	li r5, 0
/* 80693988  7C D7 D2 2E */	lhzx r6, r23, r26
/* 8069398C  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80693990  39 00 00 00 */	li r8, 0
/* 80693994  39 20 00 00 */	li r9, 0
/* 80693998  39 40 00 00 */	li r10, 0
/* 8069399C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806939A0  4B 9B 9B 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806939A4  7C 7E C1 2E */	stwx r3, r30, r24
/* 806939A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806939AC  38 63 02 10 */	addi r3, r3, 0x210
/* 806939B0  7C 9E C0 2E */	lwzx r4, r30, r24
/* 806939B4  4B 9B 7F 65 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806939B8  7C 78 1B 79 */	or. r24, r3, r3
/* 806939BC  41 82 00 44 */	beq lbl_80693A00
/* 806939C0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806939C4  80 63 00 04 */	lwz r3, 4(r3)
/* 806939C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806939CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806939D0  38 98 00 68 */	addi r4, r24, 0x68
/* 806939D4  38 B8 00 98 */	addi r5, r24, 0x98
/* 806939D8  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 806939DC  4B BE CE 2D */	bl func_80280808
/* 806939E0  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 806939E4  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 806939E8  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 806939EC  D0 38 00 B4 */	stfs f1, 0xb4(r24)
/* 806939F0  3C 60 80 45 */	lis r3, mParticleTracePCB__13dPa_control_c@ha /* 0x80450EC8@ha */
/* 806939F4  38 03 0E C8 */	addi r0, r3, mParticleTracePCB__13dPa_control_c@l /* 0x80450EC8@l */
/* 806939F8  90 18 00 F0 */	stw r0, 0xf0(r24)
/* 806939FC  93 98 00 C0 */	stw r28, 0xc0(r24)
lbl_80693A00:
/* 80693A00  3B 7B 00 01 */	addi r27, r27, 1
/* 80693A04  2C 1B 00 03 */	cmpwi r27, 3
/* 80693A08  3B 5A 00 02 */	addi r26, r26, 2
/* 80693A0C  3B 39 00 04 */	addi r25, r25, 4
/* 80693A10  41 80 FF 44 */	blt lbl_80693954
lbl_80693A14:
/* 80693A14  38 60 00 01 */	li r3, 1
/* 80693A18  39 61 00 80 */	addi r11, r1, 0x80
/* 80693A1C  4B CC E7 F5 */	bl _restgpr_23
/* 80693A20  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80693A24  7C 08 03 A6 */	mtlr r0
/* 80693A28  38 21 00 80 */	addi r1, r1, 0x80
/* 80693A2C  4E 80 00 20 */	blr 
