lbl_800D382C:
/* 800D382C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D3830  7C 08 02 A6 */	mflr r0
/* 800D3834  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D3838  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D383C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D3840  7C 7E 1B 78 */	mr r30, r3
/* 800D3844  4B FE 67 0D */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D3848  2C 03 00 00 */	cmpwi r3, 0
/* 800D384C  41 82 00 0C */	beq lbl_800D3858
/* 800D3850  38 60 00 01 */	li r3, 1
/* 800D3854  48 00 02 70 */	b lbl_800D3AC4
lbl_800D3858:
/* 800D3858  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D385C  7F C3 F3 78 */	mr r3, r30
/* 800D3860  38 80 00 01 */	li r4, 1
/* 800D3864  4B FE 7A 4D */	bl setBodyAngleXReadyAnime__9daAlink_cFi
/* 800D3868  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800D386C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D3870  3C 80 80 39 */	lis r4, m__18daAlinkHIO_move_c0@ha
/* 800D3874  38 84 D6 BC */	addi r4, r4, m__18daAlinkHIO_move_c0@l
/* 800D3878  C0 44 00 38 */	lfs f2, 0x38(r4)
/* 800D387C  48 19 CE C5 */	bl cLib_chaseF__FPfff
/* 800D3880  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800D3884  64 00 08 00 */	oris r0, r0, 0x800
/* 800D3888  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800D388C  7F C3 F3 78 */	mr r3, r30
/* 800D3890  4B FF E8 6D */	bl setComboReserb__9daAlink_cFv
/* 800D3894  7F C3 F3 78 */	mr r3, r30
/* 800D3898  4B FF ED ED */	bl checkCutTurnCharge__9daAlink_cFv
/* 800D389C  7F C3 F3 78 */	mr r3, r30
/* 800D38A0  4B FF F3 B5 */	bl checkCutAtnActorChange__9daAlink_cFv
/* 800D38A4  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 800D38A8  28 00 00 1A */	cmplwi r0, 0x1a
/* 800D38AC  41 82 00 0C */	beq lbl_800D38B8
/* 800D38B0  28 00 00 20 */	cmplwi r0, 0x20
/* 800D38B4  40 82 00 10 */	bne lbl_800D38C4
lbl_800D38B8:
/* 800D38B8  38 00 00 05 */	li r0, 5
/* 800D38BC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800D38C0  48 00 00 0C */	b lbl_800D38CC
lbl_800D38C4:
/* 800D38C4  38 00 00 04 */	li r0, 4
/* 800D38C8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800D38CC:
/* 800D38CC  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 800D38D0  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800D38D4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D38D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D38DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D38E0  3C 60 43 30 */	lis r3, 0x4330
/* 800D38E4  90 61 00 08 */	stw r3, 8(r1)
/* 800D38E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D38EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D38F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D38F4  4C 41 13 82 */	cror 2, 1, 2
/* 800D38F8  40 82 00 14 */	bne lbl_800D390C
/* 800D38FC  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800D3900  60 00 01 00 */	ori r0, r0, 0x100
/* 800D3904  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800D3908  48 00 00 34 */	b lbl_800D393C
lbl_800D390C:
/* 800D390C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800D3910  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D3914  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D3918  90 61 00 08 */	stw r3, 8(r1)
/* 800D391C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D3920  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D3924  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D3928  4C 41 13 82 */	cror 2, 1, 2
/* 800D392C  40 82 00 10 */	bne lbl_800D393C
/* 800D3930  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800D3934  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 800D3938  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_800D393C:
/* 800D393C  7F E3 FB 78 */	mr r3, r31
/* 800D3940  48 08 AB 8D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D3944  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D3948  41 82 00 9C */	beq lbl_800D39E4
/* 800D394C  7F C3 F3 78 */	mr r3, r30
/* 800D3950  38 80 00 01 */	li r4, 1
/* 800D3954  4B FF DA DD */	bl resetCombo__9daAlink_cFi
/* 800D3958  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800D395C  2C 00 00 00 */	cmpwi r0, 0
/* 800D3960  40 81 00 38 */	ble lbl_800D3998
/* 800D3964  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3968  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D396C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3970  40 81 00 18 */	ble lbl_800D3988
/* 800D3974  7F C3 F3 78 */	mr r3, r30
/* 800D3978  38 80 00 03 */	li r4, 3
/* 800D397C  4B FF ED E5 */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D3980  2C 03 00 00 */	cmpwi r3, 0
/* 800D3984  40 82 01 3C */	bne lbl_800D3AC0
lbl_800D3988:
/* 800D3988  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 800D398C  38 03 FF FF */	addi r0, r3, -1
/* 800D3990  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800D3994  48 00 01 2C */	b lbl_800D3AC0
lbl_800D3998:
/* 800D3998  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800D399C  28 00 00 24 */	cmplwi r0, 0x24
/* 800D39A0  41 82 00 0C */	beq lbl_800D39AC
/* 800D39A4  28 00 00 54 */	cmplwi r0, 0x54
/* 800D39A8  40 82 00 1C */	bne lbl_800D39C4
lbl_800D39AC:
/* 800D39AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D39B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D39B4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D39B8  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800D39BC  4B F7 47 C1 */	bl cutEnd__16dEvent_manager_cFi
/* 800D39C0  48 00 01 00 */	b lbl_800D3AC0
lbl_800D39C4:
/* 800D39C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D39C8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D39CC  38 00 00 02 */	li r0, 2
/* 800D39D0  98 1E 2F 98 */	stb r0, 0x2f98(r30)
/* 800D39D4  7F C3 F3 78 */	mr r3, r30
/* 800D39D8  38 80 00 00 */	li r4, 0
/* 800D39DC  4B FE 66 F5 */	bl checkNextAction__9daAlink_cFi
/* 800D39E0  48 00 00 E0 */	b lbl_800D3AC0
lbl_800D39E4:
/* 800D39E4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D39E8  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D39EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D39F0  40 81 00 18 */	ble lbl_800D3A08
/* 800D39F4  7F C3 F3 78 */	mr r3, r30
/* 800D39F8  38 80 00 03 */	li r4, 3
/* 800D39FC  4B FF ED 65 */	bl checkCutCancelNextMode__9daAlink_cFi
/* 800D3A00  2C 03 00 00 */	cmpwi r3, 0
/* 800D3A04  40 82 00 BC */	bne lbl_800D3AC0
lbl_800D3A08:
/* 800D3A08  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3A0C  C0 1E 34 84 */	lfs f0, 0x3484(r30)
/* 800D3A10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3A14  40 81 00 10 */	ble lbl_800D3A24
/* 800D3A18  7F C3 F3 78 */	mr r3, r30
/* 800D3A1C  38 80 00 01 */	li r4, 1
/* 800D3A20  4B FF DA 11 */	bl resetCombo__9daAlink_cFi
lbl_800D3A24:
/* 800D3A24  7F C3 F3 78 */	mr r3, r30
/* 800D3A28  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800D3A2C  4B FF DF 9D */	bl changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800D3A30  2C 03 00 00 */	cmpwi r3, 0
/* 800D3A34  41 82 00 0C */	beq lbl_800D3A40
/* 800D3A38  38 60 00 01 */	li r3, 1
/* 800D3A3C  48 00 00 88 */	b lbl_800D3AC4
lbl_800D3A40:
/* 800D3A40  7F C3 F3 78 */	mr r3, r30
/* 800D3A44  A8 9E 30 10 */	lha r4, 0x3010(r30)
/* 800D3A48  4B FD FC ED */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800D3A4C  7F C3 F3 78 */	mr r3, r30
/* 800D3A50  4B FD FB E1 */	bl getShapeAngleYAtnActor__9daAlink_cFv
/* 800D3A54  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800D3A58  48 19 D3 CD */	bl cLib_distanceAngleS__Fss
/* 800D3A5C  2C 03 08 00 */	cmpwi r3, 0x800
/* 800D3A60  40 80 00 0C */	bge lbl_800D3A6C
/* 800D3A64  38 00 00 01 */	li r0, 1
/* 800D3A68  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_800D3A6C:
/* 800D3A6C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D3A70  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D3A74  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D3A78  C0 1E 34 78 */	lfs f0, 0x3478(r30)
/* 800D3A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3A80  4C 41 13 82 */	cror 2, 1, 2
/* 800D3A84  40 82 00 3C */	bne lbl_800D3AC0
/* 800D3A88  C0 1E 34 7C */	lfs f0, 0x347c(r30)
/* 800D3A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D3A90  40 80 00 30 */	bge lbl_800D3AC0
/* 800D3A94  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D3A98  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D3A9C  40 82 00 18 */	bne lbl_800D3AB4
/* 800D3AA0  7F C3 F3 78 */	mr r3, r30
/* 800D3AA4  80 9E 32 D0 */	lwz r4, 0x32d0(r30)
/* 800D3AA8  4B FE B6 45 */	bl seStartSwordCut__9daAlink_cFUl
/* 800D3AAC  C0 1E 34 80 */	lfs f0, 0x3480(r30)
/* 800D3AB0  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800D3AB4:
/* 800D3AB4  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D3AB8  60 00 00 02 */	ori r0, r0, 2
/* 800D3ABC  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800D3AC0:
/* 800D3AC0  38 60 00 01 */	li r3, 1
lbl_800D3AC4:
/* 800D3AC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D3AC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D3ACC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D3AD0  7C 08 03 A6 */	mtlr r0
/* 800D3AD4  38 21 00 20 */	addi r1, r1, 0x20
/* 800D3AD8  4E 80 00 20 */	blr 
