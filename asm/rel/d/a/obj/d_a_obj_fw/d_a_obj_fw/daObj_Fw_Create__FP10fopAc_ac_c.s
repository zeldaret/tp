lbl_80BF28D0:
/* 80BF28D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BF28D4  7C 08 02 A6 */	mflr r0
/* 80BF28D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BF28DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF28E0  4B 76 F8 FC */	b _savegpr_29
/* 80BF28E4  7C 7E 1B 78 */	mr r30, r3
/* 80BF28E8  3C 80 80 BF */	lis r4, lit_3647@ha
/* 80BF28EC  3B E4 2B 48 */	addi r31, r4, lit_3647@l
/* 80BF28F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BF28F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BF28F8  40 82 00 28 */	bne lbl_80BF2920
/* 80BF28FC  7F C0 F3 79 */	or. r0, r30, r30
/* 80BF2900  41 82 00 14 */	beq lbl_80BF2914
/* 80BF2904  7C 1D 03 78 */	mr r29, r0
/* 80BF2908  4B 42 62 5C */	b __ct__10fopAc_ac_cFv
/* 80BF290C  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80BF2910  4B 6C BF 34 */	b __ct__16Z2SoundObjSimpleFv
lbl_80BF2914:
/* 80BF2914  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BF2918  60 00 00 08 */	ori r0, r0, 8
/* 80BF291C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BF2920:
/* 80BF2920  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BF2924  3C 80 80 BF */	lis r4, stringBase0@ha
/* 80BF2928  38 84 2B A4 */	addi r4, r4, stringBase0@l
/* 80BF292C  4B 43 A5 90 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BF2930  7C 7D 1B 78 */	mr r29, r3
/* 80BF2934  2C 1D 00 04 */	cmpwi r29, 4
/* 80BF2938  40 82 01 5C */	bne lbl_80BF2A94
/* 80BF293C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF2940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF2944  38 63 09 58 */	addi r3, r3, 0x958
/* 80BF2948  38 80 00 03 */	li r4, 3
/* 80BF294C  4B 44 1F E8 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80BF2950  2C 03 00 00 */	cmpwi r3, 0
/* 80BF2954  41 82 00 0C */	beq lbl_80BF2960
/* 80BF2958  38 60 00 05 */	li r3, 5
/* 80BF295C  48 00 01 3C */	b lbl_80BF2A98
lbl_80BF2960:
/* 80BF2960  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BF2964  98 1E 05 70 */	stb r0, 0x570(r30)
/* 80BF2968  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BF296C  28 00 00 FF */	cmplwi r0, 0xff
/* 80BF2970  40 82 00 0C */	bne lbl_80BF297C
/* 80BF2974  38 00 00 00 */	li r0, 0
/* 80BF2978  98 1E 05 70 */	stb r0, 0x570(r30)
lbl_80BF297C:
/* 80BF297C  7F C3 F3 78 */	mr r3, r30
/* 80BF2980  3C 80 80 BF */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80BF2984  38 84 27 9C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80BF2988  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80BF298C  28 00 00 01 */	cmplwi r0, 1
/* 80BF2990  38 A0 19 40 */	li r5, 0x1940
/* 80BF2994  40 82 00 08 */	bne lbl_80BF299C
/* 80BF2998  38 A0 14 00 */	li r5, 0x1400
lbl_80BF299C:
/* 80BF299C  4B 42 7B 14 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BF29A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF29A4  40 82 00 0C */	bne lbl_80BF29B0
/* 80BF29A8  38 60 00 05 */	li r3, 5
/* 80BF29AC  48 00 00 EC */	b lbl_80BF2A98
lbl_80BF29B0:
/* 80BF29B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BF29B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BF29B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BF29BC  80 9E 05 E8 */	lwz r4, 0x5e8(r30)
/* 80BF29C0  7F C5 F3 78 */	mr r5, r30
/* 80BF29C4  4B 48 20 44 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80BF29C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BF29CC  41 82 00 0C */	beq lbl_80BF29D8
/* 80BF29D0  38 60 00 05 */	li r3, 5
/* 80BF29D4  48 00 00 C4 */	b lbl_80BF2A98
lbl_80BF29D8:
/* 80BF29D8  3C 60 80 BF */	lis r3, data_80BF2C20@ha
/* 80BF29DC  8C 03 2C 20 */	lbzu r0, data_80BF2C20@l(r3)
/* 80BF29E0  28 00 00 00 */	cmplwi r0, 0
/* 80BF29E4  40 82 00 20 */	bne lbl_80BF2A04
/* 80BF29E8  38 00 00 01 */	li r0, 1
/* 80BF29EC  98 1E 06 24 */	stb r0, 0x624(r30)
/* 80BF29F0  98 03 00 00 */	stb r0, 0(r3)
/* 80BF29F4  38 00 FF FF */	li r0, -1
/* 80BF29F8  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BF29FC  38 63 2C 30 */	addi r3, r3, l_HIO@l
/* 80BF2A00  98 03 00 04 */	stb r0, 4(r3)
lbl_80BF2A04:
/* 80BF2A04  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BF2A08  38 03 00 24 */	addi r0, r3, 0x24
/* 80BF2A0C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BF2A10  7F C3 F3 78 */	mr r3, r30
/* 80BF2A14  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BF2A18  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80BF2A1C  FC 60 08 90 */	fmr f3, f1
/* 80BF2A20  4B 42 7B 08 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BF2A24  7F C3 F3 78 */	mr r3, r30
/* 80BF2A28  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80BF2A2C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80BF2A30  FC 60 08 90 */	fmr f3, f1
/* 80BF2A34  4B 42 7B 04 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BF2A38  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80BF2A3C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BF2A40  38 A0 00 02 */	li r5, 2
/* 80BF2A44  81 9E 05 FC */	lwz r12, 0x5fc(r30)
/* 80BF2A48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BF2A4C  7D 89 03 A6 */	mtctr r12
/* 80BF2A50  4E 80 04 21 */	bctrl 
/* 80BF2A54  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BF2A58  4B 67 4E FC */	b cM_rndF__Ff
/* 80BF2A5C  FC 00 08 1E */	fctiwz f0, f1
/* 80BF2A60  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BF2A64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BF2A68  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 80BF2A6C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BF2A70  4B 67 4E E4 */	b cM_rndF__Ff
/* 80BF2A74  FC 00 08 1E */	fctiwz f0, f1
/* 80BF2A78  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BF2A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2A80  B0 1E 05 90 */	sth r0, 0x590(r30)
/* 80BF2A84  7F C3 F3 78 */	mr r3, r30
/* 80BF2A88  4B FF F7 79 */	bl water_check__FP12obj_fw_class
/* 80BF2A8C  7F C3 F3 78 */	mr r3, r30
/* 80BF2A90  4B FF FB E1 */	bl daObj_Fw_Execute__FP12obj_fw_class
lbl_80BF2A94:
/* 80BF2A94  7F A3 EB 78 */	mr r3, r29
lbl_80BF2A98:
/* 80BF2A98  39 61 00 30 */	addi r11, r1, 0x30
/* 80BF2A9C  4B 76 F7 8C */	b _restgpr_29
/* 80BF2AA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BF2AA4  7C 08 03 A6 */	mtlr r0
/* 80BF2AA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BF2AAC  4E 80 00 20 */	blr 
