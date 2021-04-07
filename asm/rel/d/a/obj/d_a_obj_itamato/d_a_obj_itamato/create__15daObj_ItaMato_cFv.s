lbl_80C2971C:
/* 80C2971C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C29720  7C 08 02 A6 */	mflr r0
/* 80C29724  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C29728  39 61 00 20 */	addi r11, r1, 0x20
/* 80C2972C  4B 73 8A AD */	bl _savegpr_28
/* 80C29730  7C 7D 1B 78 */	mr r29, r3
/* 80C29734  3C 80 80 C3 */	lis r4, m__21daObj_ItaMato_Param_c@ha /* 0x80C2AB70@ha */
/* 80C29738  3B E4 AB 70 */	addi r31, r4, m__21daObj_ItaMato_Param_c@l /* 0x80C2AB70@l */
/* 80C2973C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C29740  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C29744  40 82 01 28 */	bne lbl_80C2986C
/* 80C29748  7F A0 EB 79 */	or. r0, r29, r29
/* 80C2974C  41 82 01 14 */	beq lbl_80C29860
/* 80C29750  7C 1E 03 78 */	mr r30, r0
/* 80C29754  4B 3E F4 11 */	bl __ct__10fopAc_ac_cFv
/* 80C29758  3C 60 80 C3 */	lis r3, __vt__15daObj_ItaMato_c@ha /* 0x80C2AD34@ha */
/* 80C2975C  38 03 AD 34 */	addi r0, r3, __vt__15daObj_ItaMato_c@l /* 0x80C2AD34@l */
/* 80C29760  90 1E 0A 1C */	stw r0, 0xa1c(r30)
/* 80C29764  3B 9E 05 7C */	addi r28, r30, 0x57c
/* 80C29768  7F 83 E3 78 */	mr r3, r28
/* 80C2976C  4B 44 C9 35 */	bl __ct__9dBgS_AcchFv
/* 80C29770  3C 60 80 C3 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C2ACC8@ha */
/* 80C29774  38 63 AC C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C2ACC8@l */
/* 80C29778  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80C2977C  38 03 00 0C */	addi r0, r3, 0xc
/* 80C29780  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80C29784  38 03 00 18 */	addi r0, r3, 0x18
/* 80C29788  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80C2978C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80C29790  4B 44 F6 D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C29794  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C29798  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C2979C  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80C297A0  38 7E 07 70 */	addi r3, r30, 0x770
/* 80C297A4  4B 45 9F BD */	bl __ct__10dCcD_GSttsFv
/* 80C297A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C297AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C297B0  90 7E 07 6C */	stw r3, 0x76c(r30)
/* 80C297B4  38 03 00 20 */	addi r0, r3, 0x20
/* 80C297B8  90 1E 07 70 */	stw r0, 0x770(r30)
/* 80C297BC  38 7E 07 90 */	addi r3, r30, 0x790
/* 80C297C0  4B 44 C6 ED */	bl __ct__12dBgS_AcchCirFv
/* 80C297C4  38 7E 07 D0 */	addi r3, r30, 0x7d0
/* 80C297C8  4B 63 E4 55 */	bl __ct__11cBgS_GndChkFv
/* 80C297CC  3B 9E 08 0C */	addi r28, r30, 0x80c
/* 80C297D0  7F 83 E3 78 */	mr r3, r28
/* 80C297D4  4B 45 A2 55 */	bl __ct__12dCcD_GObjInfFv
/* 80C297D8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C297DC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C297E0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C297E4  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C2AD10@ha */
/* 80C297E8  38 03 AD 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C2AD10@l */
/* 80C297EC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80C297F0  3C 60 80 C3 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C2AD1C@ha */
/* 80C297F4  38 03 AD 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C2AD1C@l */
/* 80C297F8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C297FC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C29800  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C29804  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80C29808  38 03 00 58 */	addi r0, r3, 0x58
/* 80C2980C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C29810  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C29814  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C29818  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80C2981C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C29820  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80C29824  38 03 00 84 */	addi r0, r3, 0x84
/* 80C29828  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80C2982C  3C 60 80 C3 */	lis r3, __vt__8cM3dGLin@ha /* 0x80C2AD28@ha */
/* 80C29830  38 03 AD 28 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80C2AD28@l */
/* 80C29834  90 1E 09 5C */	stw r0, 0x95c(r30)
/* 80C29838  38 7E 09 60 */	addi r3, r30, 0x960
/* 80C2983C  4B 44 E4 2D */	bl __ct__11dBgS_LinChkFv
/* 80C29840  38 7E 09 D0 */	addi r3, r30, 0x9d0
/* 80C29844  3C 80 80 C3 */	lis r4, __ct__5csXyzFv@ha /* 0x80C29AC0@ha */
/* 80C29848  38 84 9A C0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80C29AC0@l */
/* 80C2984C  3C A0 80 C3 */	lis r5, __dt__5csXyzFv@ha /* 0x80C296E0@ha */
/* 80C29850  38 A5 96 E0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80C296E0@l */
/* 80C29854  38 C0 00 06 */	li r6, 6
/* 80C29858  38 E0 00 03 */	li r7, 3
/* 80C2985C  4B 73 85 05 */	bl __construct_array
lbl_80C29860:
/* 80C29860  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80C29864  60 00 00 08 */	ori r0, r0, 8
/* 80C29868  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80C2986C:
/* 80C2986C  38 00 00 00 */	li r0, 0
/* 80C29870  98 1D 0A 14 */	stb r0, 0xa14(r29)
/* 80C29874  7F A3 EB 78 */	mr r3, r29
/* 80C29878  48 00 0D A9 */	bl getResName__15daObj_ItaMato_cFv
/* 80C2987C  7C 64 1B 78 */	mr r4, r3
/* 80C29880  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80C29884  4B 40 36 39 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C29888  7C 7E 1B 78 */	mr r30, r3
/* 80C2988C  2C 1E 00 04 */	cmpwi r30, 4
/* 80C29890  40 82 02 14 */	bne lbl_80C29AA4
/* 80C29894  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C29898  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C2989C  28 04 00 FF */	cmplwi r4, 0xff
/* 80C298A0  41 82 00 28 */	beq lbl_80C298C8
/* 80C298A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C298A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C298AC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C298B0  7C 05 07 74 */	extsb r5, r0
/* 80C298B4  4B 40 BA AD */	bl isSwitch__10dSv_info_cCFii
/* 80C298B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C298BC  41 82 00 0C */	beq lbl_80C298C8
/* 80C298C0  38 60 00 05 */	li r3, 5
/* 80C298C4  48 00 01 E4 */	b lbl_80C29AA8
lbl_80C298C8:
/* 80C298C8  7F A3 EB 78 */	mr r3, r29
/* 80C298CC  3C 80 80 C3 */	lis r4, createHeapCallBack__15daObj_ItaMato_cFP10fopAc_ac_c@ha /* 0x80C2A5D0@ha */
/* 80C298D0  38 84 A5 D0 */	addi r4, r4, createHeapCallBack__15daObj_ItaMato_cFP10fopAc_ac_c@l /* 0x80C2A5D0@l */
/* 80C298D4  38 A0 16 B0 */	li r5, 0x16b0
/* 80C298D8  4B 3F 0B D9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C298DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C298E0  40 82 00 0C */	bne lbl_80C298EC
/* 80C298E4  38 60 00 05 */	li r3, 5
/* 80C298E8  48 00 01 C0 */	b lbl_80C29AA8
lbl_80C298EC:
/* 80C298EC  38 00 00 01 */	li r0, 1
/* 80C298F0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80C298F4  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80C298F8  54 00 10 3A */	slwi r0, r0, 2
/* 80C298FC  7C 7D 02 14 */	add r3, r29, r0
/* 80C29900  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80C29904  38 03 00 24 */	addi r0, r3, 0x24
/* 80C29908  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80C2990C  7F A3 EB 78 */	mr r3, r29
/* 80C29910  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C29914  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C29918  FC 60 08 90 */	fmr f3, f1
/* 80C2991C  C0 9F 00 4C */	lfs f4, 0x4c(r31)
/* 80C29920  FC A0 20 90 */	fmr f5, f4
/* 80C29924  FC C0 20 90 */	fmr f6, f4
/* 80C29928  4B 3F 0C 21 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C2992C  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80C29930  90 01 00 08 */	stw r0, 8(r1)
/* 80C29934  38 7D 05 7C */	addi r3, r29, 0x57c
/* 80C29938  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80C2993C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80C29940  7F A6 EB 78 */	mr r6, r29
/* 80C29944  38 E0 00 01 */	li r7, 1
/* 80C29948  39 1D 07 90 */	addi r8, r29, 0x790
/* 80C2994C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80C29950  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80C29954  4B 44 C8 F5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C29958  38 7D 07 54 */	addi r3, r29, 0x754
/* 80C2995C  38 80 00 FF */	li r4, 0xff
/* 80C29960  38 A0 00 00 */	li r5, 0
/* 80C29964  7F A6 EB 78 */	mr r6, r29
/* 80C29968  4B 45 9E F9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C2996C  38 7D 08 0C */	addi r3, r29, 0x80c
/* 80C29970  3C 80 80 C3 */	lis r4, l_ccDSph@ha /* 0x80C2AC34@ha */
/* 80C29974  38 84 AC 34 */	addi r4, r4, l_ccDSph@l /* 0x80C2AC34@l */
/* 80C29978  4B 45 B0 BD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C2997C  38 1D 07 54 */	addi r0, r29, 0x754
/* 80C29980  90 1D 08 50 */	stw r0, 0x850(r29)
/* 80C29984  3C 60 80 C3 */	lis r3, tgHitCallBack__15daObj_ItaMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80C2A5F0@ha */
/* 80C29988  38 03 A5 F0 */	addi r0, r3, tgHitCallBack__15daObj_ItaMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80C2A5F0@l */
/* 80C2998C  90 1D 08 B0 */	stw r0, 0x8b0(r29)
/* 80C29990  38 7D 05 7C */	addi r3, r29, 0x57c
/* 80C29994  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C29998  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2999C  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 80C299A0  7F 84 E3 78 */	mr r4, r28
/* 80C299A4  4B 44 D1 09 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C299A8  80 1D 06 58 */	lwz r0, 0x658(r29)
/* 80C299AC  90 1D 07 D0 */	stw r0, 0x7d0(r29)
/* 80C299B0  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 80C299B4  90 1D 07 D4 */	stw r0, 0x7d4(r29)
/* 80C299B8  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80C299BC  90 1D 07 D8 */	stw r0, 0x7d8(r29)
/* 80C299C0  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 80C299C4  98 1D 07 DC */	stb r0, 0x7dc(r29)
/* 80C299C8  A0 1D 06 6C */	lhz r0, 0x66c(r29)
/* 80C299CC  B0 1D 07 E4 */	sth r0, 0x7e4(r29)
/* 80C299D0  A0 1D 06 6E */	lhz r0, 0x66e(r29)
/* 80C299D4  B0 1D 07 E6 */	sth r0, 0x7e6(r29)
/* 80C299D8  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 80C299DC  90 1D 07 E8 */	stw r0, 0x7e8(r29)
/* 80C299E0  80 1D 06 74 */	lwz r0, 0x674(r29)
/* 80C299E4  90 1D 07 EC */	stw r0, 0x7ec(r29)
/* 80C299E8  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 80C299EC  D0 1D 07 F4 */	stfs f0, 0x7f4(r29)
/* 80C299F0  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 80C299F4  D0 1D 07 F8 */	stfs f0, 0x7f8(r29)
/* 80C299F8  C0 1D 06 84 */	lfs f0, 0x684(r29)
/* 80C299FC  D0 1D 07 FC */	stfs f0, 0x7fc(r29)
/* 80C29A00  80 1D 06 88 */	lwz r0, 0x688(r29)
/* 80C29A04  90 1D 08 00 */	stw r0, 0x800(r29)
/* 80C29A08  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80C29A0C  D0 1D 08 04 */	stfs f0, 0x804(r29)
/* 80C29A10  80 1D 06 90 */	lwz r0, 0x690(r29)
/* 80C29A14  90 1D 08 08 */	stw r0, 0x808(r29)
/* 80C29A18  C0 1D 06 14 */	lfs f0, 0x614(r29)
/* 80C29A1C  D0 1D 09 EC */	stfs f0, 0x9ec(r29)
/* 80C29A20  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C29A24  C0 1D 09 EC */	lfs f0, 0x9ec(r29)
/* 80C29A28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C29A2C  41 82 00 14 */	beq lbl_80C29A40
/* 80C29A30  7F A3 EB 78 */	mr r3, r29
/* 80C29A34  48 00 0E 5D */	bl setEnvTevColor__15daObj_ItaMato_cFv
/* 80C29A38  7F A3 EB 78 */	mr r3, r29
/* 80C29A3C  48 00 0E B1 */	bl setRoomNo__15daObj_ItaMato_cFv
lbl_80C29A40:
/* 80C29A40  38 60 00 3C */	li r3, 0x3c
/* 80C29A44  4B 52 30 E9 */	bl daNpcT_offTmpBit__FUl
/* 80C29A48  38 60 00 3F */	li r3, 0x3f
/* 80C29A4C  4B 52 30 E1 */	bl daNpcT_offTmpBit__FUl
/* 80C29A50  38 60 00 40 */	li r3, 0x40
/* 80C29A54  4B 52 30 D9 */	bl daNpcT_offTmpBit__FUl
/* 80C29A58  38 60 00 41 */	li r3, 0x41
/* 80C29A5C  4B 52 30 D1 */	bl daNpcT_offTmpBit__FUl
/* 80C29A60  38 60 00 42 */	li r3, 0x42
/* 80C29A64  4B 52 30 C9 */	bl daNpcT_offTmpBit__FUl
/* 80C29A68  38 7C 3E C8 */	addi r3, r28, 0x3ec8
/* 80C29A6C  3C 80 80 C3 */	lis r4, d_a_obj_itamato__stringBase0@ha /* 0x80C2AC20@ha */
/* 80C29A70  38 84 AC 20 */	addi r4, r4, d_a_obj_itamato__stringBase0@l /* 0x80C2AC20@l */
/* 80C29A74  38 84 00 0A */	addi r4, r4, 0xa
/* 80C29A78  4B 73 EF 1D */	bl strcmp
/* 80C29A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80C29A80  40 82 00 1C */	bne lbl_80C29A9C
/* 80C29A84  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80C29A88  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80C29A8C  2C 00 00 01 */	cmpwi r0, 1
/* 80C29A90  40 82 00 0C */	bne lbl_80C29A9C
/* 80C29A94  38 00 00 01 */	li r0, 1
/* 80C29A98  98 1D 0A 18 */	stb r0, 0xa18(r29)
lbl_80C29A9C:
/* 80C29A9C  7F A3 EB 78 */	mr r3, r29
/* 80C29AA0  48 00 03 41 */	bl Execute__15daObj_ItaMato_cFv
lbl_80C29AA4:
/* 80C29AA4  7F C3 F3 78 */	mr r3, r30
lbl_80C29AA8:
/* 80C29AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C29AAC  4B 73 87 79 */	bl _restgpr_28
/* 80C29AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C29AB4  7C 08 03 A6 */	mtlr r0
/* 80C29AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C29ABC  4E 80 00 20 */	blr 
