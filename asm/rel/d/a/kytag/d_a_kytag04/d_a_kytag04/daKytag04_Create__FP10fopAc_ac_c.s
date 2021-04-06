lbl_8046D59C:
/* 8046D59C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046D5A0  7C 08 02 A6 */	mflr r0
/* 8046D5A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046D5A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8046D5AC  4B EF 4C 31 */	bl _savegpr_29
/* 8046D5B0  7C 7F 1B 78 */	mr r31, r3
/* 8046D5B4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046D5B8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046D5BC  40 82 00 64 */	bne lbl_8046D620
/* 8046D5C0  7F E0 FB 79 */	or. r0, r31, r31
/* 8046D5C4  41 82 00 50 */	beq lbl_8046D614
/* 8046D5C8  7C 1D 03 78 */	mr r29, r0
/* 8046D5CC  4B BA B5 99 */	bl __ct__10fopAc_ac_cFv
/* 8046D5D0  3B DD 05 6C */	addi r30, r29, 0x56c
/* 8046D5D4  3C 60 80 47 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8046DAC8@ha */
/* 8046D5D8  38 03 DA C8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8046DAC8@l */
/* 8046D5DC  90 1D 05 6C */	stw r0, 0x56c(r29)
/* 8046D5E0  7F C3 F3 78 */	mr r3, r30
/* 8046D5E4  38 80 00 00 */	li r4, 0
/* 8046D5E8  4B EB AE 15 */	bl init__12J3DFrameCtrlFs
/* 8046D5EC  38 00 00 00 */	li r0, 0
/* 8046D5F0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8046D5F4  3C 60 80 47 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8046DAC8@ha */
/* 8046D5F8  38 03 DA C8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8046DAC8@l */
/* 8046D5FC  94 1D 05 84 */	stwu r0, 0x584(r29)
/* 8046D600  7F A3 EB 78 */	mr r3, r29
/* 8046D604  38 80 00 00 */	li r4, 0
/* 8046D608  4B EB AD F5 */	bl init__12J3DFrameCtrlFs
/* 8046D60C  38 00 00 00 */	li r0, 0
/* 8046D610  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8046D614:
/* 8046D614  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8046D618  60 00 00 08 */	ori r0, r0, 8
/* 8046D61C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8046D620:
/* 8046D620  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8046D624  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 8046D628  38 7F 05 9C */	addi r3, r31, 0x59c
/* 8046D62C  3C 80 80 47 */	lis r4, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D630  38 84 DA 50 */	addi r4, r4, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D634  38 84 00 16 */	addi r4, r4, 0x16
/* 8046D638  4B BB F8 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8046D63C  7C 7E 1B 78 */	mr r30, r3
/* 8046D640  2C 1E 00 04 */	cmpwi r30, 4
/* 8046D644  40 82 03 68 */	bne lbl_8046D9AC
/* 8046D648  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046D64C  54 00 C7 7E */	rlwinm r0, r0, 0x18, 0x1d, 0x1f
/* 8046D650  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 8046D654  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8046D658  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8046D65C  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 8046D660  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046D664  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8046D668  90 1F 05 BC */	stw r0, 0x5bc(r31)
/* 8046D66C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8046D670  98 1F 05 C6 */	stb r0, 0x5c6(r31)
/* 8046D674  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046D678  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8046D67C  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 8046D680  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046D684  54 00 46 3E */	srwi r0, r0, 0x18
/* 8046D688  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 8046D68C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D690  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D694  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8046D698  3C 80 80 47 */	lis r4, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D69C  38 84 DA 50 */	addi r4, r4, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D6A0  38 84 00 1E */	addi r4, r4, 0x1e
/* 8046D6A4  4B EF B2 F1 */	bl strcmp
/* 8046D6A8  2C 03 00 00 */	cmpwi r3, 0
/* 8046D6AC  40 82 00 30 */	bne lbl_8046D6DC
/* 8046D6B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D6B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D6B8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 8046D6BC  7C 00 07 75 */	extsb. r0, r0
/* 8046D6C0  40 82 00 1C */	bne lbl_8046D6DC
/* 8046D6C4  38 60 00 00 */	li r3, 0
/* 8046D6C8  4B BB F2 B5 */	bl getLayerNo__14dComIfG_play_cFi
/* 8046D6CC  2C 03 00 08 */	cmpwi r3, 8
/* 8046D6D0  40 82 00 0C */	bne lbl_8046D6DC
/* 8046D6D4  38 00 00 FF */	li r0, 0xff
/* 8046D6D8  98 1F 05 B5 */	stb r0, 0x5b5(r31)
lbl_8046D6DC:
/* 8046D6DC  38 00 FF FF */	li r0, -1
/* 8046D6E0  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8046D6E4  38 00 00 00 */	li r0, 0
/* 8046D6E8  98 1F 05 B8 */	stb r0, 0x5b8(r31)
/* 8046D6EC  98 1F 05 B9 */	stb r0, 0x5b9(r31)
/* 8046D6F0  90 1F 05 C0 */	stw r0, 0x5c0(r31)
/* 8046D6F4  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 8046D6F8  98 1F 05 C5 */	stb r0, 0x5c5(r31)
/* 8046D6FC  3C 60 80 47 */	lis r3, lit_3962@ha /* 0x8046DA20@ha */
/* 8046D700  C0 03 DA 20 */	lfs f0, lit_3962@l(r3)  /* 0x8046DA20@l */
/* 8046D704  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 8046D708  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 8046D70C  98 1F 05 D0 */	stb r0, 0x5d0(r31)
/* 8046D710  98 1F 05 D1 */	stb r0, 0x5d1(r31)
/* 8046D714  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 8046D718  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 8046D71C  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 8046D720  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8046D724  28 00 00 01 */	cmplwi r0, 1
/* 8046D728  40 82 00 BC */	bne lbl_8046D7E4
/* 8046D72C  88 1F 05 C6 */	lbz r0, 0x5c6(r31)
/* 8046D730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D734  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D738  98 1D 5E A1 */	stb r0, 0x5ea1(r29)
/* 8046D73C  88 9F 05 B5 */	lbz r4, 0x5b5(r31)
/* 8046D740  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D744  41 82 00 28 */	beq lbl_8046D76C
/* 8046D748  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8046D74C  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8046D750  7C A5 07 74 */	extsb r5, r5
/* 8046D754  7F A3 EB 78 */	mr r3, r29
/* 8046D758  4B BC 7C 09 */	bl isSwitch__10dSv_info_cCFii
/* 8046D75C  2C 03 00 00 */	cmpwi r3, 0
/* 8046D760  41 82 00 0C */	beq lbl_8046D76C
/* 8046D764  38 00 00 01 */	li r0, 1
/* 8046D768  98 1F 05 B7 */	stb r0, 0x5b7(r31)
lbl_8046D76C:
/* 8046D76C  4B D3 EE 11 */	bl dKy_darkworld_check__Fv
/* 8046D770  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046D774  41 82 01 18 */	beq lbl_8046D88C
/* 8046D778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D77C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D780  38 64 01 14 */	addi r3, r4, 0x114
/* 8046D784  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 8046D788  4B BC 6B B9 */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 8046D78C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8046D790  88 1D 5E A1 */	lbz r0, 0x5ea1(r29)
/* 8046D794  7C 03 00 40 */	cmplw r3, r0
/* 8046D798  41 80 00 F4 */	blt lbl_8046D88C
/* 8046D79C  38 60 00 00 */	li r3, 0
/* 8046D7A0  4B BB F1 DD */	bl getLayerNo__14dComIfG_play_cFi
/* 8046D7A4  2C 03 00 0D */	cmpwi r3, 0xd
/* 8046D7A8  41 82 00 14 */	beq lbl_8046D7BC
/* 8046D7AC  38 60 00 00 */	li r3, 0
/* 8046D7B0  4B BB F1 CD */	bl getLayerNo__14dComIfG_play_cFi
/* 8046D7B4  2C 03 00 0E */	cmpwi r3, 0xe
/* 8046D7B8  40 82 00 D4 */	bne lbl_8046D88C
lbl_8046D7BC:
/* 8046D7BC  38 00 FF FF */	li r0, -1
/* 8046D7C0  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8046D7C4  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8046D7C8  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8046D7CC  7C A5 07 74 */	extsb r5, r5
/* 8046D7D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D7D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D7D8  88 9F 05 B5 */	lbz r4, 0x5b5(r31)
/* 8046D7DC  4B BC 7A 25 */	bl onSwitch__10dSv_info_cFii
/* 8046D7E0  48 00 00 AC */	b lbl_8046D88C
lbl_8046D7E4:
/* 8046D7E4  28 00 00 04 */	cmplwi r0, 4
/* 8046D7E8  40 82 00 50 */	bne lbl_8046D838
/* 8046D7EC  88 9F 05 B5 */	lbz r4, 0x5b5(r31)
/* 8046D7F0  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D7F4  41 82 00 98 */	beq lbl_8046D88C
/* 8046D7F8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8046D7FC  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8046D800  7C A5 07 74 */	extsb r5, r5
/* 8046D804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D80C  4B BC 7B 55 */	bl isSwitch__10dSv_info_cCFii
/* 8046D810  2C 03 00 00 */	cmpwi r3, 0
/* 8046D814  41 82 00 78 */	beq lbl_8046D88C
/* 8046D818  38 00 00 01 */	li r0, 1
/* 8046D81C  98 1F 05 D1 */	stb r0, 0x5d1(r31)
/* 8046D820  3C 60 80 47 */	lis r3, lit_3963@ha /* 0x8046DA24@ha */
/* 8046D824  C0 03 DA 24 */	lfs f0, lit_3963@l(r3)  /* 0x8046DA24@l */
/* 8046D828  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 8046D82C  38 00 00 14 */	li r0, 0x14
/* 8046D830  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 8046D834  48 00 00 58 */	b lbl_8046D88C
lbl_8046D838:
/* 8046D838  28 00 00 05 */	cmplwi r0, 5
/* 8046D83C  40 82 00 50 */	bne lbl_8046D88C
/* 8046D840  88 9F 05 B5 */	lbz r4, 0x5b5(r31)
/* 8046D844  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D848  41 82 00 44 */	beq lbl_8046D88C
/* 8046D84C  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 8046D850  54 05 28 34 */	slwi r5, r0, 5
/* 8046D854  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D858  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D85C  7C 60 2A 14 */	add r3, r0, r5
/* 8046D860  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8046D864  4B BC 6F FD */	bl isSwitch__12dSv_memBit_cCFi
/* 8046D868  2C 03 00 00 */	cmpwi r3, 0
/* 8046D86C  41 82 00 20 */	beq lbl_8046D88C
/* 8046D870  38 00 00 01 */	li r0, 1
/* 8046D874  98 1F 05 D1 */	stb r0, 0x5d1(r31)
/* 8046D878  3C 60 80 47 */	lis r3, lit_3963@ha /* 0x8046DA24@ha */
/* 8046D87C  C0 03 DA 24 */	lfs f0, lit_3963@l(r3)  /* 0x8046DA24@l */
/* 8046D880  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 8046D884  38 00 00 14 */	li r0, 0x14
/* 8046D888  90 1F 05 CC */	stw r0, 0x5cc(r31)
lbl_8046D88C:
/* 8046D88C  7F E3 FB 78 */	mr r3, r31
/* 8046D890  3C 80 80 47 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8046D474@ha */
/* 8046D894  38 84 D4 74 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8046D474@l */
/* 8046D898  38 A0 11 50 */	li r5, 0x1150
/* 8046D89C  4B BA CC 15 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8046D8A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8046D8A4  40 82 00 0C */	bne lbl_8046D8B0
/* 8046D8A8  38 60 00 05 */	li r3, 5
/* 8046D8AC  48 00 01 04 */	b lbl_8046D9B0
lbl_8046D8B0:
/* 8046D8B0  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8046D8B4  28 00 00 04 */	cmplwi r0, 4
/* 8046D8B8  40 82 00 74 */	bne lbl_8046D92C
/* 8046D8BC  88 9F 05 B5 */	lbz r4, 0x5b5(r31)
/* 8046D8C0  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D8C4  41 82 00 68 */	beq lbl_8046D92C
/* 8046D8C8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8046D8CC  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8046D8D0  7C A5 07 74 */	extsb r5, r5
/* 8046D8D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D8D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D8DC  4B BC 7A 85 */	bl isSwitch__10dSv_info_cCFii
/* 8046D8E0  2C 03 00 00 */	cmpwi r3, 0
/* 8046D8E4  41 82 00 48 */	beq lbl_8046D92C
/* 8046D8E8  A8 1F 05 74 */	lha r0, 0x574(r31)
/* 8046D8EC  3C 60 80 47 */	lis r3, lit_4326@ha /* 0x8046DA48@ha */
/* 8046D8F0  C8 23 DA 48 */	lfd f1, lit_4326@l(r3)  /* 0x8046DA48@l */
/* 8046D8F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046D8F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046D8FC  3C 60 43 30 */	lis r3, 0x4330
/* 8046D900  90 61 00 08 */	stw r3, 8(r1)
/* 8046D904  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046D908  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046D90C  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 8046D910  A8 1F 05 8C */	lha r0, 0x58c(r31)
/* 8046D914  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046D918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D91C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8046D920  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046D924  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046D928  D0 1F 05 94 */	stfs f0, 0x594(r31)
lbl_8046D92C:
/* 8046D92C  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8046D930  28 00 00 05 */	cmplwi r0, 5
/* 8046D934  40 82 00 78 */	bne lbl_8046D9AC
/* 8046D938  88 9F 05 B5 */	lbz r4, 0x5b5(r31)
/* 8046D93C  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D940  41 82 00 6C */	beq lbl_8046D9AC
/* 8046D944  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 8046D948  54 05 28 34 */	slwi r5, r0, 5
/* 8046D94C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D950  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D954  7C 60 2A 14 */	add r3, r0, r5
/* 8046D958  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8046D95C  4B BC 6F 05 */	bl isSwitch__12dSv_memBit_cCFi
/* 8046D960  2C 03 00 00 */	cmpwi r3, 0
/* 8046D964  41 82 00 48 */	beq lbl_8046D9AC
/* 8046D968  A8 1F 05 74 */	lha r0, 0x574(r31)
/* 8046D96C  3C 60 80 47 */	lis r3, lit_4326@ha /* 0x8046DA48@ha */
/* 8046D970  C8 23 DA 48 */	lfd f1, lit_4326@l(r3)  /* 0x8046DA48@l */
/* 8046D974  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046D978  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D97C  3C 60 43 30 */	lis r3, 0x4330
/* 8046D980  90 61 00 10 */	stw r3, 0x10(r1)
/* 8046D984  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046D988  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046D98C  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 8046D990  A8 1F 05 8C */	lha r0, 0x58c(r31)
/* 8046D994  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046D998  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046D99C  90 61 00 08 */	stw r3, 8(r1)
/* 8046D9A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046D9A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046D9A8  D0 1F 05 94 */	stfs f0, 0x594(r31)
lbl_8046D9AC:
/* 8046D9AC  7F C3 F3 78 */	mr r3, r30
lbl_8046D9B0:
/* 8046D9B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8046D9B4  4B EF 48 75 */	bl _restgpr_29
/* 8046D9B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046D9BC  7C 08 03 A6 */	mtlr r0
/* 8046D9C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8046D9C4  4E 80 00 20 */	blr 
