lbl_80D58940:
/* 80D58940  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80D58944  7C 08 02 A6 */	mflr r0
/* 80D58948  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80D5894C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D58950  4B 60 98 59 */	bl _savegpr_16
/* 80D58954  7C 77 1B 78 */	mr r23, r3
/* 80D58958  3C 60 80 D6 */	lis r3, lit_3983@ha /* 0x80D594DC@ha */
/* 80D5895C  3B 83 94 DC */	addi r28, r3, lit_3983@l /* 0x80D594DC@l */
/* 80D58960  4B 42 8C E1 */	bl dCam_getBody__Fv
/* 80D58964  7C 64 1B 78 */	mr r4, r3
/* 80D58968  38 61 00 5C */	addi r3, r1, 0x5c
/* 80D5896C  4B 42 94 F9 */	bl Eye__9dCamera_cFv
/* 80D58970  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80D58974  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80D58978  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D5897C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80D58980  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80D58984  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80D58988  88 17 05 69 */	lbz r0, 0x569(r23)
/* 80D5898C  28 00 00 00 */	cmplwi r0, 0
/* 80D58990  41 82 00 A0 */	beq lbl_80D58A30
/* 80D58994  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80D58998  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D5899C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D589A0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D589A4  3A 00 00 00 */	li r16, 0
/* 80D589A8  3A 80 00 00 */	li r20, 0
/* 80D589AC  3A A0 00 00 */	li r21, 0
/* 80D589B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D589B4  3A 43 61 C0 */	addi r18, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D589B8  3C 60 80 D6 */	lis r3, game_over_eff_name__11Tag_FWall_n@ha /* 0x80D5954C@ha */
/* 80D589BC  3A 23 95 4C */	addi r17, r3, game_over_eff_name__11Tag_FWall_n@l /* 0x80D5954C@l */
lbl_80D589C0:
/* 80D589C0  80 72 5D 3C */	lwz r3, 0x5d3c(r18)
/* 80D589C4  38 00 00 FF */	li r0, 0xff
/* 80D589C8  90 01 00 08 */	stw r0, 8(r1)
/* 80D589CC  38 80 00 00 */	li r4, 0
/* 80D589D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D589D4  38 00 FF FF */	li r0, -1
/* 80D589D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D589DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D589E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D589E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D589E8  3A 75 07 74 */	addi r19, r21, 0x774
/* 80D589EC  7C 97 98 2E */	lwzx r4, r23, r19
/* 80D589F0  38 A0 00 00 */	li r5, 0
/* 80D589F4  7C D1 A2 2E */	lhzx r6, r17, r20
/* 80D589F8  38 E1 00 68 */	addi r7, r1, 0x68
/* 80D589FC  39 00 00 00 */	li r8, 0
/* 80D58A00  39 20 00 00 */	li r9, 0
/* 80D58A04  39 40 00 00 */	li r10, 0
/* 80D58A08  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D58A0C  4B 2F 4A C1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D58A10  7C 77 99 2E */	stwx r3, r23, r19
/* 80D58A14  3A 10 00 01 */	addi r16, r16, 1
/* 80D58A18  2C 10 00 04 */	cmpwi r16, 4
/* 80D58A1C  3A 94 00 02 */	addi r20, r20, 2
/* 80D58A20  3A B5 00 04 */	addi r21, r21, 4
/* 80D58A24  41 80 FF 9C */	blt lbl_80D589C0
/* 80D58A28  38 60 00 01 */	li r3, 1
/* 80D58A2C  48 00 05 D8 */	b lbl_80D59004
lbl_80D58A30:
/* 80D58A30  3B 00 00 00 */	li r24, 0
/* 80D58A34  3A C0 00 00 */	li r22, 0
/* 80D58A38  3A A0 00 00 */	li r21, 0
/* 80D58A3C  3A 80 00 00 */	li r20, 0
/* 80D58A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D58A44  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D58A48  3B 7D 23 3C */	addi r27, r29, 0x233c
/* 80D58A4C  3C 60 80 D6 */	lis r3, data_80D595C4@ha /* 0x80D595C4@ha */
/* 80D58A50  3B E3 95 C4 */	addi r31, r3, data_80D595C4@l /* 0x80D595C4@l */
/* 80D58A54  48 00 05 A0 */	b lbl_80D58FF4
lbl_80D58A58:
/* 80D58A58  7F 57 A2 14 */	add r26, r23, r20
/* 80D58A5C  80 1A 06 0C */	lwz r0, 0x60c(r26)
/* 80D58A60  2C 00 00 02 */	cmpwi r0, 2
/* 80D58A64  41 82 00 C8 */	beq lbl_80D58B2C
/* 80D58A68  40 80 00 14 */	bge lbl_80D58A7C
/* 80D58A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80D58A70  41 82 00 18 */	beq lbl_80D58A88
/* 80D58A74  40 80 00 78 */	bge lbl_80D58AEC
/* 80D58A78  48 00 05 14 */	b lbl_80D58F8C
lbl_80D58A7C:
/* 80D58A7C  2C 00 00 04 */	cmpwi r0, 4
/* 80D58A80  40 80 05 0C */	bge lbl_80D58F8C
/* 80D58A84  48 00 02 70 */	b lbl_80D58CF4
lbl_80D58A88:
/* 80D58A88  38 00 00 00 */	li r0, 0
/* 80D58A8C  90 1A 05 6C */	stw r0, 0x56c(r26)
/* 80D58A90  88 17 05 68 */	lbz r0, 0x568(r23)
/* 80D58A94  28 00 00 FF */	cmplwi r0, 0xff
/* 80D58A98  40 82 04 F4 */	bne lbl_80D58F8C
/* 80D58A9C  9B 17 05 68 */	stb r24, 0x568(r23)
/* 80D58AA0  3B 20 00 00 */	li r25, 0
/* 80D58AA4  3B C0 00 00 */	li r30, 0
/* 80D58AA8  3C 60 80 D6 */	lis r3, cc_sph_src__11Tag_FWall_n@ha /* 0x80D5950C@ha */
/* 80D58AAC  3A 23 95 0C */	addi r17, r3, cc_sph_src__11Tag_FWall_n@l /* 0x80D5950C@l */
/* 80D58AB0  3A 57 07 CC */	addi r18, r23, 0x7cc
/* 80D58AB4  3C 60 80 D6 */	lis r3, data_80D595C4@ha /* 0x80D595C4@ha */
/* 80D58AB8  3A 63 95 C4 */	addi r19, r3, data_80D595C4@l /* 0x80D595C4@l */
/* 80D58ABC  48 00 00 20 */	b lbl_80D58ADC
lbl_80D58AC0:
/* 80D58AC0  7E 17 F2 14 */	add r16, r23, r30
/* 80D58AC4  38 70 08 08 */	addi r3, r16, 0x808
/* 80D58AC8  7E 24 8B 78 */	mr r4, r17
/* 80D58ACC  4B 32 BF 69 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D58AD0  92 50 08 4C */	stw r18, 0x84c(r16)
/* 80D58AD4  3B 39 00 01 */	addi r25, r25, 1
/* 80D58AD8  3B DE 01 38 */	addi r30, r30, 0x138
lbl_80D58ADC:
/* 80D58ADC  88 13 00 00 */	lbz r0, 0(r19)
/* 80D58AE0  7C 19 00 00 */	cmpw r25, r0
/* 80D58AE4  40 81 FF DC */	ble lbl_80D58AC0
/* 80D58AE8  48 00 04 A4 */	b lbl_80D58F8C
lbl_80D58AEC:
/* 80D58AEC  88 17 05 68 */	lbz r0, 0x568(r23)
/* 80D58AF0  28 00 00 FF */	cmplwi r0, 0xff
/* 80D58AF4  41 82 04 98 */	beq lbl_80D58F8C
/* 80D58AF8  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 80D58AFC  38 03 05 6C */	addi r0, r3, 0x56c
/* 80D58B00  7C 77 00 2E */	lwzx r3, r23, r0
/* 80D58B04  80 1A 05 6C */	lwz r0, 0x56c(r26)
/* 80D58B08  7C 03 00 00 */	cmpw r3, r0
/* 80D58B0C  40 82 04 80 */	bne lbl_80D58F8C
/* 80D58B10  38 00 00 03 */	li r0, 3
/* 80D58B14  90 1A 06 0C */	stw r0, 0x60c(r26)
/* 80D58B18  38 75 08 08 */	addi r3, r21, 0x808
/* 80D58B1C  7C 17 18 2E */	lwzx r0, r23, r3
/* 80D58B20  60 00 00 01 */	ori r0, r0, 1
/* 80D58B24  7C 17 19 2E */	stwx r0, r23, r3
/* 80D58B28  48 00 04 64 */	b lbl_80D58F8C
lbl_80D58B2C:
/* 80D58B2C  38 75 08 08 */	addi r3, r21, 0x808
/* 80D58B30  7C 17 18 2E */	lwzx r0, r23, r3
/* 80D58B34  60 00 00 01 */	ori r0, r0, 1
/* 80D58B38  7C 17 19 2E */	stwx r0, r23, r3
/* 80D58B3C  88 77 05 68 */	lbz r3, 0x568(r23)
/* 80D58B40  7C 18 18 00 */	cmpw r24, r3
/* 80D58B44  40 82 01 A8 */	bne lbl_80D58CEC
/* 80D58B48  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80D58B4C  28 00 00 00 */	cmplwi r0, 0
/* 80D58B50  40 82 00 18 */	bne lbl_80D58B68
/* 80D58B54  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 80D58B58  38 83 05 6C */	addi r4, r3, 0x56c
/* 80D58B5C  7C 77 20 2E */	lwzx r3, r23, r4
/* 80D58B60  38 03 00 01 */	addi r0, r3, 1
/* 80D58B64  7C 17 21 2E */	stwx r0, r23, r4
lbl_80D58B68:
/* 80D58B68  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80D58B6C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D58B70  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D58B74  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D58B78  88 17 05 68 */	lbz r0, 0x568(r23)
/* 80D58B7C  54 03 10 3A */	slwi r3, r0, 2
/* 80D58B80  38 03 05 6C */	addi r0, r3, 0x56c
/* 80D58B84  7C 17 00 2E */	lwzx r0, r23, r0
/* 80D58B88  2C 00 03 52 */	cmpwi r0, 0x352
/* 80D58B8C  40 81 00 58 */	ble lbl_80D58BE4
/* 80D58B90  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D58B94  38 00 00 FF */	li r0, 0xff
/* 80D58B98  90 01 00 08 */	stw r0, 8(r1)
/* 80D58B9C  38 80 00 00 */	li r4, 0
/* 80D58BA0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D58BA4  38 00 FF FF */	li r0, -1
/* 80D58BA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D58BAC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D58BB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D58BB4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D58BB8  80 97 07 C8 */	lwz r4, 0x7c8(r23)
/* 80D58BBC  38 A0 00 00 */	li r5, 0
/* 80D58BC0  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084D2@ha */
/* 80D58BC4  38 C6 84 D2 */	addi r6, r6, 0x84D2 /* 0x000084D2@l */
/* 80D58BC8  38 E1 00 68 */	addi r7, r1, 0x68
/* 80D58BCC  39 00 00 00 */	li r8, 0
/* 80D58BD0  39 20 00 00 */	li r9, 0
/* 80D58BD4  39 40 00 00 */	li r10, 0
/* 80D58BD8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D58BDC  4B 2F 48 F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D58BE0  90 77 07 C8 */	stw r3, 0x7c8(r23)
lbl_80D58BE4:
/* 80D58BE4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D58BE8  38 00 00 FF */	li r0, 0xff
/* 80D58BEC  90 01 00 08 */	stw r0, 8(r1)
/* 80D58BF0  38 80 00 00 */	li r4, 0
/* 80D58BF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D58BF8  38 00 FF FF */	li r0, -1
/* 80D58BFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D58C00  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D58C04  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D58C08  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D58C0C  80 97 07 C4 */	lwz r4, 0x7c4(r23)
/* 80D58C10  38 A0 00 00 */	li r5, 0
/* 80D58C14  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084BB@ha */
/* 80D58C18  38 C6 84 BB */	addi r6, r6, 0x84BB /* 0x000084BB@l */
/* 80D58C1C  38 E1 00 68 */	addi r7, r1, 0x68
/* 80D58C20  39 00 00 00 */	li r8, 0
/* 80D58C24  39 20 00 00 */	li r9, 0
/* 80D58C28  39 40 00 00 */	li r10, 0
/* 80D58C2C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D58C30  4B 2F 48 9D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D58C34  90 77 07 C4 */	stw r3, 0x7c4(r23)
/* 80D58C38  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080175@ha */
/* 80D58C3C  38 03 01 75 */	addi r0, r3, 0x0175 /* 0x00080175@l */
/* 80D58C40  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D58C44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D58C48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D58C4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D58C50  38 81 00 28 */	addi r4, r1, 0x28
/* 80D58C54  38 A0 00 00 */	li r5, 0
/* 80D58C58  88 17 05 68 */	lbz r0, 0x568(r23)
/* 80D58C5C  54 06 10 3A */	slwi r6, r0, 2
/* 80D58C60  38 06 05 6C */	addi r0, r6, 0x56c
/* 80D58C64  7C D7 00 2E */	lwzx r6, r23, r0
/* 80D58C68  38 E0 00 00 */	li r7, 0
/* 80D58C6C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D58C70  FC 40 08 90 */	fmr f2, f1
/* 80D58C74  C0 7C 00 08 */	lfs f3, 8(r28)
/* 80D58C78  FC 80 18 90 */	fmr f4, f3
/* 80D58C7C  39 00 00 00 */	li r8, 0
/* 80D58C80  4B 55 38 8D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D58C84  88 17 05 68 */	lbz r0, 0x568(r23)
/* 80D58C88  54 03 10 3A */	slwi r3, r0, 2
/* 80D58C8C  38 03 05 6C */	addi r0, r3, 0x56c
/* 80D58C90  7C 17 00 2E */	lwzx r0, r23, r0
/* 80D58C94  2C 00 03 84 */	cmpwi r0, 0x384
/* 80D58C98  41 80 00 5C */	blt lbl_80D58CF4
/* 80D58C9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D58CA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D58CA4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D58CA8  80 04 05 78 */	lwz r0, 0x578(r4)
/* 80D58CAC  64 00 00 04 */	oris r0, r0, 4
/* 80D58CB0  90 04 05 78 */	stw r0, 0x578(r4)
/* 80D58CB4  38 00 00 01 */	li r0, 1
/* 80D58CB8  98 17 05 69 */	stb r0, 0x569(r23)
/* 80D58CBC  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80D58CC0  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80D58CC4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80D58CC8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80D58CCC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80D58CD0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D58CD4  38 80 00 08 */	li r4, 8
/* 80D58CD8  38 A0 00 1F */	li r5, 0x1f
/* 80D58CDC  38 C1 00 50 */	addi r6, r1, 0x50
/* 80D58CE0  4B 31 6D 45 */	bl StartShock__12dVibration_cFii4cXyz
/* 80D58CE4  38 60 00 01 */	li r3, 1
/* 80D58CE8  48 00 03 1C */	b lbl_80D59004
lbl_80D58CEC:
/* 80D58CEC  38 00 00 03 */	li r0, 3
/* 80D58CF0  90 1A 06 0C */	stw r0, 0x60c(r26)
lbl_80D58CF4:
/* 80D58CF4  38 18 07 60 */	addi r0, r24, 0x760
/* 80D58CF8  7C 17 00 AE */	lbzx r0, r23, r0
/* 80D58CFC  28 00 00 00 */	cmplwi r0, 0
/* 80D58D00  40 82 00 58 */	bne lbl_80D58D58
/* 80D58D04  7E 17 AA 14 */	add r16, r23, r21
/* 80D58D08  80 10 08 08 */	lwz r0, 0x808(r16)
/* 80D58D0C  60 00 00 01 */	ori r0, r0, 1
/* 80D58D10  90 10 08 08 */	stw r0, 0x808(r16)
/* 80D58D14  7C 77 B2 14 */	add r3, r23, r22
/* 80D58D18  C0 03 06 70 */	lfs f0, 0x670(r3)
/* 80D58D1C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D58D20  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 80D58D24  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D58D28  C0 03 06 78 */	lfs f0, 0x678(r3)
/* 80D58D2C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D58D30  3A 30 09 2C */	addi r17, r16, 0x92c
/* 80D58D34  7E 23 8B 78 */	mr r3, r17
/* 80D58D38  38 81 00 68 */	addi r4, r1, 0x68
/* 80D58D3C  4B 51 69 0D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80D58D40  7E 23 8B 78 */	mr r3, r17
/* 80D58D44  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80D58D48  4B 51 69 C1 */	bl SetR__8cM3dGSphFf
/* 80D58D4C  7F 63 DB 78 */	mr r3, r27
/* 80D58D50  38 90 08 08 */	addi r4, r16, 0x808
/* 80D58D54  4B 50 BE 55 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80D58D58:
/* 80D58D58  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D58D5C  38 00 00 FF */	li r0, 0xff
/* 80D58D60  90 01 00 08 */	stw r0, 8(r1)
/* 80D58D64  38 80 00 00 */	li r4, 0
/* 80D58D68  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D58D6C  38 00 FF FF */	li r0, -1
/* 80D58D70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D58D74  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D58D78  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D58D7C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D58D80  80 9A 07 74 */	lwz r4, 0x774(r26)
/* 80D58D84  38 A0 00 00 */	li r5, 0
/* 80D58D88  3C C0 00 01 */	lis r6, 0x0001 /* 0x000084BD@ha */
/* 80D58D8C  38 C6 84 BD */	addi r6, r6, 0x84BD /* 0x000084BD@l */
/* 80D58D90  7F 37 B2 14 */	add r25, r23, r22
/* 80D58D94  3A 19 06 70 */	addi r16, r25, 0x670
/* 80D58D98  7E 07 83 78 */	mr r7, r16
/* 80D58D9C  39 00 00 00 */	li r8, 0
/* 80D58DA0  39 20 00 00 */	li r9, 0
/* 80D58DA4  39 40 00 00 */	li r10, 0
/* 80D58DA8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D58DAC  4B 2F 47 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D58DB0  90 7A 07 74 */	stw r3, 0x774(r26)
/* 80D58DB4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80D58DB8  38 63 02 10 */	addi r3, r3, 0x210
/* 80D58DBC  80 9A 07 74 */	lwz r4, 0x774(r26)
/* 80D58DC0  4B 2F 2B 59 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80D58DC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D58DC8  41 82 01 C4 */	beq lbl_80D58F8C
/* 80D58DCC  38 61 00 44 */	addi r3, r1, 0x44
/* 80D58DD0  38 81 00 74 */	addi r4, r1, 0x74
/* 80D58DD4  7E 05 83 78 */	mr r5, r16
/* 80D58DD8  4B 50 DD 5D */	bl __mi__4cXyzCFRC3Vec
/* 80D58DDC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80D58DE0  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80D58DE4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80D58DE8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D58DEC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80D58DF0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80D58DF4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80D58DF8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80D58DFC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D58E00  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D58E04  38 61 00 2C */	addi r3, r1, 0x2c
/* 80D58E08  4B 5E E3 31 */	bl PSVECSquareMag
/* 80D58E0C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80D58E10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D58E14  40 81 00 58 */	ble lbl_80D58E6C
/* 80D58E18  FC 00 08 34 */	frsqrte f0, f1
/* 80D58E1C  C8 9C 00 10 */	lfd f4, 0x10(r28)
/* 80D58E20  FC 44 00 32 */	fmul f2, f4, f0
/* 80D58E24  C8 7C 00 18 */	lfd f3, 0x18(r28)
/* 80D58E28  FC 00 00 32 */	fmul f0, f0, f0
/* 80D58E2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D58E30  FC 03 00 28 */	fsub f0, f3, f0
/* 80D58E34  FC 02 00 32 */	fmul f0, f2, f0
/* 80D58E38  FC 44 00 32 */	fmul f2, f4, f0
/* 80D58E3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D58E40  FC 01 00 32 */	fmul f0, f1, f0
/* 80D58E44  FC 03 00 28 */	fsub f0, f3, f0
/* 80D58E48  FC 02 00 32 */	fmul f0, f2, f0
/* 80D58E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D58E50  FC 00 00 32 */	fmul f0, f0, f0
/* 80D58E54  FC 01 00 32 */	fmul f0, f1, f0
/* 80D58E58  FC 03 00 28 */	fsub f0, f3, f0
/* 80D58E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D58E60  FC 21 00 32 */	fmul f1, f1, f0
/* 80D58E64  FC 20 08 18 */	frsp f1, f1
/* 80D58E68  48 00 00 88 */	b lbl_80D58EF0
lbl_80D58E6C:
/* 80D58E6C  C8 1C 00 20 */	lfd f0, 0x20(r28)
/* 80D58E70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D58E74  40 80 00 10 */	bge lbl_80D58E84
/* 80D58E78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D58E7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D58E80  48 00 00 70 */	b lbl_80D58EF0
lbl_80D58E84:
/* 80D58E84  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80D58E88  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80D58E8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D58E90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D58E94  7C 03 00 00 */	cmpw r3, r0
/* 80D58E98  41 82 00 14 */	beq lbl_80D58EAC
/* 80D58E9C  40 80 00 40 */	bge lbl_80D58EDC
/* 80D58EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80D58EA4  41 82 00 20 */	beq lbl_80D58EC4
/* 80D58EA8  48 00 00 34 */	b lbl_80D58EDC
lbl_80D58EAC:
/* 80D58EAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D58EB0  41 82 00 0C */	beq lbl_80D58EBC
/* 80D58EB4  38 00 00 01 */	li r0, 1
/* 80D58EB8  48 00 00 28 */	b lbl_80D58EE0
lbl_80D58EBC:
/* 80D58EBC  38 00 00 02 */	li r0, 2
/* 80D58EC0  48 00 00 20 */	b lbl_80D58EE0
lbl_80D58EC4:
/* 80D58EC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D58EC8  41 82 00 0C */	beq lbl_80D58ED4
/* 80D58ECC  38 00 00 05 */	li r0, 5
/* 80D58ED0  48 00 00 10 */	b lbl_80D58EE0
lbl_80D58ED4:
/* 80D58ED4  38 00 00 03 */	li r0, 3
/* 80D58ED8  48 00 00 08 */	b lbl_80D58EE0
lbl_80D58EDC:
/* 80D58EDC  38 00 00 04 */	li r0, 4
lbl_80D58EE0:
/* 80D58EE0  2C 00 00 01 */	cmpwi r0, 1
/* 80D58EE4  40 82 00 0C */	bne lbl_80D58EF0
/* 80D58EE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D58EEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D58EF0:
/* 80D58EF0  C0 5C 00 28 */	lfs f2, 0x28(r28)
/* 80D58EF4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80D58EF8  40 80 00 20 */	bge lbl_80D58F18
/* 80D58EFC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80D58F00  FC 00 02 10 */	fabs f0, f0
/* 80D58F04  FC 00 00 18 */	frsp f0, f0
/* 80D58F08  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D58F0C  40 80 00 0C */	bge lbl_80D58F18
/* 80D58F10  38 80 00 00 */	li r4, 0
/* 80D58F14  48 00 00 08 */	b lbl_80D58F1C
lbl_80D58F18:
/* 80D58F18  38 80 00 FF */	li r4, 0xff
lbl_80D58F1C:
/* 80D58F1C  88 1E 00 BB */	lbz r0, 0xbb(r30)
/* 80D58F20  98 01 00 20 */	stb r0, 0x20(r1)
/* 80D58F24  38 61 00 20 */	addi r3, r1, 0x20
/* 80D58F28  38 A0 00 40 */	li r5, 0x40
/* 80D58F2C  4B 51 77 31 */	bl cLib_chaseUC__FPUcUcUc
/* 80D58F30  88 01 00 20 */	lbz r0, 0x20(r1)
/* 80D58F34  98 1E 00 BB */	stb r0, 0xbb(r30)
/* 80D58F38  C0 19 06 70 */	lfs f0, 0x670(r25)
/* 80D58F3C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D58F40  C0 39 06 74 */	lfs f1, 0x674(r25)
/* 80D58F44  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80D58F48  C0 19 06 78 */	lfs f0, 0x678(r25)
/* 80D58F4C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D58F50  88 01 00 20 */	lbz r0, 0x20(r1)
/* 80D58F54  28 00 00 00 */	cmplwi r0, 0
/* 80D58F58  40 82 00 10 */	bne lbl_80D58F68
/* 80D58F5C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80D58F60  EC 01 00 2A */	fadds f0, f1, f0
/* 80D58F64  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80D58F68:
/* 80D58F68  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 80D58F6C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80D58F70  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 80D58F74  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80D58F78  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80D58F7C  D0 1E 00 A4 */	stfs f0, 0xa4(r30)
/* 80D58F80  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80D58F84  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 80D58F88  D0 3E 00 AC */	stfs f1, 0xac(r30)
lbl_80D58F8C:
/* 80D58F8C  80 9A 05 BC */	lwz r4, 0x5bc(r26)
/* 80D58F90  2C 04 00 00 */	cmpwi r4, 0
/* 80D58F94  41 82 00 50 */	beq lbl_80D58FE4
/* 80D58F98  88 17 05 68 */	lbz r0, 0x568(r23)
/* 80D58F9C  54 03 10 3A */	slwi r3, r0, 2
/* 80D58FA0  38 03 05 6C */	addi r0, r3, 0x56c
/* 80D58FA4  7C 17 00 2E */	lwzx r0, r23, r0
/* 80D58FA8  7C 00 20 00 */	cmpw r0, r4
/* 80D58FAC  40 82 00 38 */	bne lbl_80D58FE4
/* 80D58FB0  38 00 00 00 */	li r0, 0
/* 80D58FB4  90 1A 05 BC */	stw r0, 0x5bc(r26)
/* 80D58FB8  90 01 00 08 */	stw r0, 8(r1)
/* 80D58FBC  38 60 02 21 */	li r3, 0x221
/* 80D58FC0  38 80 00 00 */	li r4, 0
/* 80D58FC4  38 B6 06 70 */	addi r5, r22, 0x670
/* 80D58FC8  7C B7 2A 14 */	add r5, r23, r5
/* 80D58FCC  38 C0 FF FF */	li r6, -1
/* 80D58FD0  38 E0 00 00 */	li r7, 0
/* 80D58FD4  39 00 00 00 */	li r8, 0
/* 80D58FD8  39 20 FF FF */	li r9, -1
/* 80D58FDC  39 40 00 00 */	li r10, 0
/* 80D58FE0  4B 2C 0E 25 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
lbl_80D58FE4:
/* 80D58FE4  3B 18 00 01 */	addi r24, r24, 1
/* 80D58FE8  3A D6 00 0C */	addi r22, r22, 0xc
/* 80D58FEC  3A B5 01 38 */	addi r21, r21, 0x138
/* 80D58FF0  3A 94 00 04 */	addi r20, r20, 4
lbl_80D58FF4:
/* 80D58FF4  88 1F 00 00 */	lbz r0, 0(r31)
/* 80D58FF8  7C 18 00 00 */	cmpw r24, r0
/* 80D58FFC  40 81 FA 5C */	ble lbl_80D58A58
/* 80D59000  38 60 00 01 */	li r3, 1
lbl_80D59004:
/* 80D59004  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80D59008  4B 60 91 ED */	bl _restgpr_16
/* 80D5900C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80D59010  7C 08 03 A6 */	mtlr r0
/* 80D59014  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80D59018  4E 80 00 20 */	blr 
