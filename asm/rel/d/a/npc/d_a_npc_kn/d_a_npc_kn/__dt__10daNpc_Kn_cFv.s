lbl_80A2AA0C:
/* 80A2AA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2AA10  7C 08 02 A6 */	mflr r0
/* 80A2AA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2AA18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2AA1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A2AA20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A2AA24  7C 9F 23 78 */	mr r31, r4
/* 80A2AA28  41 82 04 88 */	beq lbl_80A2AEB0
/* 80A2AA2C  3C 60 80 A4 */	lis r3, __vt__10daNpc_Kn_c@ha
/* 80A2AA30  38 03 32 40 */	addi r0, r3, __vt__10daNpc_Kn_c@l
/* 80A2AA34  90 1E 0E 40 */	stw r0, 0xe40(r30)
/* 80A2AA38  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A2AA3C  28 00 00 00 */	cmplwi r0, 0
/* 80A2AA40  41 82 00 14 */	beq lbl_80A2AA54
/* 80A2AA44  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A2AA48  4B 5E 68 C8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A2AA4C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A2AA50  4B 5E 68 C0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A2AA54:
/* 80A2AA54  7F C3 F3 78 */	mr r3, r30
/* 80A2AA58  88 1E 15 AC */	lbz r0, 0x15ac(r30)
/* 80A2AA5C  54 00 10 3A */	slwi r0, r0, 2
/* 80A2AA60  3C 80 80 A4 */	lis r4, l_loadResPtrnList@ha
/* 80A2AA64  38 84 0F 04 */	addi r4, r4, l_loadResPtrnList@l
/* 80A2AA68  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A2AA6C  3C A0 80 A4 */	lis r5, l_resNameList@ha
/* 80A2AA70  38 A5 0E C0 */	addi r5, r5, l_resNameList@l
/* 80A2AA74  48 00 DE 3D */	bl deleteRes__10daNpc_Kn_cFPCScPPCc
/* 80A2AA78  34 1E 17 2C */	addic. r0, r30, 0x172c
/* 80A2AA7C  41 82 00 10 */	beq lbl_80A2AA8C
/* 80A2AA80  3C 60 80 A4 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80A2AA84  38 03 32 34 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80A2AA88  90 1E 17 50 */	stw r0, 0x1750(r30)
lbl_80A2AA8C:
/* 80A2AA8C  38 7E 15 E0 */	addi r3, r30, 0x15e0
/* 80A2AA90  3C 80 80 A3 */	lis r4, __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv@ha
/* 80A2AA94  38 84 AF 98 */	addi r4, r4, __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv@l
/* 80A2AA98  38 A0 00 5C */	li r5, 0x5c
/* 80A2AA9C  38 C0 00 03 */	li r6, 3
/* 80A2AAA0  4B 93 72 48 */	b __destroy_arr
/* 80A2AAA4  34 1E 15 88 */	addic. r0, r30, 0x1588
/* 80A2AAA8  41 82 00 20 */	beq lbl_80A2AAC8
/* 80A2AAAC  34 1E 15 88 */	addic. r0, r30, 0x1588
/* 80A2AAB0  41 82 00 18 */	beq lbl_80A2AAC8
/* 80A2AAB4  34 1E 15 88 */	addic. r0, r30, 0x1588
/* 80A2AAB8  41 82 00 10 */	beq lbl_80A2AAC8
/* 80A2AABC  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2AAC0  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2AAC4  90 1E 15 88 */	stw r0, 0x1588(r30)
lbl_80A2AAC8:
/* 80A2AAC8  38 7E 13 18 */	addi r3, r30, 0x1318
/* 80A2AACC  3C 80 80 A3 */	lis r4, __dt__8dCcD_SphFv@ha
/* 80A2AAD0  38 84 AE CC */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80A2AAD4  38 A0 01 38 */	li r5, 0x138
/* 80A2AAD8  38 C0 00 02 */	li r6, 2
/* 80A2AADC  4B 93 72 0C */	b __destroy_arr
/* 80A2AAE0  34 1E 11 DC */	addic. r0, r30, 0x11dc
/* 80A2AAE4  41 82 00 84 */	beq lbl_80A2AB68
/* 80A2AAE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A2AAEC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A2AAF0  90 7E 12 18 */	stw r3, 0x1218(r30)
/* 80A2AAF4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A2AAF8  90 1E 12 FC */	stw r0, 0x12fc(r30)
/* 80A2AAFC  38 03 00 84 */	addi r0, r3, 0x84
/* 80A2AB00  90 1E 13 14 */	stw r0, 0x1314(r30)
/* 80A2AB04  34 1E 12 E0 */	addic. r0, r30, 0x12e0
/* 80A2AB08  41 82 00 54 */	beq lbl_80A2AB5C
/* 80A2AB0C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A2AB10  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A2AB14  90 7E 12 FC */	stw r3, 0x12fc(r30)
/* 80A2AB18  38 03 00 58 */	addi r0, r3, 0x58
/* 80A2AB1C  90 1E 13 14 */	stw r0, 0x1314(r30)
/* 80A2AB20  34 1E 13 00 */	addic. r0, r30, 0x1300
/* 80A2AB24  41 82 00 10 */	beq lbl_80A2AB34
/* 80A2AB28  3C 60 80 A4 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A2AB2C  38 03 32 1C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A2AB30  90 1E 13 14 */	stw r0, 0x1314(r30)
lbl_80A2AB34:
/* 80A2AB34  34 1E 12 E0 */	addic. r0, r30, 0x12e0
/* 80A2AB38  41 82 00 24 */	beq lbl_80A2AB5C
/* 80A2AB3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A2AB40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A2AB44  90 1E 12 FC */	stw r0, 0x12fc(r30)
/* 80A2AB48  34 1E 12 E0 */	addic. r0, r30, 0x12e0
/* 80A2AB4C  41 82 00 10 */	beq lbl_80A2AB5C
/* 80A2AB50  3C 60 80 A4 */	lis r3, __vt__8cM3dGAab@ha
/* 80A2AB54  38 03 32 10 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A2AB58  90 1E 12 F8 */	stw r0, 0x12f8(r30)
lbl_80A2AB5C:
/* 80A2AB5C  38 7E 11 DC */	addi r3, r30, 0x11dc
/* 80A2AB60  38 80 00 00 */	li r4, 0
/* 80A2AB64  4B 65 95 80 */	b __dt__12dCcD_GObjInfFv
lbl_80A2AB68:
/* 80A2AB68  34 1E 0D 3C */	addic. r0, r30, 0xd3c
/* 80A2AB6C  41 82 00 1C */	beq lbl_80A2AB88
/* 80A2AB70  38 7E 0D 3C */	addi r3, r30, 0xd3c
/* 80A2AB74  3C 80 80 A4 */	lis r4, __dt__5csXyzFv@ha
/* 80A2AB78  38 84 B7 24 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A2AB7C  38 A0 00 06 */	li r5, 6
/* 80A2AB80  38 C0 00 02 */	li r6, 2
/* 80A2AB84  4B 93 71 64 */	b __destroy_arr
lbl_80A2AB88:
/* 80A2AB88  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80A2AB8C  41 82 00 B4 */	beq lbl_80A2AC40
/* 80A2AB90  3C 60 80 A4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A2AB94  38 03 32 04 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A2AB98  90 1E 0D 38 */	stw r0, 0xd38(r30)
/* 80A2AB9C  38 7E 0C C0 */	addi r3, r30, 0xcc0
/* 80A2ABA0  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A2ABA4  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2ABA8  38 A0 00 0C */	li r5, 0xc
/* 80A2ABAC  38 C0 00 03 */	li r6, 3
/* 80A2ABB0  4B 93 71 38 */	b __destroy_arr
/* 80A2ABB4  38 7E 0C 9C */	addi r3, r30, 0xc9c
/* 80A2ABB8  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A2ABBC  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2ABC0  38 A0 00 0C */	li r5, 0xc
/* 80A2ABC4  38 C0 00 03 */	li r6, 3
/* 80A2ABC8  4B 93 71 20 */	b __destroy_arr
/* 80A2ABCC  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80A2ABD0  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A2ABD4  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2ABD8  38 A0 00 0C */	li r5, 0xc
/* 80A2ABDC  38 C0 00 03 */	li r6, 3
/* 80A2ABE0  4B 93 71 08 */	b __destroy_arr
/* 80A2ABE4  38 7E 0C 54 */	addi r3, r30, 0xc54
/* 80A2ABE8  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A2ABEC  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2ABF0  38 A0 00 0C */	li r5, 0xc
/* 80A2ABF4  38 C0 00 03 */	li r6, 3
/* 80A2ABF8  4B 93 70 F0 */	b __destroy_arr
/* 80A2ABFC  38 7E 0C 30 */	addi r3, r30, 0xc30
/* 80A2AC00  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A2AC04  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2AC08  38 A0 00 0C */	li r5, 0xc
/* 80A2AC0C  38 C0 00 03 */	li r6, 3
/* 80A2AC10  4B 93 70 D8 */	b __destroy_arr
/* 80A2AC14  38 7E 0C 0C */	addi r3, r30, 0xc0c
/* 80A2AC18  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A2AC1C  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A2AC20  38 A0 00 0C */	li r5, 0xc
/* 80A2AC24  38 C0 00 03 */	li r6, 3
/* 80A2AC28  4B 93 70 C0 */	b __destroy_arr
/* 80A2AC2C  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80A2AC30  41 82 00 10 */	beq lbl_80A2AC40
/* 80A2AC34  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A2AC38  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A2AC3C  90 1E 0B E0 */	stw r0, 0xbe0(r30)
lbl_80A2AC40:
/* 80A2AC40  34 1E 0B D4 */	addic. r0, r30, 0xbd4
/* 80A2AC44  41 82 00 10 */	beq lbl_80A2AC54
/* 80A2AC48  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A2AC4C  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A2AC50  90 1E 0B D8 */	stw r0, 0xbd8(r30)
lbl_80A2AC54:
/* 80A2AC54  34 1E 0B CC */	addic. r0, r30, 0xbcc
/* 80A2AC58  41 82 00 10 */	beq lbl_80A2AC68
/* 80A2AC5C  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A2AC60  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A2AC64  90 1E 0B D0 */	stw r0, 0xbd0(r30)
lbl_80A2AC68:
/* 80A2AC68  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80A2AC6C  41 82 00 10 */	beq lbl_80A2AC7C
/* 80A2AC70  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A2AC74  38 03 31 EC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A2AC78  90 1E 0B C8 */	stw r0, 0xbc8(r30)
lbl_80A2AC7C:
/* 80A2AC7C  34 1E 0B 84 */	addic. r0, r30, 0xb84
/* 80A2AC80  41 82 00 10 */	beq lbl_80A2AC90
/* 80A2AC84  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A2AC88  38 03 31 EC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A2AC8C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80A2AC90:
/* 80A2AC90  38 7E 0B 14 */	addi r3, r30, 0xb14
/* 80A2AC94  38 80 FF FF */	li r4, -1
/* 80A2AC98  4B 64 D0 44 */	b __dt__11dBgS_LinChkFv
/* 80A2AC9C  38 7E 0A C0 */	addi r3, r30, 0xac0
/* 80A2ACA0  38 80 FF FF */	li r4, -1
/* 80A2ACA4  4B 64 C9 4C */	b __dt__11dBgS_GndChkFv
/* 80A2ACA8  34 1E 0A 74 */	addic. r0, r30, 0xa74
/* 80A2ACAC  41 82 00 54 */	beq lbl_80A2AD00
/* 80A2ACB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A2ACB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A2ACB8  90 7E 0A 8C */	stw r3, 0xa8c(r30)
/* 80A2ACBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80A2ACC0  90 1E 0A 90 */	stw r0, 0xa90(r30)
/* 80A2ACC4  34 1E 0A 90 */	addic. r0, r30, 0xa90
/* 80A2ACC8  41 82 00 24 */	beq lbl_80A2ACEC
/* 80A2ACCC  3C 60 80 A4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A2ACD0  38 03 31 E0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A2ACD4  90 1E 0A 90 */	stw r0, 0xa90(r30)
/* 80A2ACD8  34 1E 0A 90 */	addic. r0, r30, 0xa90
/* 80A2ACDC  41 82 00 10 */	beq lbl_80A2ACEC
/* 80A2ACE0  3C 60 80 A4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A2ACE4  38 03 31 D4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A2ACE8  90 1E 0A 90 */	stw r0, 0xa90(r30)
lbl_80A2ACEC:
/* 80A2ACEC  34 1E 0A 74 */	addic. r0, r30, 0xa74
/* 80A2ACF0  41 82 00 10 */	beq lbl_80A2AD00
/* 80A2ACF4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A2ACF8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A2ACFC  90 1E 0A 8C */	stw r0, 0xa8c(r30)
lbl_80A2AD00:
/* 80A2AD00  38 7E 09 A8 */	addi r3, r30, 0x9a8
/* 80A2AD04  38 80 FF FF */	li r4, -1
/* 80A2AD08  4B 81 F2 40 */	b __dt__10dMsgFlow_cFv
/* 80A2AD0C  38 7E 09 64 */	addi r3, r30, 0x964
/* 80A2AD10  38 80 FF FF */	li r4, -1
/* 80A2AD14  4B 83 CF 80 */	b __dt__11cBgS_GndChkFv
/* 80A2AD18  34 1E 08 E4 */	addic. r0, r30, 0x8e4
/* 80A2AD1C  41 82 00 28 */	beq lbl_80A2AD44
/* 80A2AD20  3C 60 80 A4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A2AD24  38 03 31 C8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A2AD28  90 1E 08 F0 */	stw r0, 0x8f0(r30)
/* 80A2AD2C  38 7E 08 F8 */	addi r3, r30, 0x8f8
/* 80A2AD30  38 80 FF FF */	li r4, -1
/* 80A2AD34  4B 84 41 E4 */	b __dt__8cM3dGCirFv
/* 80A2AD38  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A2AD3C  38 80 00 00 */	li r4, 0
/* 80A2AD40  4B 83 D3 70 */	b __dt__13cBgS_PolyInfoFv
lbl_80A2AD44:
/* 80A2AD44  34 1E 08 A8 */	addic. r0, r30, 0x8a8
/* 80A2AD48  41 82 00 54 */	beq lbl_80A2AD9C
/* 80A2AD4C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A2AD50  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A2AD54  90 7E 08 C0 */	stw r3, 0x8c0(r30)
/* 80A2AD58  38 03 00 20 */	addi r0, r3, 0x20
/* 80A2AD5C  90 1E 08 C4 */	stw r0, 0x8c4(r30)
/* 80A2AD60  34 1E 08 C4 */	addic. r0, r30, 0x8c4
/* 80A2AD64  41 82 00 24 */	beq lbl_80A2AD88
/* 80A2AD68  3C 60 80 A4 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A2AD6C  38 03 31 E0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A2AD70  90 1E 08 C4 */	stw r0, 0x8c4(r30)
/* 80A2AD74  34 1E 08 C4 */	addic. r0, r30, 0x8c4
/* 80A2AD78  41 82 00 10 */	beq lbl_80A2AD88
/* 80A2AD7C  3C 60 80 A4 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A2AD80  38 03 31 D4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A2AD84  90 1E 08 C4 */	stw r0, 0x8c4(r30)
lbl_80A2AD88:
/* 80A2AD88  34 1E 08 A8 */	addic. r0, r30, 0x8a8
/* 80A2AD8C  41 82 00 10 */	beq lbl_80A2AD9C
/* 80A2AD90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A2AD94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A2AD98  90 1E 08 C0 */	stw r0, 0x8c0(r30)
lbl_80A2AD9C:
/* 80A2AD9C  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 80A2ADA0  41 82 00 2C */	beq lbl_80A2ADCC
/* 80A2ADA4  3C 60 80 A4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A2ADA8  38 63 31 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A2ADAC  90 7E 06 E0 */	stw r3, 0x6e0(r30)
/* 80A2ADB0  38 03 00 0C */	addi r0, r3, 0xc
/* 80A2ADB4  90 1E 06 E4 */	stw r0, 0x6e4(r30)
/* 80A2ADB8  38 03 00 18 */	addi r0, r3, 0x18
/* 80A2ADBC  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 80A2ADC0  38 7E 06 D0 */	addi r3, r30, 0x6d0
/* 80A2ADC4  38 80 00 00 */	li r4, 0
/* 80A2ADC8  4B 64 B1 CC */	b __dt__9dBgS_AcchFv
lbl_80A2ADCC:
/* 80A2ADCC  34 1E 06 B8 */	addic. r0, r30, 0x6b8
/* 80A2ADD0  41 82 00 20 */	beq lbl_80A2ADF0
/* 80A2ADD4  34 1E 06 B8 */	addic. r0, r30, 0x6b8
/* 80A2ADD8  41 82 00 18 */	beq lbl_80A2ADF0
/* 80A2ADDC  34 1E 06 B8 */	addic. r0, r30, 0x6b8
/* 80A2ADE0  41 82 00 10 */	beq lbl_80A2ADF0
/* 80A2ADE4  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2ADE8  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2ADEC  90 1E 06 B8 */	stw r0, 0x6b8(r30)
lbl_80A2ADF0:
/* 80A2ADF0  34 1E 06 A0 */	addic. r0, r30, 0x6a0
/* 80A2ADF4  41 82 00 20 */	beq lbl_80A2AE14
/* 80A2ADF8  34 1E 06 A0 */	addic. r0, r30, 0x6a0
/* 80A2ADFC  41 82 00 18 */	beq lbl_80A2AE14
/* 80A2AE00  34 1E 06 A0 */	addic. r0, r30, 0x6a0
/* 80A2AE04  41 82 00 10 */	beq lbl_80A2AE14
/* 80A2AE08  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2AE0C  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2AE10  90 1E 06 A0 */	stw r0, 0x6a0(r30)
lbl_80A2AE14:
/* 80A2AE14  34 1E 06 88 */	addic. r0, r30, 0x688
/* 80A2AE18  41 82 00 20 */	beq lbl_80A2AE38
/* 80A2AE1C  34 1E 06 88 */	addic. r0, r30, 0x688
/* 80A2AE20  41 82 00 18 */	beq lbl_80A2AE38
/* 80A2AE24  34 1E 06 88 */	addic. r0, r30, 0x688
/* 80A2AE28  41 82 00 10 */	beq lbl_80A2AE38
/* 80A2AE2C  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2AE30  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2AE34  90 1E 06 88 */	stw r0, 0x688(r30)
lbl_80A2AE38:
/* 80A2AE38  34 1E 06 70 */	addic. r0, r30, 0x670
/* 80A2AE3C  41 82 00 20 */	beq lbl_80A2AE5C
/* 80A2AE40  34 1E 06 70 */	addic. r0, r30, 0x670
/* 80A2AE44  41 82 00 18 */	beq lbl_80A2AE5C
/* 80A2AE48  34 1E 06 70 */	addic. r0, r30, 0x670
/* 80A2AE4C  41 82 00 10 */	beq lbl_80A2AE5C
/* 80A2AE50  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2AE54  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2AE58  90 1E 06 70 */	stw r0, 0x670(r30)
lbl_80A2AE5C:
/* 80A2AE5C  34 1E 06 54 */	addic. r0, r30, 0x654
/* 80A2AE60  41 82 00 20 */	beq lbl_80A2AE80
/* 80A2AE64  34 1E 06 54 */	addic. r0, r30, 0x654
/* 80A2AE68  41 82 00 18 */	beq lbl_80A2AE80
/* 80A2AE6C  34 1E 06 54 */	addic. r0, r30, 0x654
/* 80A2AE70  41 82 00 10 */	beq lbl_80A2AE80
/* 80A2AE74  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2AE78  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2AE7C  90 1E 06 54 */	stw r0, 0x654(r30)
lbl_80A2AE80:
/* 80A2AE80  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80A2AE84  38 80 FF FF */	li r4, -1
/* 80A2AE88  4B 89 55 98 */	b __dt__10Z2CreatureFv
/* 80A2AE8C  28 1E 00 00 */	cmplwi r30, 0
/* 80A2AE90  41 82 00 10 */	beq lbl_80A2AEA0
/* 80A2AE94  7F C3 F3 78 */	mr r3, r30
/* 80A2AE98  38 80 00 00 */	li r4, 0
/* 80A2AE9C  4B 5E DD F0 */	b __dt__10fopAc_ac_cFv
lbl_80A2AEA0:
/* 80A2AEA0  7F E0 07 35 */	extsh. r0, r31
/* 80A2AEA4  40 81 00 0C */	ble lbl_80A2AEB0
/* 80A2AEA8  7F C3 F3 78 */	mr r3, r30
/* 80A2AEAC  4B 8A 3E 90 */	b __dl__FPv
lbl_80A2AEB0:
/* 80A2AEB0  7F C3 F3 78 */	mr r3, r30
/* 80A2AEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2AEB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A2AEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2AEC0  7C 08 03 A6 */	mtlr r0
/* 80A2AEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2AEC8  4E 80 00 20 */	blr 
