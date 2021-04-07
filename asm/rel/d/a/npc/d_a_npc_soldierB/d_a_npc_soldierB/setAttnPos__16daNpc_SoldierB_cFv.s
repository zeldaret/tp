lbl_80AF3B38:
/* 80AF3B38  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80AF3B3C  7C 08 02 A6 */	mflr r0
/* 80AF3B40  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80AF3B44  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80AF3B48  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80AF3B4C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80AF3B50  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80AF3B54  39 61 00 90 */	addi r11, r1, 0x90
/* 80AF3B58  4B 86 E6 71 */	bl _savegpr_24
/* 80AF3B5C  7C 7D 1B 78 */	mr r29, r3
/* 80AF3B60  3C 60 80 AF */	lis r3, lit_1109@ha /* 0x80AF5E30@ha */
/* 80AF3B64  3B C3 5E 30 */	addi r30, r3, lit_1109@l /* 0x80AF5E30@l */
/* 80AF3B68  3C 60 80 AF */	lis r3, m__22daNpc_SoldierB_Param_c@ha /* 0x80AF5AD4@ha */
/* 80AF3B6C  3B E3 5A D4 */	addi r31, r3, m__22daNpc_SoldierB_Param_c@l /* 0x80AF5AD4@l */
/* 80AF3B70  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80AF3B74  7C 00 07 75 */	extsb. r0, r0
/* 80AF3B78  40 82 00 34 */	bne lbl_80AF3BAC
/* 80AF3B7C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80AF3B80  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 80AF3B84  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80AF3B88  38 7E 00 60 */	addi r3, r30, 0x60
/* 80AF3B8C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80AF3B90  D0 23 00 08 */	stfs f1, 8(r3)
/* 80AF3B94  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AF537C@ha */
/* 80AF3B98  38 84 53 7C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AF537C@l */
/* 80AF3B9C  38 BE 00 50 */	addi r5, r30, 0x50
/* 80AF3BA0  4B FF F0 99 */	bl __register_global_object
/* 80AF3BA4  38 00 00 01 */	li r0, 1
/* 80AF3BA8  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80AF3BAC:
/* 80AF3BAC  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80AF3BB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3BB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3BB8  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80AF3BBC  4B 51 88 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 80AF3BC0  38 7D 09 84 */	addi r3, r29, 0x984
/* 80AF3BC4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80AF3BC8  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80AF3BCC  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 80AF3BD0  4B 77 BE 6D */	bl cLib_addCalc2__FPffff
/* 80AF3BD4  38 7D 09 8C */	addi r3, r29, 0x98c
/* 80AF3BD8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80AF3BDC  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80AF3BE0  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 80AF3BE4  4B 77 BE 59 */	bl cLib_addCalc2__FPffff
/* 80AF3BE8  3B 00 00 00 */	li r24, 0
/* 80AF3BEC  3B 80 00 00 */	li r28, 0
/* 80AF3BF0  3B 60 00 00 */	li r27, 0
/* 80AF3BF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80AF3BF8  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80AF3BFC  C3 DF 00 80 */	lfs f30, 0x80(r31)
/* 80AF3C00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3C04  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80AF3C08:
/* 80AF3C08  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 80AF3C0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80AF3C10  7C 39 04 2E */	lfsx f1, r25, r0
/* 80AF3C14  38 1B 09 84 */	addi r0, r27, 0x984
/* 80AF3C18  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80AF3C1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AF3C20  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80AF3C24  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80AF3C28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AF3C2C  7F 43 D3 78 */	mr r3, r26
/* 80AF3C30  38 81 00 30 */	addi r4, r1, 0x30
/* 80AF3C34  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AF3C38  4B 85 31 35 */	bl PSMTXMultVec
/* 80AF3C3C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80AF3C40  FC 00 00 50 */	fneg f0, f0
/* 80AF3C44  FC 00 00 1E */	fctiwz f0, f0
/* 80AF3C48  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80AF3C4C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80AF3C50  7C 7D E2 14 */	add r3, r29, r28
/* 80AF3C54  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80AF3C58  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80AF3C5C  FC 00 00 50 */	fneg f0, f0
/* 80AF3C60  FC 00 00 1E */	fctiwz f0, f0
/* 80AF3C64  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80AF3C68  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AF3C6C  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80AF3C70  3B 18 00 01 */	addi r24, r24, 1
/* 80AF3C74  2C 18 00 03 */	cmpwi r24, 3
/* 80AF3C78  3B 9C 00 06 */	addi r28, r28, 6
/* 80AF3C7C  3B 7B 00 04 */	addi r27, r27, 4
/* 80AF3C80  41 80 FF 88 */	blt lbl_80AF3C08
/* 80AF3C84  38 7D 09 92 */	addi r3, r29, 0x992
/* 80AF3C88  38 80 00 00 */	li r4, 0
/* 80AF3C8C  38 A0 05 55 */	li r5, 0x555
/* 80AF3C90  4B 77 CA 41 */	bl cLib_chaseS__FPsss
/* 80AF3C94  A8 1D 0E 14 */	lha r0, 0xe14(r29)
/* 80AF3C98  2C 00 00 01 */	cmpwi r0, 1
/* 80AF3C9C  40 82 00 2C */	bne lbl_80AF3CC8
/* 80AF3CA0  38 60 00 00 */	li r3, 0
/* 80AF3CA4  38 80 00 00 */	li r4, 0
/* 80AF3CA8  38 00 00 03 */	li r0, 3
/* 80AF3CAC  7C 09 03 A6 */	mtctr r0
lbl_80AF3CB0:
/* 80AF3CB0  7C BD 1A 14 */	add r5, r29, r3
/* 80AF3CB4  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 80AF3CB8  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 80AF3CBC  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 80AF3CC0  38 63 00 06 */	addi r3, r3, 6
/* 80AF3CC4  42 00 FF EC */	bdnz lbl_80AF3CB0
lbl_80AF3CC8:
/* 80AF3CC8  7F A3 EB 78 */	mr r3, r29
/* 80AF3CCC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AF3CD0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AF3CD4  7D 89 03 A6 */	mtctr r12
/* 80AF3CD8  4E 80 04 21 */	bctrl 
/* 80AF3CDC  7F A3 EB 78 */	mr r3, r29
/* 80AF3CE0  48 00 0D 29 */	bl lookat__16daNpc_SoldierB_cFv
/* 80AF3CE4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF3CE8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF3CEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF3CF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF3CF4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80AF3CF8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3CFC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3D00  4B 85 27 B1 */	bl PSMTXCopy
/* 80AF3D04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3D08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3D0C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AF3D10  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80AF3D14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AF3D18  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80AF3D1C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AF3D20  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80AF3D24  38 9E 00 60 */	addi r4, r30, 0x60
/* 80AF3D28  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AF3D2C  4B 85 30 41 */	bl PSMTXMultVec
/* 80AF3D30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3D34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3D38  38 9E 00 60 */	addi r4, r30, 0x60
/* 80AF3D3C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80AF3D40  4B 85 30 2D */	bl PSMTXMultVec
/* 80AF3D44  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AF3D48  38 81 00 30 */	addi r4, r1, 0x30
/* 80AF3D4C  4B 77 CF 29 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AF3D50  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80AF3D54  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80AF3D58  38 81 00 30 */	addi r4, r1, 0x30
/* 80AF3D5C  4B 77 CE A9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AF3D60  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80AF3D64  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 80AF3D68  28 04 00 00 */	cmplwi r4, 0
/* 80AF3D6C  41 82 01 84 */	beq lbl_80AF3EF0
/* 80AF3D70  38 61 00 18 */	addi r3, r1, 0x18
/* 80AF3D74  38 BD 05 38 */	addi r5, r29, 0x538
/* 80AF3D78  4B 77 2D BD */	bl __mi__4cXyzCFRC3Vec
/* 80AF3D7C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AF3D80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AF3D84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80AF3D88  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF3D8C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80AF3D90  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AF3D94  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80AF3D98  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80AF3D9C  7C 03 02 14 */	add r0, r3, r0
/* 80AF3DA0  7C 00 00 D0 */	neg r0, r0
/* 80AF3DA4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AF3DA8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80AF3DAC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80AF3DB0  4B 77 38 C5 */	bl cM_atan2s__Fff
/* 80AF3DB4  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80AF3DB8  7C 00 1A 14 */	add r0, r0, r3
/* 80AF3DBC  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AF3DC0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80AF3DC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AF3DC8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF3DCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF3DD0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80AF3DD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AF3DD8  38 61 00 0C */	addi r3, r1, 0xc
/* 80AF3DDC  4B 85 33 5D */	bl PSVECSquareMag
/* 80AF3DE0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF3DE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF3DE8  40 81 00 58 */	ble lbl_80AF3E40
/* 80AF3DEC  FC 00 08 34 */	frsqrte f0, f1
/* 80AF3DF0  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 80AF3DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF3DF8  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 80AF3DFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF3E00  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF3E04  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF3E08  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF3E0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF3E10  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF3E14  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF3E18  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF3E1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF3E20  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF3E24  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF3E28  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF3E2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF3E30  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF3E34  FC 41 00 32 */	fmul f2, f1, f0
/* 80AF3E38  FC 40 10 18 */	frsp f2, f2
/* 80AF3E3C  48 00 00 90 */	b lbl_80AF3ECC
lbl_80AF3E40:
/* 80AF3E40  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 80AF3E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF3E48  40 80 00 10 */	bge lbl_80AF3E58
/* 80AF3E4C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AF3E50  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AF3E54  48 00 00 78 */	b lbl_80AF3ECC
lbl_80AF3E58:
/* 80AF3E58  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AF3E5C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AF3E60  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AF3E64  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AF3E68  7C 03 00 00 */	cmpw r3, r0
/* 80AF3E6C  41 82 00 14 */	beq lbl_80AF3E80
/* 80AF3E70  40 80 00 40 */	bge lbl_80AF3EB0
/* 80AF3E74  2C 03 00 00 */	cmpwi r3, 0
/* 80AF3E78  41 82 00 20 */	beq lbl_80AF3E98
/* 80AF3E7C  48 00 00 34 */	b lbl_80AF3EB0
lbl_80AF3E80:
/* 80AF3E80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AF3E84  41 82 00 0C */	beq lbl_80AF3E90
/* 80AF3E88  38 00 00 01 */	li r0, 1
/* 80AF3E8C  48 00 00 28 */	b lbl_80AF3EB4
lbl_80AF3E90:
/* 80AF3E90  38 00 00 02 */	li r0, 2
/* 80AF3E94  48 00 00 20 */	b lbl_80AF3EB4
lbl_80AF3E98:
/* 80AF3E98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AF3E9C  41 82 00 0C */	beq lbl_80AF3EA8
/* 80AF3EA0  38 00 00 05 */	li r0, 5
/* 80AF3EA4  48 00 00 10 */	b lbl_80AF3EB4
lbl_80AF3EA8:
/* 80AF3EA8  38 00 00 03 */	li r0, 3
/* 80AF3EAC  48 00 00 08 */	b lbl_80AF3EB4
lbl_80AF3EB0:
/* 80AF3EB0  38 00 00 04 */	li r0, 4
lbl_80AF3EB4:
/* 80AF3EB4  2C 00 00 01 */	cmpwi r0, 1
/* 80AF3EB8  40 82 00 10 */	bne lbl_80AF3EC8
/* 80AF3EBC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AF3EC0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AF3EC4  48 00 00 08 */	b lbl_80AF3ECC
lbl_80AF3EC8:
/* 80AF3EC8  FC 40 08 90 */	fmr f2, f1
lbl_80AF3ECC:
/* 80AF3ECC  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80AF3ED0  4B 77 37 A5 */	bl cM_atan2s__Fff
/* 80AF3ED4  7C 03 00 D0 */	neg r0, r3
/* 80AF3ED8  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80AF3EDC  A8 7D 08 FC */	lha r3, 0x8fc(r29)
/* 80AF3EE0  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80AF3EE4  7C 03 02 14 */	add r0, r3, r0
/* 80AF3EE8  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80AF3EEC  48 00 00 10 */	b lbl_80AF3EFC
lbl_80AF3EF0:
/* 80AF3EF0  38 00 00 00 */	li r0, 0
/* 80AF3EF4  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80AF3EF8  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80AF3EFC:
/* 80AF3EFC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF3F00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AF3F04  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF3F08  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AF3F0C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AF3F10  4B 51 8E 55 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80AF3F14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3F18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3F1C  A8 9D 08 F0 */	lha r4, 0x8f0(r29)
/* 80AF3F20  A8 BD 08 F2 */	lha r5, 0x8f2(r29)
/* 80AF3F24  A8 DD 08 F4 */	lha r6, 0x8f4(r29)
/* 80AF3F28  4B 51 83 79 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80AF3F2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF3F30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF3F34  38 81 00 3C */	addi r4, r1, 0x3c
/* 80AF3F38  38 A1 00 48 */	addi r5, r1, 0x48
/* 80AF3F3C  4B 85 2E 31 */	bl PSMTXMultVec
/* 80AF3F40  C0 5D 08 EC */	lfs f2, 0x8ec(r29)
/* 80AF3F44  C0 1D 08 E8 */	lfs f0, 0x8e8(r29)
/* 80AF3F48  EC 20 F8 2A */	fadds f1, f0, f31
/* 80AF3F4C  C0 1D 08 E4 */	lfs f0, 0x8e4(r29)
/* 80AF3F50  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80AF3F54  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80AF3F58  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80AF3F5C  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80AF3F60  28 00 00 00 */	cmplwi r0, 0
/* 80AF3F64  40 82 00 90 */	bne lbl_80AF3FF4
/* 80AF3F68  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80AF3F6C  28 00 00 00 */	cmplwi r0, 0
/* 80AF3F70  40 82 00 28 */	bne lbl_80AF3F98
/* 80AF3F74  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AF3F78  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AF3F7C  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 80AF3F80  38 00 00 1F */	li r0, 0x1f
/* 80AF3F84  90 1D 0C AC */	stw r0, 0xcac(r29)
/* 80AF3F88  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 80AF3F8C  60 00 00 04 */	ori r0, r0, 4
/* 80AF3F90  90 1D 0D 30 */	stw r0, 0xd30(r29)
/* 80AF3F94  48 00 00 10 */	b lbl_80AF3FA4
lbl_80AF3F98:
/* 80AF3F98  38 00 00 00 */	li r0, 0
/* 80AF3F9C  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 80AF3FA0  90 1D 0C AC */	stw r0, 0xcac(r29)
lbl_80AF3FA4:
/* 80AF3FA4  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80AF3FA8  38 81 00 48 */	addi r4, r1, 0x48
/* 80AF3FAC  4B 77 B2 31 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AF3FB0  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80AF3FB4  38 9F 00 00 */	addi r4, r31, 0
/* 80AF3FB8  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80AF3FBC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF3FC0  EC 21 00 2A */	fadds f1, f1, f0
/* 80AF3FC4  4B 77 B2 35 */	bl SetH__8cM3dGCylFf
/* 80AF3FC8  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80AF3FCC  38 9F 00 00 */	addi r4, r31, 0
/* 80AF3FD0  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AF3FD4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF3FD8  EC 21 00 2A */	fadds f1, f1, f0
/* 80AF3FDC  4B 77 B2 25 */	bl SetR__8cM3dGCylFf
/* 80AF3FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF3FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF3FE8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AF3FEC  38 9D 0C 94 */	addi r4, r29, 0xc94
/* 80AF3FF0  4B 77 0B B9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AF3FF4:
/* 80AF3FF4  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 80AF3FF8  81 9D 0C D0 */	lwz r12, 0xcd0(r29)
/* 80AF3FFC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AF4000  7D 89 03 A6 */	mtctr r12
/* 80AF4004  4E 80 04 21 */	bctrl 
/* 80AF4008  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80AF400C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80AF4010  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80AF4014  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80AF4018  39 61 00 90 */	addi r11, r1, 0x90
/* 80AF401C  4B 86 E1 F9 */	bl _restgpr_24
/* 80AF4020  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80AF4024  7C 08 03 A6 */	mtlr r0
/* 80AF4028  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80AF402C  4E 80 00 20 */	blr 
