lbl_80AB4D34:
/* 80AB4D34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB4D38  7C 08 02 A6 */	mflr r0
/* 80AB4D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB4D40  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB4D44  4B 8A D4 98 */	b _savegpr_29
/* 80AB4D48  7C 7F 1B 78 */	mr r31, r3
/* 80AB4D4C  3C A0 80 AB */	lis r5, m__17daNpcPray_Param_c@ha
/* 80AB4D50  3B C5 58 08 */	addi r30, r5, m__17daNpcPray_Param_c@l
/* 80AB4D54  3B A0 00 00 */	li r29, 0
/* 80AB4D58  80 04 00 00 */	lwz r0, 0(r4)
/* 80AB4D5C  2C 00 00 14 */	cmpwi r0, 0x14
/* 80AB4D60  41 82 00 D0 */	beq lbl_80AB4E30
/* 80AB4D64  40 80 01 04 */	bge lbl_80AB4E68
/* 80AB4D68  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AB4D6C  41 82 00 08 */	beq lbl_80AB4D74
/* 80AB4D70  48 00 00 F8 */	b lbl_80AB4E68
lbl_80AB4D74:
/* 80AB4D74  80 9F 0C 94 */	lwz r4, 0xc94(r31)
/* 80AB4D78  3C 04 00 01 */	addis r0, r4, 1
/* 80AB4D7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AB4D80  40 82 00 68 */	bne lbl_80AB4DE8
/* 80AB4D84  4B FF FD 9D */	bl createHeart__11daNpcPray_cFv
/* 80AB4D88  7C 64 1B 78 */	mr r4, r3
/* 80AB4D8C  3C 04 00 01 */	addis r0, r4, 1
/* 80AB4D90  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AB4D94  41 82 00 D8 */	beq lbl_80AB4E6C
/* 80AB4D98  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AB4D9C  4B 69 B9 3C */	b entry__18daNpcF_ActorMngr_cFUi
/* 80AB4DA0  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AB4DA4  4B 69 B9 48 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4DA8  28 03 00 00 */	cmplwi r3, 0
/* 80AB4DAC  41 82 00 C0 */	beq lbl_80AB4E6C
/* 80AB4DB0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AB4DB4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80AB4DB8  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80AB4DBC  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80AB4DC0  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80AB4DC4  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80AB4DC8  38 00 00 00 */	li r0, 0
/* 80AB4DCC  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80AB4DD0  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80AB4DD4  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80AB4DD8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80AB4DDC  D0 03 05 34 */	stfs f0, 0x534(r3)
/* 80AB4DE0  3B A0 00 01 */	li r29, 1
/* 80AB4DE4  48 00 00 88 */	b lbl_80AB4E6C
lbl_80AB4DE8:
/* 80AB4DE8  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AB4DEC  4B 69 B9 00 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4DF0  28 03 00 00 */	cmplwi r3, 0
/* 80AB4DF4  41 82 00 78 */	beq lbl_80AB4E6C
/* 80AB4DF8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AB4DFC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80AB4E00  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80AB4E04  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80AB4E08  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80AB4E0C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80AB4E10  38 00 00 00 */	li r0, 0
/* 80AB4E14  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80AB4E18  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80AB4E1C  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80AB4E20  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 80AB4E24  D0 03 05 34 */	stfs f0, 0x534(r3)
/* 80AB4E28  3B A0 00 01 */	li r29, 1
/* 80AB4E2C  48 00 00 40 */	b lbl_80AB4E6C
lbl_80AB4E30:
/* 80AB4E30  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AB4E34  4B 69 B8 B8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4E38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB4E3C  41 82 00 30 */	beq lbl_80AB4E6C
/* 80AB4E40  38 80 00 00 */	li r4, 0
/* 80AB4E44  4B 56 58 88 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80AB4E48  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80AB4E4C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80AB4E50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AB4E54  40 80 00 18 */	bge lbl_80AB4E6C
/* 80AB4E58  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80AB4E5C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80AB4E60  3B A0 00 01 */	li r29, 1
/* 80AB4E64  48 00 00 08 */	b lbl_80AB4E6C
lbl_80AB4E68:
/* 80AB4E68  3B A0 00 01 */	li r29, 1
lbl_80AB4E6C:
/* 80AB4E6C  7F A3 EB 78 */	mr r3, r29
/* 80AB4E70  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB4E74  4B 8A D3 B4 */	b _restgpr_29
/* 80AB4E78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB4E7C  7C 08 03 A6 */	mtlr r0
/* 80AB4E80  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB4E84  4E 80 00 20 */	blr 
