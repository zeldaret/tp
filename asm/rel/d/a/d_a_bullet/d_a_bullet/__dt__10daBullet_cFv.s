lbl_8065594C:
/* 8065594C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80655950  7C 08 02 A6 */	mflr r0
/* 80655954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80655958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065595C  93 C1 00 08 */	stw r30, 8(r1)
/* 80655960  7C 7E 1B 79 */	or. r30, r3, r3
/* 80655964  7C 9F 23 78 */	mr r31, r4
/* 80655968  41 82 01 84 */	beq lbl_80655AEC
/* 8065596C  3C 80 80 65 */	lis r4, __vt__10daBullet_c@ha
/* 80655970  38 04 68 9C */	addi r0, r4, __vt__10daBullet_c@l
/* 80655974  90 1E 09 58 */	stw r0, 0x958(r30)
/* 80655978  48 00 08 09 */	bl getResName__10daBullet_cFv
/* 8065597C  7C 64 1B 78 */	mr r4, r3
/* 80655980  38 7E 05 68 */	addi r3, r30, 0x568
/* 80655984  4B 9D 76 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80655988  38 7E 09 00 */	addi r3, r30, 0x900
/* 8065598C  38 80 FF FF */	li r4, -1
/* 80655990  4B C1 23 04 */	b __dt__11cBgS_GndChkFv
/* 80655994  34 1E 07 C8 */	addic. r0, r30, 0x7c8
/* 80655998  41 82 00 84 */	beq lbl_80655A1C
/* 8065599C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806559A0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806559A4  90 7E 08 04 */	stw r3, 0x804(r30)
/* 806559A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 806559AC  90 1E 08 E8 */	stw r0, 0x8e8(r30)
/* 806559B0  38 03 00 84 */	addi r0, r3, 0x84
/* 806559B4  90 1E 08 FC */	stw r0, 0x8fc(r30)
/* 806559B8  34 1E 08 CC */	addic. r0, r30, 0x8cc
/* 806559BC  41 82 00 54 */	beq lbl_80655A10
/* 806559C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806559C4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806559C8  90 7E 08 E8 */	stw r3, 0x8e8(r30)
/* 806559CC  38 03 00 58 */	addi r0, r3, 0x58
/* 806559D0  90 1E 08 FC */	stw r0, 0x8fc(r30)
/* 806559D4  34 1E 08 EC */	addic. r0, r30, 0x8ec
/* 806559D8  41 82 00 10 */	beq lbl_806559E8
/* 806559DC  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha
/* 806559E0  38 03 68 90 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806559E4  90 1E 08 FC */	stw r0, 0x8fc(r30)
lbl_806559E8:
/* 806559E8  34 1E 08 CC */	addic. r0, r30, 0x8cc
/* 806559EC  41 82 00 24 */	beq lbl_80655A10
/* 806559F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806559F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806559F8  90 1E 08 E8 */	stw r0, 0x8e8(r30)
/* 806559FC  34 1E 08 CC */	addic. r0, r30, 0x8cc
/* 80655A00  41 82 00 10 */	beq lbl_80655A10
/* 80655A04  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 80655A08  38 03 68 84 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80655A0C  90 1E 08 E4 */	stw r0, 0x8e4(r30)
lbl_80655A10:
/* 80655A10  38 7E 07 C8 */	addi r3, r30, 0x7c8
/* 80655A14  38 80 00 00 */	li r4, 0
/* 80655A18  4B A2 E6 CC */	b __dt__12dCcD_GObjInfFv
lbl_80655A1C:
/* 80655A1C  34 1E 07 88 */	addic. r0, r30, 0x788
/* 80655A20  41 82 00 28 */	beq lbl_80655A48
/* 80655A24  3C 60 80 65 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80655A28  38 03 68 78 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80655A2C  90 1E 07 94 */	stw r0, 0x794(r30)
/* 80655A30  38 7E 07 9C */	addi r3, r30, 0x79c
/* 80655A34  38 80 FF FF */	li r4, -1
/* 80655A38  4B C1 94 E0 */	b __dt__8cM3dGCirFv
/* 80655A3C  38 7E 07 88 */	addi r3, r30, 0x788
/* 80655A40  38 80 00 00 */	li r4, 0
/* 80655A44  4B C1 26 6C */	b __dt__13cBgS_PolyInfoFv
lbl_80655A48:
/* 80655A48  34 1E 07 4C */	addic. r0, r30, 0x74c
/* 80655A4C  41 82 00 54 */	beq lbl_80655AA0
/* 80655A50  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80655A54  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80655A58  90 7E 07 64 */	stw r3, 0x764(r30)
/* 80655A5C  38 03 00 20 */	addi r0, r3, 0x20
/* 80655A60  90 1E 07 68 */	stw r0, 0x768(r30)
/* 80655A64  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80655A68  41 82 00 24 */	beq lbl_80655A8C
/* 80655A6C  3C 60 80 65 */	lis r3, __vt__10dCcD_GStts@ha
/* 80655A70  38 03 68 6C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80655A74  90 1E 07 68 */	stw r0, 0x768(r30)
/* 80655A78  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80655A7C  41 82 00 10 */	beq lbl_80655A8C
/* 80655A80  3C 60 80 65 */	lis r3, __vt__10cCcD_GStts@ha
/* 80655A84  38 03 68 60 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80655A88  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80655A8C:
/* 80655A8C  34 1E 07 4C */	addic. r0, r30, 0x74c
/* 80655A90  41 82 00 10 */	beq lbl_80655AA0
/* 80655A94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80655A98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80655A9C  90 1E 07 64 */	stw r0, 0x764(r30)
lbl_80655AA0:
/* 80655AA0  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80655AA4  41 82 00 2C */	beq lbl_80655AD0
/* 80655AA8  3C 60 80 65 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80655AAC  38 63 68 3C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80655AB0  90 7E 05 84 */	stw r3, 0x584(r30)
/* 80655AB4  38 03 00 0C */	addi r0, r3, 0xc
/* 80655AB8  90 1E 05 88 */	stw r0, 0x588(r30)
/* 80655ABC  38 03 00 18 */	addi r0, r3, 0x18
/* 80655AC0  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80655AC4  38 7E 05 74 */	addi r3, r30, 0x574
/* 80655AC8  38 80 00 00 */	li r4, 0
/* 80655ACC  4B A2 04 C8 */	b __dt__9dBgS_AcchFv
lbl_80655AD0:
/* 80655AD0  7F C3 F3 78 */	mr r3, r30
/* 80655AD4  38 80 00 00 */	li r4, 0
/* 80655AD8  4B 9C 31 B4 */	b __dt__10fopAc_ac_cFv
/* 80655ADC  7F E0 07 35 */	extsh. r0, r31
/* 80655AE0  40 81 00 0C */	ble lbl_80655AEC
/* 80655AE4  7F C3 F3 78 */	mr r3, r30
/* 80655AE8  4B C7 92 54 */	b __dl__FPv
lbl_80655AEC:
/* 80655AEC  7F C3 F3 78 */	mr r3, r30
/* 80655AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80655AF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80655AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80655AFC  7C 08 03 A6 */	mtlr r0
/* 80655B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80655B04  4E 80 00 20 */	blr 
