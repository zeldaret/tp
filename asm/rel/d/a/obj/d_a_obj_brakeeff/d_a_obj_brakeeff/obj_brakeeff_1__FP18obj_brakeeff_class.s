lbl_8046DD38:
/* 8046DD38  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8046DD3C  7C 08 02 A6 */	mflr r0
/* 8046DD40  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8046DD44  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8046DD48  4B EF 44 81 */	bl _savegpr_24
/* 8046DD4C  7C 7D 1B 78 */	mr r29, r3
/* 8046DD50  3C 60 80 47 */	lis r3, lit_3879@ha /* 0x8046E528@ha */
/* 8046DD54  3B C3 E5 28 */	addi r30, r3, lit_3879@l /* 0x8046E528@l */
/* 8046DD58  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8046DD5C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8046DD60  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8046DD64  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8046DD68  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8046DD6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8046DD70  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8046DD74  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8046DD78  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8046DD7C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8046DD80  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 8046DD84  28 00 00 00 */	cmplwi r0, 0
/* 8046DD88  40 82 00 14 */	bne lbl_8046DD9C
/* 8046DD8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8046DD90  EC 01 00 2A */	fadds f0, f1, f0
/* 8046DD94  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8046DD98  48 00 00 28 */	b lbl_8046DDC0
lbl_8046DD9C:
/* 8046DD9C  28 00 00 01 */	cmplwi r0, 1
/* 8046DDA0  40 82 00 20 */	bne lbl_8046DDC0
/* 8046DDA4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8046DDA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8046DDAC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8046DDB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8046DDB4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8046DDB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8046DDBC  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8046DDC0:
/* 8046DDC0  A8 1D 05 80 */	lha r0, 0x580(r29)
/* 8046DDC4  2C 00 00 01 */	cmpwi r0, 1
/* 8046DDC8  41 82 00 24 */	beq lbl_8046DDEC
/* 8046DDCC  40 80 01 9C */	bge lbl_8046DF68
/* 8046DDD0  2C 00 00 00 */	cmpwi r0, 0
/* 8046DDD4  40 80 00 08 */	bge lbl_8046DDDC
/* 8046DDD8  48 00 01 90 */	b lbl_8046DF68
lbl_8046DDDC:
/* 8046DDDC  38 00 00 01 */	li r0, 1
/* 8046DDE0  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 8046DDE4  38 00 00 3C */	li r0, 0x3c
/* 8046DDE8  B0 1D 05 82 */	sth r0, 0x582(r29)
lbl_8046DDEC:
/* 8046DDEC  3B 00 00 00 */	li r24, 0
/* 8046DDF0  3B 80 00 00 */	li r28, 0
/* 8046DDF4  3B 60 00 00 */	li r27, 0
/* 8046DDF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046DDFC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046DE00  3C 60 80 47 */	lis r3, e_name@ha /* 0x8046E540@ha */
/* 8046DE04  3B 43 E5 40 */	addi r26, r3, e_name@l /* 0x8046E540@l */
lbl_8046DE08:
/* 8046DE08  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8046DE0C  38 00 00 FF */	li r0, 0xff
/* 8046DE10  90 01 00 08 */	stw r0, 8(r1)
/* 8046DE14  38 80 00 00 */	li r4, 0
/* 8046DE18  90 81 00 0C */	stw r4, 0xc(r1)
/* 8046DE1C  38 00 FF FF */	li r0, -1
/* 8046DE20  90 01 00 10 */	stw r0, 0x10(r1)
/* 8046DE24  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046DE28  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046DE2C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8046DE30  3B 3B 06 FC */	addi r25, r27, 0x6fc
/* 8046DE34  7C 9D C8 2E */	lwzx r4, r29, r25
/* 8046DE38  38 A0 00 00 */	li r5, 0
/* 8046DE3C  7C DA E2 2E */	lhzx r6, r26, r28
/* 8046DE40  38 E1 00 44 */	addi r7, r1, 0x44
/* 8046DE44  39 00 00 00 */	li r8, 0
/* 8046DE48  39 3D 04 DC */	addi r9, r29, 0x4dc
/* 8046DE4C  39 41 00 38 */	addi r10, r1, 0x38
/* 8046DE50  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8046DE54  4B BD F6 79 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046DE58  7C 7D C9 2E */	stwx r3, r29, r25
/* 8046DE5C  3B 18 00 01 */	addi r24, r24, 1
/* 8046DE60  2C 18 00 02 */	cmpwi r24, 2
/* 8046DE64  3B 9C 00 02 */	addi r28, r28, 2
/* 8046DE68  3B 7B 00 04 */	addi r27, r27, 4
/* 8046DE6C  41 80 FF 9C */	blt lbl_8046DE08
/* 8046DE70  A8 1D 05 82 */	lha r0, 0x582(r29)
/* 8046DE74  2C 00 00 00 */	cmpwi r0, 0
/* 8046DE78  40 82 00 F0 */	bne lbl_8046DF68
/* 8046DE7C  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 8046DE80  38 81 00 44 */	addi r4, r1, 0x44
/* 8046DE84  4B E0 17 C5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8046DE88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046DE8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046DE90  38 63 23 3C */	addi r3, r3, 0x233c
/* 8046DE94  38 9D 05 C4 */	addi r4, r29, 0x5c4
/* 8046DE98  4B DF 6D 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 8046DE9C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8046DEA0  4B C1 65 C1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8046DEA4  28 03 00 00 */	cmplwi r3, 0
/* 8046DEA8  41 82 00 C0 */	beq lbl_8046DF68
/* 8046DEAC  38 00 00 02 */	li r0, 2
/* 8046DEB0  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 8046DEB4  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8046DEB8  4B C1 66 41 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8046DEBC  90 61 00 50 */	stw r3, 0x50(r1)
/* 8046DEC0  38 61 00 50 */	addi r3, r1, 0x50
/* 8046DEC4  4B C1 9B 95 */	bl at_power_check__FP11dCcU_AtInfo
/* 8046DEC8  38 61 00 20 */	addi r3, r1, 0x20
/* 8046DECC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8046DED0  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8046DED4  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8046DED8  4B DF 8C 5D */	bl __mi__4cXyzCFRC3Vec
/* 8046DEDC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8046DEE0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8046DEE4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8046DEE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8046DEEC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8046DEF0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8046DEF4  4B DF 97 81 */	bl cM_atan2s__Fff
/* 8046DEF8  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8046DEFC  3B 00 00 02 */	li r24, 2
/* 8046DF00  3B 80 00 04 */	li r28, 4
/* 8046DF04  3C 60 80 47 */	lis r3, e_name@ha /* 0x8046E540@ha */
/* 8046DF08  3B 63 E5 40 */	addi r27, r3, e_name@l /* 0x8046E540@l */
lbl_8046DF0C:
/* 8046DF0C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8046DF10  38 80 00 00 */	li r4, 0
/* 8046DF14  90 81 00 08 */	stw r4, 8(r1)
/* 8046DF18  38 00 FF FF */	li r0, -1
/* 8046DF1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046DF20  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046DF24  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046DF28  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046DF2C  38 80 00 00 */	li r4, 0
/* 8046DF30  7C BB E2 2E */	lhzx r5, r27, r28
/* 8046DF34  38 C1 00 44 */	addi r6, r1, 0x44
/* 8046DF38  38 E0 00 00 */	li r7, 0
/* 8046DF3C  39 1D 04 DC */	addi r8, r29, 0x4dc
/* 8046DF40  39 21 00 38 */	addi r9, r1, 0x38
/* 8046DF44  39 40 00 FF */	li r10, 0xff
/* 8046DF48  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8046DF4C  4B BD EB 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046DF50  3B 18 00 01 */	addi r24, r24, 1
/* 8046DF54  2C 18 00 05 */	cmpwi r24, 5
/* 8046DF58  3B 9C 00 02 */	addi r28, r28, 2
/* 8046DF5C  41 80 FF B0 */	blt lbl_8046DF0C
/* 8046DF60  7F A3 EB 78 */	mr r3, r29
/* 8046DF64  4B BA BD 19 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8046DF68:
/* 8046DF68  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8046DF6C  4B EF 42 A9 */	bl _restgpr_24
/* 8046DF70  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8046DF74  7C 08 03 A6 */	mtlr r0
/* 8046DF78  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8046DF7C  4E 80 00 20 */	blr 
