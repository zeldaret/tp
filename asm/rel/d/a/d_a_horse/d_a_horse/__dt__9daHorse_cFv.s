lbl_8084478C:
/* 8084478C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80844790  7C 08 02 A6 */	mflr r0
/* 80844794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80844798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084479C  93 C1 00 08 */	stw r30, 8(r1)
/* 808447A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 808447A4  7C 9F 23 78 */	mr r31, r4
/* 808447A8  41 82 03 58 */	beq lbl_80844B00
/* 808447AC  38 7E 10 A4 */	addi r3, r30, 0x10a4
/* 808447B0  81 9E 10 A4 */	lwz r12, 0x10a4(r30)
/* 808447B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 808447B8  7D 89 03 A6 */	mtctr r12
/* 808447BC  4E 80 04 21 */	bctrl 
/* 808447C0  38 7E 05 68 */	addi r3, r30, 0x568
/* 808447C4  3C 80 80 84 */	lis r4, l_arcName@ha /* 0x808454B8@ha */
/* 808447C8  38 84 54 B8 */	addi r4, r4, l_arcName@l /* 0x808454B8@l */
/* 808447CC  4B 7E 88 3D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 808447D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808447D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808447D8  80 03 5D B8 */	lwz r0, 0x5db8(r3)
/* 808447DC  7C 00 F0 40 */	cmplw r0, r30
/* 808447E0  40 82 00 0C */	bne lbl_808447EC
/* 808447E4  38 00 00 00 */	li r0, 0
/* 808447E8  90 03 5D B8 */	stw r0, 0x5db8(r3)
lbl_808447EC:
/* 808447EC  38 7E 13 24 */	addi r3, r30, 0x1324
/* 808447F0  3C 80 80 84 */	lis r4, __dt__17daHorseFootData_cFv@ha /* 0x80844F70@ha */
/* 808447F4  38 84 4F 70 */	addi r4, r4, __dt__17daHorseFootData_cFv@l /* 0x80844F70@l */
/* 808447F8  38 A0 00 E4 */	li r5, 0xe4
/* 808447FC  38 C0 00 04 */	li r6, 4
/* 80844800  4B B1 D4 E9 */	bl __destroy_arr
/* 80844804  38 7E 12 08 */	addi r3, r30, 0x1208
/* 80844808  38 80 FF FF */	li r4, -1
/* 8084480C  4B A0 57 3D */	bl __dt__10dMsgFlow_cFv
/* 80844810  38 7E 11 50 */	addi r3, r30, 0x1150
/* 80844814  3C 80 80 84 */	lis r4, __dt__13daHorseRein_cFv@ha /* 0x80844FB0@ha */
/* 80844818  38 84 4F B0 */	addi r4, r4, __dt__13daHorseRein_cFv@l /* 0x80844FB0@l */
/* 8084481C  38 A0 00 28 */	li r5, 0x28
/* 80844820  38 C0 00 03 */	li r6, 3
/* 80844824  4B B1 D4 C5 */	bl __destroy_arr
/* 80844828  38 7E 10 A4 */	addi r3, r30, 0x10a4
/* 8084482C  38 80 FF FF */	li r4, -1
/* 80844830  4B A8 08 E5 */	bl __dt__14Z2CreatureRideFv
/* 80844834  34 1E 0F 6C */	addic. r0, r30, 0xf6c
/* 80844838  41 82 00 84 */	beq lbl_808448BC
/* 8084483C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80844840  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80844844  90 7E 0F A8 */	stw r3, 0xfa8(r30)
/* 80844848  38 03 00 2C */	addi r0, r3, 0x2c
/* 8084484C  90 1E 10 8C */	stw r0, 0x108c(r30)
/* 80844850  38 03 00 84 */	addi r0, r3, 0x84
/* 80844854  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80844858  34 1E 10 70 */	addic. r0, r30, 0x1070
/* 8084485C  41 82 00 54 */	beq lbl_808448B0
/* 80844860  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80844864  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80844868  90 7E 10 8C */	stw r3, 0x108c(r30)
/* 8084486C  38 03 00 58 */	addi r0, r3, 0x58
/* 80844870  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80844874  34 1E 10 90 */	addic. r0, r30, 0x1090
/* 80844878  41 82 00 10 */	beq lbl_80844888
/* 8084487C  3C 60 80 84 */	lis r3, __vt__8cM3dGSph@ha /* 0x80845AC8@ha */
/* 80844880  38 03 5A C8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80845AC8@l */
/* 80844884  90 1E 10 A0 */	stw r0, 0x10a0(r30)
lbl_80844888:
/* 80844888  34 1E 10 70 */	addic. r0, r30, 0x1070
/* 8084488C  41 82 00 24 */	beq lbl_808448B0
/* 80844890  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80844894  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80844898  90 1E 10 8C */	stw r0, 0x108c(r30)
/* 8084489C  34 1E 10 70 */	addic. r0, r30, 0x1070
/* 808448A0  41 82 00 10 */	beq lbl_808448B0
/* 808448A4  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha /* 0x80845AE0@ha */
/* 808448A8  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80845AE0@l */
/* 808448AC  90 1E 10 88 */	stw r0, 0x1088(r30)
lbl_808448B0:
/* 808448B0  38 7E 0F 6C */	addi r3, r30, 0xf6c
/* 808448B4  38 80 00 00 */	li r4, 0
/* 808448B8  4B 83 F8 2D */	bl __dt__12dCcD_GObjInfFv
lbl_808448BC:
/* 808448BC  34 1E 0E 30 */	addic. r0, r30, 0xe30
/* 808448C0  41 82 00 84 */	beq lbl_80844944
/* 808448C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 808448C8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 808448CC  90 7E 0E 6C */	stw r3, 0xe6c(r30)
/* 808448D0  38 03 00 2C */	addi r0, r3, 0x2c
/* 808448D4  90 1E 0F 50 */	stw r0, 0xf50(r30)
/* 808448D8  38 03 00 84 */	addi r0, r3, 0x84
/* 808448DC  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 808448E0  34 1E 0F 34 */	addic. r0, r30, 0xf34
/* 808448E4  41 82 00 54 */	beq lbl_80844938
/* 808448E8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 808448EC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 808448F0  90 7E 0F 50 */	stw r3, 0xf50(r30)
/* 808448F4  38 03 00 58 */	addi r0, r3, 0x58
/* 808448F8  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 808448FC  34 1E 0F 54 */	addic. r0, r30, 0xf54
/* 80844900  41 82 00 10 */	beq lbl_80844910
/* 80844904  3C 60 80 84 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80845AD4@ha */
/* 80844908  38 03 5A D4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80845AD4@l */
/* 8084490C  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_80844910:
/* 80844910  34 1E 0F 34 */	addic. r0, r30, 0xf34
/* 80844914  41 82 00 24 */	beq lbl_80844938
/* 80844918  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8084491C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80844920  90 1E 0F 50 */	stw r0, 0xf50(r30)
/* 80844924  34 1E 0F 34 */	addic. r0, r30, 0xf34
/* 80844928  41 82 00 10 */	beq lbl_80844938
/* 8084492C  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha /* 0x80845AE0@ha */
/* 80844930  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80845AE0@l */
/* 80844934  90 1E 0F 4C */	stw r0, 0xf4c(r30)
lbl_80844938:
/* 80844938  38 7E 0E 30 */	addi r3, r30, 0xe30
/* 8084493C  38 80 00 00 */	li r4, 0
/* 80844940  4B 83 F7 A5 */	bl __dt__12dCcD_GObjInfFv
lbl_80844944:
/* 80844944  34 1E 0C F4 */	addic. r0, r30, 0xcf4
/* 80844948  41 82 00 84 */	beq lbl_808449CC
/* 8084494C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80844950  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80844954  90 7E 0D 30 */	stw r3, 0xd30(r30)
/* 80844958  38 03 00 2C */	addi r0, r3, 0x2c
/* 8084495C  90 1E 0E 14 */	stw r0, 0xe14(r30)
/* 80844960  38 03 00 84 */	addi r0, r3, 0x84
/* 80844964  90 1E 0E 2C */	stw r0, 0xe2c(r30)
/* 80844968  34 1E 0D F8 */	addic. r0, r30, 0xdf8
/* 8084496C  41 82 00 54 */	beq lbl_808449C0
/* 80844970  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80844974  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80844978  90 7E 0E 14 */	stw r3, 0xe14(r30)
/* 8084497C  38 03 00 58 */	addi r0, r3, 0x58
/* 80844980  90 1E 0E 2C */	stw r0, 0xe2c(r30)
/* 80844984  34 1E 0E 18 */	addic. r0, r30, 0xe18
/* 80844988  41 82 00 10 */	beq lbl_80844998
/* 8084498C  3C 60 80 84 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80845AD4@ha */
/* 80844990  38 03 5A D4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80845AD4@l */
/* 80844994  90 1E 0E 2C */	stw r0, 0xe2c(r30)
lbl_80844998:
/* 80844998  34 1E 0D F8 */	addic. r0, r30, 0xdf8
/* 8084499C  41 82 00 24 */	beq lbl_808449C0
/* 808449A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 808449A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 808449A8  90 1E 0E 14 */	stw r0, 0xe14(r30)
/* 808449AC  34 1E 0D F8 */	addic. r0, r30, 0xdf8
/* 808449B0  41 82 00 10 */	beq lbl_808449C0
/* 808449B4  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha /* 0x80845AE0@ha */
/* 808449B8  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80845AE0@l */
/* 808449BC  90 1E 0E 10 */	stw r0, 0xe10(r30)
lbl_808449C0:
/* 808449C0  38 7E 0C F4 */	addi r3, r30, 0xcf4
/* 808449C4  38 80 00 00 */	li r4, 0
/* 808449C8  4B 83 F7 1D */	bl __dt__12dCcD_GObjInfFv
lbl_808449CC:
/* 808449CC  38 7E 09 40 */	addi r3, r30, 0x940
/* 808449D0  3C 80 80 84 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x808450C8@ha */
/* 808449D4  38 84 50 C8 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x808450C8@l */
/* 808449D8  38 A0 01 3C */	li r5, 0x13c
/* 808449DC  38 C0 00 03 */	li r6, 3
/* 808449E0  4B B1 D3 09 */	bl __destroy_arr
/* 808449E4  38 7E 08 D0 */	addi r3, r30, 0x8d0
/* 808449E8  38 80 FF FF */	li r4, -1
/* 808449EC  4B 83 3A D1 */	bl __dt__16dBgS_HorseLinChkFv
/* 808449F0  34 1E 08 94 */	addic. r0, r30, 0x894
/* 808449F4  41 82 00 54 */	beq lbl_80844A48
/* 808449F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 808449FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80844A00  90 7E 08 AC */	stw r3, 0x8ac(r30)
/* 80844A04  38 03 00 20 */	addi r0, r3, 0x20
/* 80844A08  90 1E 08 B0 */	stw r0, 0x8b0(r30)
/* 80844A0C  34 1E 08 B0 */	addic. r0, r30, 0x8b0
/* 80844A10  41 82 00 24 */	beq lbl_80844A34
/* 80844A14  3C 60 80 84 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80845AA8@ha */
/* 80844A18  38 03 5A A8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80845AA8@l */
/* 80844A1C  90 1E 08 B0 */	stw r0, 0x8b0(r30)
/* 80844A20  34 1E 08 B0 */	addic. r0, r30, 0x8b0
/* 80844A24  41 82 00 10 */	beq lbl_80844A34
/* 80844A28  3C 60 80 84 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80845A9C@ha */
/* 80844A2C  38 03 5A 9C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80845A9C@l */
/* 80844A30  90 1E 08 B0 */	stw r0, 0x8b0(r30)
lbl_80844A34:
/* 80844A34  34 1E 08 94 */	addic. r0, r30, 0x894
/* 80844A38  41 82 00 10 */	beq lbl_80844A48
/* 80844A3C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80844A40  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80844A44  90 1E 08 AC */	stw r0, 0x8ac(r30)
lbl_80844A48:
/* 80844A48  34 1E 06 BC */	addic. r0, r30, 0x6bc
/* 80844A4C  41 82 00 2C */	beq lbl_80844A78
/* 80844A50  3C 60 80 84 */	lis r3, __vt__14dBgS_HorseAcch@ha /* 0x80845AEC@ha */
/* 80844A54  38 63 5A EC */	addi r3, r3, __vt__14dBgS_HorseAcch@l /* 0x80845AEC@l */
/* 80844A58  90 7E 06 CC */	stw r3, 0x6cc(r30)
/* 80844A5C  38 03 00 0C */	addi r0, r3, 0xc
/* 80844A60  90 1E 06 D0 */	stw r0, 0x6d0(r30)
/* 80844A64  38 03 00 18 */	addi r0, r3, 0x18
/* 80844A68  90 1E 06 E0 */	stw r0, 0x6e0(r30)
/* 80844A6C  38 7E 06 BC */	addi r3, r30, 0x6bc
/* 80844A70  38 80 00 00 */	li r4, 0
/* 80844A74  4B 83 15 21 */	bl __dt__9dBgS_AcchFv
lbl_80844A78:
/* 80844A78  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 80844A7C  3C 80 80 84 */	lis r4, __dt__12dBgS_AcchCirFv@ha /* 0x808452E4@ha */
/* 80844A80  38 84 52 E4 */	addi r4, r4, __dt__12dBgS_AcchCirFv@l /* 0x808452E4@l */
/* 80844A84  38 A0 00 40 */	li r5, 0x40
/* 80844A88  38 C0 00 03 */	li r6, 3
/* 80844A8C  4B B1 D2 5D */	bl __destroy_arr
/* 80844A90  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80844A94  3C 80 80 84 */	lis r4, __dt__16daPy_frameCtrl_cFv@ha /* 0x80845354@ha */
/* 80844A98  38 84 53 54 */	addi r4, r4, __dt__16daPy_frameCtrl_cFv@l /* 0x80845354@l */
/* 80844A9C  38 A0 00 18 */	li r5, 0x18
/* 80844AA0  38 C0 00 03 */	li r6, 3
/* 80844AA4  4B B1 D2 45 */	bl __destroy_arr
/* 80844AA8  38 7E 05 94 */	addi r3, r30, 0x594
/* 80844AAC  3C 80 80 84 */	lis r4, __dt__19mDoExt_AnmRatioPackFv@ha /* 0x808453FC@ha */
/* 80844AB0  38 84 53 FC */	addi r4, r4, __dt__19mDoExt_AnmRatioPackFv@l /* 0x808453FC@l */
/* 80844AB4  38 A0 00 08 */	li r5, 8
/* 80844AB8  38 C0 00 03 */	li r6, 3
/* 80844ABC  4B B1 D2 2D */	bl __destroy_arr
/* 80844AC0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80844AC4  41 82 00 20 */	beq lbl_80844AE4
/* 80844AC8  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80844ACC  41 82 00 18 */	beq lbl_80844AE4
/* 80844AD0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80844AD4  41 82 00 10 */	beq lbl_80844AE4
/* 80844AD8  3C 60 80 84 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80845B10@ha */
/* 80844ADC  38 03 5B 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80845B10@l */
/* 80844AE0  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80844AE4:
/* 80844AE4  7F C3 F3 78 */	mr r3, r30
/* 80844AE8  38 80 00 00 */	li r4, 0
/* 80844AEC  4B 7D 41 A1 */	bl __dt__10fopAc_ac_cFv
/* 80844AF0  7F E0 07 35 */	extsh. r0, r31
/* 80844AF4  40 81 00 0C */	ble lbl_80844B00
/* 80844AF8  7F C3 F3 78 */	mr r3, r30
/* 80844AFC  4B A8 A2 41 */	bl __dl__FPv
lbl_80844B00:
/* 80844B00  7F C3 F3 78 */	mr r3, r30
/* 80844B04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80844B08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80844B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80844B10  7C 08 03 A6 */	mtlr r0
/* 80844B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80844B18  4E 80 00 20 */	blr 
