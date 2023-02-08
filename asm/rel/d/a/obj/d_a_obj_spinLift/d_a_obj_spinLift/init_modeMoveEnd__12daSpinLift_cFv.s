lbl_80CE4790:
/* 80CE4790  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CE4794  7C 08 02 A6 */	mflr r0
/* 80CE4798  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CE479C  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE47A0  4B 67 DA 3D */	bl _savegpr_29
/* 80CE47A4  7C 7D 1B 78 */	mr r29, r3
/* 80CE47A8  3C 60 80 CE */	lis r3, lit_3637@ha /* 0x80CE4CBC@ha */
/* 80CE47AC  3B C3 4C BC */	addi r30, r3, lit_3637@l /* 0x80CE4CBC@l */
/* 80CE47B0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CE47B4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CE47B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE47BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE47C0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CE47C4  7C 05 07 74 */	extsb r5, r0
/* 80CE47C8  4B 35 0B 99 */	bl isSwitch__10dSv_info_cCFii
/* 80CE47CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CE47D0  40 82 02 AC */	bne lbl_80CE4A7C
/* 80CE47D4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CE47D8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CE47DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE47E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE47E4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CE47E8  7C 05 07 74 */	extsb r5, r0
/* 80CE47EC  4B 35 0A 15 */	bl onSwitch__10dSv_info_cFii
/* 80CE47F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A5@ha */
/* 80CE47F4  38 03 01 A5 */	addi r0, r3, 0x01A5 /* 0x000801A5@l */
/* 80CE47F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CE47FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CE4800  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CE4804  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE4808  38 81 00 20 */	addi r4, r1, 0x20
/* 80CE480C  38 A0 00 00 */	li r5, 0
/* 80CE4810  38 C0 00 00 */	li r6, 0
/* 80CE4814  38 E0 00 00 */	li r7, 0
/* 80CE4818  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE481C  FC 40 08 90 */	fmr f2, f1
/* 80CE4820  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 80CE4824  FC 80 18 90 */	fmr f4, f3
/* 80CE4828  39 00 00 00 */	li r8, 0
/* 80CE482C  4B 5C 71 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CE4830  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CE4834  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CE4838  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80CE483C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CE4840  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80CE4844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE4848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE484C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CE4850  3C 80 80 CE */	lis r4, l_HIO@ha /* 0x80CE4ED4@ha */
/* 80CE4854  38 84 4E D4 */	addi r4, r4, l_HIO@l /* 0x80CE4ED4@l */
/* 80CE4858  88 84 00 0C */	lbz r4, 0xc(r4)
/* 80CE485C  38 A0 00 0F */	li r5, 0xf
/* 80CE4860  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80CE4864  4B 38 B1 C1 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CE4868  80 1D 04 E4 */	lwz r0, 0x4e4(r29)
/* 80CE486C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE4870  A0 1D 04 E8 */	lhz r0, 0x4e8(r29)
/* 80CE4874  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80CE4878  38 80 00 00 */	li r4, 0
/* 80CE487C  B0 81 00 24 */	sth r4, 0x24(r1)
/* 80CE4880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE4884  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE4888  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE488C  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4890  38 00 FF FF */	li r0, -1
/* 80CE4894  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4898  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE489C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE48A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE48A4  38 80 00 00 */	li r4, 0
/* 80CE48A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD2@ha */
/* 80CE48AC  38 A5 8A D2 */	addi r5, r5, 0x8AD2 /* 0x00008AD2@l */
/* 80CE48B0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE48B4  38 E0 00 00 */	li r7, 0
/* 80CE48B8  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE48BC  39 20 00 00 */	li r9, 0
/* 80CE48C0  39 40 00 FF */	li r10, 0xff
/* 80CE48C4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE48C8  4B 36 81 C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE48CC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE48D0  38 80 00 00 */	li r4, 0
/* 80CE48D4  90 81 00 08 */	stw r4, 8(r1)
/* 80CE48D8  38 00 FF FF */	li r0, -1
/* 80CE48DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE48E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE48E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE48E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE48EC  38 80 00 00 */	li r4, 0
/* 80CE48F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD3@ha */
/* 80CE48F4  38 A5 8A D3 */	addi r5, r5, 0x8AD3 /* 0x00008AD3@l */
/* 80CE48F8  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE48FC  38 E0 00 00 */	li r7, 0
/* 80CE4900  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE4904  39 20 00 00 */	li r9, 0
/* 80CE4908  39 40 00 FF */	li r10, 0xff
/* 80CE490C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4910  4B 36 81 81 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE4914  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4918  38 80 00 00 */	li r4, 0
/* 80CE491C  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4920  38 00 FF FF */	li r0, -1
/* 80CE4924  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4928  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE492C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4930  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE4934  38 80 00 00 */	li r4, 0
/* 80CE4938  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD4@ha */
/* 80CE493C  38 A5 8A D4 */	addi r5, r5, 0x8AD4 /* 0x00008AD4@l */
/* 80CE4940  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE4944  38 E0 00 00 */	li r7, 0
/* 80CE4948  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE494C  39 20 00 00 */	li r9, 0
/* 80CE4950  39 40 00 FF */	li r10, 0xff
/* 80CE4954  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4958  4B 36 81 39 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE495C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4960  38 80 00 00 */	li r4, 0
/* 80CE4964  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4968  38 00 FF FF */	li r0, -1
/* 80CE496C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4970  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4974  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4978  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE497C  38 80 00 00 */	li r4, 0
/* 80CE4980  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD5@ha */
/* 80CE4984  38 A5 8A D5 */	addi r5, r5, 0x8AD5 /* 0x00008AD5@l */
/* 80CE4988  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE498C  38 E0 00 00 */	li r7, 0
/* 80CE4990  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE4994  39 20 00 00 */	li r9, 0
/* 80CE4998  39 40 00 FF */	li r10, 0xff
/* 80CE499C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE49A0  4B 36 80 F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE49A4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE49A8  38 80 00 00 */	li r4, 0
/* 80CE49AC  90 81 00 08 */	stw r4, 8(r1)
/* 80CE49B0  38 00 FF FF */	li r0, -1
/* 80CE49B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE49B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE49BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE49C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE49C4  38 80 00 00 */	li r4, 0
/* 80CE49C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD6@ha */
/* 80CE49CC  38 A5 8A D6 */	addi r5, r5, 0x8AD6 /* 0x00008AD6@l */
/* 80CE49D0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE49D4  38 E0 00 00 */	li r7, 0
/* 80CE49D8  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE49DC  39 20 00 00 */	li r9, 0
/* 80CE49E0  39 40 00 FF */	li r10, 0xff
/* 80CE49E4  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE49E8  4B 36 80 A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE49EC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE49F0  38 80 00 00 */	li r4, 0
/* 80CE49F4  90 81 00 08 */	stw r4, 8(r1)
/* 80CE49F8  38 00 FF FF */	li r0, -1
/* 80CE49FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4A00  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4A04  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4A08  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE4A0C  38 80 00 00 */	li r4, 0
/* 80CE4A10  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD7@ha */
/* 80CE4A14  38 A5 8A D7 */	addi r5, r5, 0x8AD7 /* 0x00008AD7@l */
/* 80CE4A18  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE4A1C  38 E0 00 00 */	li r7, 0
/* 80CE4A20  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE4A24  39 20 00 00 */	li r9, 0
/* 80CE4A28  39 40 00 FF */	li r10, 0xff
/* 80CE4A2C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4A30  4B 36 80 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE4A34  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CE4A38  38 80 00 00 */	li r4, 0
/* 80CE4A3C  90 81 00 08 */	stw r4, 8(r1)
/* 80CE4A40  38 00 FF FF */	li r0, -1
/* 80CE4A44  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE4A48  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE4A4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE4A50  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE4A54  38 80 00 00 */	li r4, 0
/* 80CE4A58  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AD8@ha */
/* 80CE4A5C  38 A5 8A D8 */	addi r5, r5, 0x8AD8 /* 0x00008AD8@l */
/* 80CE4A60  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80CE4A64  38 E0 00 00 */	li r7, 0
/* 80CE4A68  39 01 00 24 */	addi r8, r1, 0x24
/* 80CE4A6C  39 20 00 00 */	li r9, 0
/* 80CE4A70  39 40 00 FF */	li r10, 0xff
/* 80CE4A74  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CE4A78  4B 36 80 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CE4A7C:
/* 80CE4A7C  38 00 00 03 */	li r0, 3
/* 80CE4A80  98 1D 05 AC */	stb r0, 0x5ac(r29)
/* 80CE4A84  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE4A88  4B 67 D7 A1 */	bl _restgpr_29
/* 80CE4A8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CE4A90  7C 08 03 A6 */	mtlr r0
/* 80CE4A94  38 21 00 50 */	addi r1, r1, 0x50
/* 80CE4A98  4E 80 00 20 */	blr 
