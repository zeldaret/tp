lbl_80B9D738:
/* 80B9D738  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B9D73C  7C 08 02 A6 */	mflr r0
/* 80B9D740  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B9D744  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B9D748  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B9D74C  7C 7F 1B 78 */	mr r31, r3
/* 80B9D750  88 83 05 C9 */	lbz r4, 0x5c9(r3)
/* 80B9D754  28 04 00 FF */	cmplwi r4, 0xff
/* 80B9D758  41 82 00 58 */	beq lbl_80B9D7B0
/* 80B9D75C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9D760  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9D764  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9D768  7C 05 07 74 */	extsb r5, r0
/* 80B9D76C  4B 49 7B F4 */	b isSwitch__10dSv_info_cCFii
/* 80B9D770  2C 03 00 00 */	cmpwi r3, 0
/* 80B9D774  41 82 00 3C */	beq lbl_80B9D7B0
/* 80B9D778  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D77C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B9D780  2C 04 00 FF */	cmpwi r4, 0xff
/* 80B9D784  41 82 00 18 */	beq lbl_80B9D79C
/* 80B9D788  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80B9D78C  38 A0 00 FF */	li r5, 0xff
/* 80B9D790  38 C0 00 01 */	li r6, 1
/* 80B9D794  4B 4A B1 AC */	b orderEvent__17dEvLib_callback_cFiii
/* 80B9D798  48 00 00 18 */	b lbl_80B9D7B0
lbl_80B9D79C:
/* 80B9D79C  7F E3 FB 78 */	mr r3, r31
/* 80B9D7A0  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80B9D7A4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B9D7A8  7D 89 03 A6 */	mtctr r12
/* 80B9D7AC  4E 80 04 21 */	bctrl 
lbl_80B9D7B0:
/* 80B9D7B0  38 7F 06 08 */	addi r3, r31, 0x608
/* 80B9D7B4  4B 4E 6C AC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80B9D7B8  28 03 00 00 */	cmplwi r3, 0
/* 80B9D7BC  41 82 01 C4 */	beq lbl_80B9D980
/* 80B9D7C0  38 7F 06 08 */	addi r3, r31, 0x608
/* 80B9D7C4  4B 4E 6D 84 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80B9D7C8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80B9D7CC  28 03 00 20 */	cmplwi r3, 0x20
/* 80B9D7D0  40 82 00 40 */	bne lbl_80B9D810
/* 80B9D7D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D7D8  54 04 46 3E */	srwi r4, r0, 0x18
/* 80B9D7DC  2C 04 00 FF */	cmpwi r4, 0xff
/* 80B9D7E0  41 82 00 18 */	beq lbl_80B9D7F8
/* 80B9D7E4  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 80B9D7E8  38 A0 00 FF */	li r5, 0xff
/* 80B9D7EC  38 C0 00 01 */	li r6, 1
/* 80B9D7F0  4B 4A B1 50 */	b orderEvent__17dEvLib_callback_cFiii
/* 80B9D7F4  48 00 01 8C */	b lbl_80B9D980
lbl_80B9D7F8:
/* 80B9D7F8  7F E3 FB 78 */	mr r3, r31
/* 80B9D7FC  81 9F 05 9C */	lwz r12, 0x59c(r31)
/* 80B9D800  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80B9D804  7D 89 03 A6 */	mtctr r12
/* 80B9D808  4E 80 04 21 */	bctrl 
/* 80B9D80C  48 00 01 74 */	b lbl_80B9D980
lbl_80B9D810:
/* 80B9D810  3C 03 FF C0 */	addis r0, r3, 0xffc0
/* 80B9D814  28 00 00 00 */	cmplwi r0, 0
/* 80B9D818  40 82 01 68 */	bne lbl_80B9D980
/* 80B9D81C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9D820  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B9D824  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80B9D828  38 80 00 00 */	li r4, 0
/* 80B9D82C  90 81 00 08 */	stw r4, 8(r1)
/* 80B9D830  38 00 FF FF */	li r0, -1
/* 80B9D834  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9D838  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9D83C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9D840  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9D844  38 80 00 00 */	li r4, 0
/* 80B9D848  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A8F@ha */
/* 80B9D84C  38 A5 8A 8F */	addi r5, r5, 0x8A8F /* 0x00008A8F@l */
/* 80B9D850  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80B9D854  38 E0 00 00 */	li r7, 0
/* 80B9D858  39 00 00 00 */	li r8, 0
/* 80B9D85C  39 20 00 00 */	li r9, 0
/* 80B9D860  39 40 00 FF */	li r10, 0xff
/* 80B9D864  3D 60 80 BA */	lis r11, lit_4027@ha
/* 80B9D868  C0 2B E9 60 */	lfs f1, lit_4027@l(r11)
/* 80B9D86C  4B 4A F2 24 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9D870  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80B9D874  38 80 00 00 */	li r4, 0
/* 80B9D878  90 81 00 08 */	stw r4, 8(r1)
/* 80B9D87C  38 00 FF FF */	li r0, -1
/* 80B9D880  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9D884  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9D888  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9D88C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9D890  38 80 00 00 */	li r4, 0
/* 80B9D894  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A90@ha */
/* 80B9D898  38 A5 8A 90 */	addi r5, r5, 0x8A90 /* 0x00008A90@l */
/* 80B9D89C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80B9D8A0  38 E0 00 00 */	li r7, 0
/* 80B9D8A4  39 00 00 00 */	li r8, 0
/* 80B9D8A8  39 20 00 00 */	li r9, 0
/* 80B9D8AC  39 40 00 FF */	li r10, 0xff
/* 80B9D8B0  3D 60 80 BA */	lis r11, lit_4027@ha
/* 80B9D8B4  C0 2B E9 60 */	lfs f1, lit_4027@l(r11)
/* 80B9D8B8  4B 4A F1 D8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9D8BC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80B9D8C0  38 80 00 00 */	li r4, 0
/* 80B9D8C4  90 81 00 08 */	stw r4, 8(r1)
/* 80B9D8C8  38 00 FF FF */	li r0, -1
/* 80B9D8CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9D8D0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9D8D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9D8D8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9D8DC  38 80 00 00 */	li r4, 0
/* 80B9D8E0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A91@ha */
/* 80B9D8E4  38 A5 8A 91 */	addi r5, r5, 0x8A91 /* 0x00008A91@l */
/* 80B9D8E8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80B9D8EC  38 E0 00 00 */	li r7, 0
/* 80B9D8F0  39 00 00 00 */	li r8, 0
/* 80B9D8F4  39 20 00 00 */	li r9, 0
/* 80B9D8F8  39 40 00 FF */	li r10, 0xff
/* 80B9D8FC  3D 60 80 BA */	lis r11, lit_4027@ha
/* 80B9D900  C0 2B E9 60 */	lfs f1, lit_4027@l(r11)
/* 80B9D904  4B 4A F1 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9D908  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B9D90C  7C 03 07 74 */	extsb r3, r0
/* 80B9D910  4B 48 F7 5C */	b dComIfGp_getReverb__Fi
/* 80B9D914  7C 67 1B 78 */	mr r7, r3
/* 80B9D918  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AD@ha */
/* 80B9D91C  38 03 02 AD */	addi r0, r3, 0x02AD /* 0x000802AD@l */
/* 80B9D920  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9D924  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9D928  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B9D92C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9D930  38 81 00 20 */	addi r4, r1, 0x20
/* 80B9D934  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B9D938  38 C0 00 00 */	li r6, 0
/* 80B9D93C  3D 00 80 BA */	lis r8, lit_4027@ha
/* 80B9D940  C0 28 E9 60 */	lfs f1, lit_4027@l(r8)
/* 80B9D944  FC 40 08 90 */	fmr f2, f1
/* 80B9D948  3D 00 80 BA */	lis r8, lit_4028@ha
/* 80B9D94C  C0 68 E9 64 */	lfs f3, lit_4028@l(r8)
/* 80B9D950  FC 80 18 90 */	fmr f4, f3
/* 80B9D954  39 00 00 00 */	li r8, 0
/* 80B9D958  4B 70 E0 2C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9D95C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B9D960  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B9D964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9D968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9D96C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B9D970  7C 05 07 74 */	extsb r5, r0
/* 80B9D974  4B 49 78 8C */	b onSwitch__10dSv_info_cFii
/* 80B9D978  7F E3 FB 78 */	mr r3, r31
/* 80B9D97C  4B 47 C3 00 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B9D980:
/* 80B9D980  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B9D984  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B9D988  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B9D98C  7C 08 03 A6 */	mtlr r0
/* 80B9D990  38 21 00 30 */	addi r1, r1, 0x30
/* 80B9D994  4E 80 00 20 */	blr 
