lbl_80CADC18:
/* 80CADC18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CADC1C  7C 08 02 A6 */	mflr r0
/* 80CADC20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CADC24  39 61 00 60 */	addi r11, r1, 0x60
/* 80CADC28  4B 6B 45 99 */	bl _savegpr_22
/* 80CADC2C  7C 7D 1B 78 */	mr r29, r3
/* 80CADC30  3C 80 80 CB */	lis r4, l_dzbIdx@ha /* 0x80CAF01C@ha */
/* 80CADC34  3B E4 F0 1C */	addi r31, r4, l_dzbIdx@l /* 0x80CAF01C@l */
/* 80CADC38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CADC3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CADC40  40 82 00 1C */	bne lbl_80CADC5C
/* 80CADC44  28 1D 00 00 */	cmplwi r29, 0
/* 80CADC48  41 82 00 08 */	beq lbl_80CADC50
/* 80CADC4C  4B FF F6 CD */	bl __ct__14daObjPicture_cFv
lbl_80CADC50:
/* 80CADC50  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80CADC54  60 00 00 08 */	ori r0, r0, 8
/* 80CADC58  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80CADC5C:
/* 80CADC5C  7F A3 EB 78 */	mr r3, r29
/* 80CADC60  28 1D 00 00 */	cmplwi r29, 0
/* 80CADC64  41 82 00 08 */	beq lbl_80CADC6C
/* 80CADC68  38 7D 05 68 */	addi r3, r29, 0x568
lbl_80CADC6C:
/* 80CADC6C  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CAF0E8@ha */
/* 80CADC70  38 84 F0 E8 */	addi r4, r4, l_arcName@l /* 0x80CAF0E8@l */
/* 80CADC74  80 84 00 00 */	lwz r4, 0(r4)
/* 80CADC78  4B 37 F2 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CADC7C  7C 7E 1B 78 */	mr r30, r3
/* 80CADC80  2C 1E 00 04 */	cmpwi r30, 4
/* 80CADC84  40 82 03 10 */	bne lbl_80CADF94
/* 80CADC88  38 00 00 00 */	li r0, 0
/* 80CADC8C  98 1D 0D 26 */	stb r0, 0xd26(r29)
/* 80CADC90  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80CADC94  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80CADC98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CADC9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CADCA0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CADCA4  7C 05 07 74 */	extsb r5, r0
/* 80CADCA8  4B 38 76 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80CADCAC  2C 03 00 00 */	cmpwi r3, 0
/* 80CADCB0  41 82 00 0C */	beq lbl_80CADCBC
/* 80CADCB4  38 00 00 01 */	li r0, 1
/* 80CADCB8  98 1D 0D 26 */	stb r0, 0xd26(r29)
lbl_80CADCBC:
/* 80CADCBC  7F A3 EB 78 */	mr r3, r29
/* 80CADCC0  3C 80 80 CB */	lis r4, daObjPicture_c_createHeap__FP10fopAc_ac_c@ha /* 0x80CAD2F8@ha */
/* 80CADCC4  38 84 D2 F8 */	addi r4, r4, daObjPicture_c_createHeap__FP10fopAc_ac_c@l /* 0x80CAD2F8@l */
/* 80CADCC8  38 A0 40 00 */	li r5, 0x4000
/* 80CADCCC  4B 36 C7 E5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CADCD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CADCD4  40 82 00 0C */	bne lbl_80CADCE0
/* 80CADCD8  38 60 00 05 */	li r3, 5
/* 80CADCDC  48 00 02 BC */	b lbl_80CADF98
lbl_80CADCE0:
/* 80CADCE0  3A E0 00 00 */	li r23, 0
/* 80CADCE4  3B 80 00 00 */	li r28, 0
/* 80CADCE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CADCEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CADCF0  3B 23 0F 38 */	addi r25, r3, 0xf38
lbl_80CADCF4:
/* 80CADCF4  2C 17 00 01 */	cmpwi r23, 1
/* 80CADCF8  40 82 00 10 */	bne lbl_80CADD08
/* 80CADCFC  88 1D 0D 26 */	lbz r0, 0xd26(r29)
/* 80CADD00  28 00 00 00 */	cmplwi r0, 0
/* 80CADD04  40 82 00 38 */	bne lbl_80CADD3C
lbl_80CADD08:
/* 80CADD08  7F 23 CB 78 */	mr r3, r25
/* 80CADD0C  38 1C 0C BC */	addi r0, r28, 0xcbc
/* 80CADD10  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80CADD14  7F A5 EB 78 */	mr r5, r29
/* 80CADD18  4B 3C 6C F1 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CADD1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CADD20  41 82 00 0C */	beq lbl_80CADD2C
/* 80CADD24  38 60 00 05 */	li r3, 5
/* 80CADD28  48 00 02 70 */	b lbl_80CADF98
lbl_80CADD2C:
/* 80CADD2C  3A F7 00 01 */	addi r23, r23, 1
/* 80CADD30  2C 17 00 02 */	cmpwi r23, 2
/* 80CADD34  3B 9C 00 04 */	addi r28, r28, 4
/* 80CADD38  41 80 FF BC */	blt lbl_80CADCF4
lbl_80CADD3C:
/* 80CADD3C  7F A3 EB 78 */	mr r3, r29
/* 80CADD40  48 00 07 D1 */	bl init__14daObjPicture_cFv
/* 80CADD44  7F A3 EB 78 */	mr r3, r29
/* 80CADD48  48 00 08 69 */	bl setPicModelMtx__14daObjPicture_cFv
/* 80CADD4C  7F A3 EB 78 */	mr r3, r29
/* 80CADD50  48 00 08 E9 */	bl setTmgModelMtx__14daObjPicture_cFv
/* 80CADD54  88 1D 0D 26 */	lbz r0, 0xd26(r29)
/* 80CADD58  28 00 00 00 */	cmplwi r0, 0
/* 80CADD5C  41 82 00 0C */	beq lbl_80CADD68
/* 80CADD60  80 7D 0C B8 */	lwz r3, 0xcb8(r29)
/* 80CADD64  48 00 00 08 */	b lbl_80CADD6C
lbl_80CADD68:
/* 80CADD68  80 7D 0C B4 */	lwz r3, 0xcb4(r29)
lbl_80CADD6C:
/* 80CADD6C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CADD70  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80CADD74  7F A3 EB 78 */	mr r3, r29
/* 80CADD78  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CADD7C  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80CADD80  FC 60 10 90 */	fmr f3, f2
/* 80CADD84  C0 9F 00 30 */	lfs f4, 0x30(r31)
/* 80CADD88  C0 BF 00 34 */	lfs f5, 0x34(r31)
/* 80CADD8C  C0 DF 00 38 */	lfs f6, 0x38(r31)
/* 80CADD90  4B 36 C7 B9 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CADD94  88 1D 0D 26 */	lbz r0, 0xd26(r29)
/* 80CADD98  28 00 00 00 */	cmplwi r0, 0
/* 80CADD9C  40 82 01 F8 */	bne lbl_80CADF94
/* 80CADDA0  38 7D 05 74 */	addi r3, r29, 0x574
/* 80CADDA4  38 80 00 FF */	li r4, 0xff
/* 80CADDA8  38 A0 00 FF */	li r5, 0xff
/* 80CADDAC  7F A6 EB 78 */	mr r6, r29
/* 80CADDB0  4B 3D 5A B1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CADDB4  7F A3 EB 78 */	mr r3, r29
/* 80CADDB8  38 81 00 20 */	addi r4, r1, 0x20
/* 80CADDBC  48 00 09 89 */	bl getPosTmg__14daObjPicture_cFP4cXyz
/* 80CADDC0  3A E0 00 00 */	li r23, 0
/* 80CADDC4  3B 80 00 00 */	li r28, 0
/* 80CADDC8  3C 60 80 CB */	lis r3, s_CcDCps__14daObjPicture_c@ha /* 0x80CAF110@ha */
/* 80CADDCC  3B 43 F1 10 */	addi r26, r3, s_CcDCps__14daObjPicture_c@l /* 0x80CAF110@l */
/* 80CADDD0  3B 3D 05 74 */	addi r25, r29, 0x574
lbl_80CADDD4:
/* 80CADDD4  7F 7D E2 14 */	add r27, r29, r28
/* 80CADDD8  3B 1B 06 28 */	addi r24, r27, 0x628
/* 80CADDDC  7F 03 C3 78 */	mr r3, r24
/* 80CADDE0  7F 44 D3 78 */	mr r4, r26
/* 80CADDE4  4B 3D 69 ED */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80CADDE8  93 3B 06 6C */	stw r25, 0x66c(r27)
/* 80CADDEC  7F A3 EB 78 */	mr r3, r29
/* 80CADDF0  7E E4 BB 78 */	mr r4, r23
/* 80CADDF4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CADDF8  48 00 08 CD */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CADDFC  38 7B 07 4C */	addi r3, r27, 0x74c
/* 80CADE00  38 81 00 20 */	addi r4, r1, 0x20
/* 80CADE04  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CADE08  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CADE0C  4B 5C 11 F5 */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 80CADE10  7F 03 C3 78 */	mr r3, r24
/* 80CADE14  4B 3D 6A 41 */	bl CalcTgVec__8dCcD_CpsFv
/* 80CADE18  80 1B 06 40 */	lwz r0, 0x640(r27)
/* 80CADE1C  60 00 00 40 */	ori r0, r0, 0x40
/* 80CADE20  90 1B 06 40 */	stw r0, 0x640(r27)
/* 80CADE24  3A F7 00 01 */	addi r23, r23, 1
/* 80CADE28  2C 17 00 02 */	cmpwi r23, 2
/* 80CADE2C  3B 9C 01 44 */	addi r28, r28, 0x144
/* 80CADE30  41 80 FF A4 */	blt lbl_80CADDD4
/* 80CADE34  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80CADE38  38 80 00 FF */	li r4, 0xff
/* 80CADE3C  38 A0 00 FF */	li r5, 0xff
/* 80CADE40  7F A6 EB 78 */	mr r6, r29
/* 80CADE44  4B 3D 5A 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CADE48  38 7D 08 B0 */	addi r3, r29, 0x8b0
/* 80CADE4C  3C 80 80 CB */	lis r4, s_CcDCyl_pic_at__14daObjPicture_c@ha /* 0x80CAF15C@ha */
/* 80CADE50  38 84 F1 5C */	addi r4, r4, s_CcDCyl_pic_at__14daObjPicture_c@l /* 0x80CAF15C@l */
/* 80CADE54  4B 3D 6A 61 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CADE58  38 1D 05 B0 */	addi r0, r29, 0x5b0
/* 80CADE5C  90 1D 08 F4 */	stw r0, 0x8f4(r29)
/* 80CADE60  38 7D 09 D4 */	addi r3, r29, 0x9d4
/* 80CADE64  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CADE68  4B 5C 13 75 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CADE6C  38 7D 09 D4 */	addi r3, r29, 0x9d4
/* 80CADE70  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80CADE74  4B 5C 13 85 */	bl SetH__8cM3dGCylFf
/* 80CADE78  38 7D 09 D4 */	addi r3, r29, 0x9d4
/* 80CADE7C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80CADE80  4B 5C 13 81 */	bl SetR__8cM3dGCylFf
/* 80CADE84  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80CADE88  38 80 00 FF */	li r4, 0xff
/* 80CADE8C  38 A0 00 FF */	li r5, 0xff
/* 80CADE90  7F A6 EB 78 */	mr r6, r29
/* 80CADE94  4B 3D 59 CD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CADE98  7F A3 EB 78 */	mr r3, r29
/* 80CADE9C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CADEA0  48 00 08 A5 */	bl getPosTmg__14daObjPicture_cFP4cXyz
/* 80CADEA4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80CADEA8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80CADEAC  90 61 00 08 */	stw r3, 8(r1)
/* 80CADEB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CADEB4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80CADEB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CADEBC  38 61 00 20 */	addi r3, r1, 0x20
/* 80CADEC0  4B 35 EE A5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CADEC4  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80CADEC8  4B 35 F0 7D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CADECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CADED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CADED4  38 81 00 08 */	addi r4, r1, 8
/* 80CADED8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CADEDC  4B 69 8E 91 */	bl PSMTXMultVec
/* 80CADEE0  3A C0 00 00 */	li r22, 0
/* 80CADEE4  3B 80 00 00 */	li r28, 0
/* 80CADEE8  3C 60 80 CB */	lis r3, s_CcDCps__14daObjPicture_c@ha /* 0x80CAF110@ha */
/* 80CADEEC  3B 23 F1 10 */	addi r25, r3, s_CcDCps__14daObjPicture_c@l /* 0x80CAF110@l */
/* 80CADEF0  3B 5D 05 EC */	addi r26, r29, 0x5ec
/* 80CADEF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CADEF8  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80CADEFC:
/* 80CADEFC  7F 1D E2 14 */	add r24, r29, r28
/* 80CADF00  3A F8 09 EC */	addi r23, r24, 0x9ec
/* 80CADF04  7E E3 BB 78 */	mr r3, r23
/* 80CADF08  7F 24 CB 78 */	mr r4, r25
/* 80CADF0C  4B 3D 68 C5 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80CADF10  93 58 0A 30 */	stw r26, 0xa30(r24)
/* 80CADF14  7F A3 EB 78 */	mr r3, r29
/* 80CADF18  7E C4 B3 78 */	mr r4, r22
/* 80CADF1C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CADF20  48 00 07 A5 */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CADF24  38 61 00 14 */	addi r3, r1, 0x14
/* 80CADF28  4B 35 EE 3D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CADF2C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80CADF30  4B 35 F0 15 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CADF34  7F 63 DB 78 */	mr r3, r27
/* 80CADF38  38 81 00 08 */	addi r4, r1, 8
/* 80CADF3C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CADF40  4B 69 8E 2D */	bl PSMTXMultVec
/* 80CADF44  38 78 0B 10 */	addi r3, r24, 0xb10
/* 80CADF48  38 81 00 20 */	addi r4, r1, 0x20
/* 80CADF4C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CADF50  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CADF54  4B 5C 10 AD */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 80CADF58  7E E3 BB 78 */	mr r3, r23
/* 80CADF5C  4B 3D 68 F9 */	bl CalcTgVec__8dCcD_CpsFv
/* 80CADF60  80 18 0A 04 */	lwz r0, 0xa04(r24)
/* 80CADF64  60 00 00 40 */	ori r0, r0, 0x40
/* 80CADF68  90 18 0A 04 */	stw r0, 0xa04(r24)
/* 80CADF6C  3A D6 00 01 */	addi r22, r22, 1
/* 80CADF70  2C 16 00 02 */	cmpwi r22, 2
/* 80CADF74  3B 9C 01 44 */	addi r28, r28, 0x144
/* 80CADF78  41 80 FF 84 */	blt lbl_80CADEFC
/* 80CADF7C  7F A3 EB 78 */	mr r3, r29
/* 80CADF80  48 00 07 ED */	bl setLinePos__14daObjPicture_cFv
/* 80CADF84  80 7D 0C C0 */	lwz r3, 0xcc0(r29)
/* 80CADF88  88 03 00 91 */	lbz r0, 0x91(r3)
/* 80CADF8C  60 00 00 04 */	ori r0, r0, 4
/* 80CADF90  98 03 00 91 */	stb r0, 0x91(r3)
lbl_80CADF94:
/* 80CADF94  7F C3 F3 78 */	mr r3, r30
lbl_80CADF98:
/* 80CADF98  39 61 00 60 */	addi r11, r1, 0x60
/* 80CADF9C  4B 6B 42 71 */	bl _restgpr_22
/* 80CADFA0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CADFA4  7C 08 03 A6 */	mtlr r0
/* 80CADFA8  38 21 00 60 */	addi r1, r1, 0x60
/* 80CADFAC  4E 80 00 20 */	blr 
