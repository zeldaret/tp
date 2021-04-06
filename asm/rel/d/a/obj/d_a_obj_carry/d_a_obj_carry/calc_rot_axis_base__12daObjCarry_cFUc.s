lbl_80477B1C:
/* 80477B1C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80477B20  7C 08 02 A6 */	mflr r0
/* 80477B24  90 01 00 94 */	stw r0, 0x94(r1)
/* 80477B28  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80477B2C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80477B30  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80477B34  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80477B38  39 61 00 70 */	addi r11, r1, 0x70
/* 80477B3C  4B EE A6 99 */	bl _savegpr_27
/* 80477B40  7C 7D 1B 78 */	mr r29, r3
/* 80477B44  7C 9E 23 78 */	mr r30, r4
/* 80477B48  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80477B4C  3B E3 99 0C */	addi r31, r3, l_cyl_info@l /* 0x8047990C@l */
/* 80477B50  3C 60 80 3A */	lis r3, ZeroQuat@ha /* 0x803A7240@ha */
/* 80477B54  C4 03 72 40 */	lfsu f0, ZeroQuat@l(r3)  /* 0x803A7240@l */
/* 80477B58  D0 1D 0D 4C */	stfs f0, 0xd4c(r29)
/* 80477B5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80477B60  D0 1D 0D 50 */	stfs f0, 0xd50(r29)
/* 80477B64  C0 03 00 08 */	lfs f0, 8(r3)
/* 80477B68  D0 1D 0D 54 */	stfs f0, 0xd54(r29)
/* 80477B6C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80477B70  D0 1D 0D 58 */	stfs f0, 0xd58(r29)
/* 80477B74  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80477B78  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80477B7C  41 82 00 58 */	beq lbl_80477BD4
/* 80477B80  88 7D 0D 7B */	lbz r3, 0xd7b(r29)
/* 80477B84  7C 60 07 75 */	extsb. r0, r3
/* 80477B88  40 80 00 40 */	bge lbl_80477BC8
/* 80477B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80477B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80477B94  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80477B98  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80477B9C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 80477BA0  7D 89 03 A6 */	mtctr r12
/* 80477BA4  4E 80 04 21 */	bctrl 
/* 80477BA8  C0 1F 0B A8 */	lfs f0, 0xba8(r31)
/* 80477BAC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80477BB0  38 7D 0D 3C */	addi r3, r29, 0xd3c
/* 80477BB4  3C 80 80 3A */	lis r4, ZeroQuat@ha /* 0x803A7240@ha */
/* 80477BB8  38 84 72 40 */	addi r4, r4, ZeroQuat@l /* 0x803A7240@l */
/* 80477BBC  7C 65 1B 78 */	mr r5, r3
/* 80477BC0  4B EC F9 41 */	bl C_QUATSlerp
/* 80477BC4  48 00 03 F4 */	b lbl_80477FB8
lbl_80477BC8:
/* 80477BC8  38 03 FF FF */	addi r0, r3, -1
/* 80477BCC  98 1D 0D 7B */	stb r0, 0xd7b(r29)
/* 80477BD0  48 00 03 E8 */	b lbl_80477FB8
lbl_80477BD4:
/* 80477BD4  38 61 00 18 */	addi r3, r1, 0x18
/* 80477BD8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80477BDC  38 BD 0D EC */	addi r5, r29, 0xdec
/* 80477BE0  4B DE EF 55 */	bl __mi__4cXyzCFRC3Vec
/* 80477BE4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80477BE8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80477BEC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80477BF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80477BF4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80477BF8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80477BFC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80477C00  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80477C04  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80477C08  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80477C0C  38 61 00 30 */	addi r3, r1, 0x30
/* 80477C10  4B DE F3 CD */	bl normalizeRS__4cXyzFv
/* 80477C14  7C 7C 1B 78 */	mr r28, r3
/* 80477C18  38 61 00 24 */	addi r3, r1, 0x24
/* 80477C1C  4B DE F3 C1 */	bl normalizeRS__4cXyzFv
/* 80477C20  3B 60 00 01 */	li r27, 1
/* 80477C24  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80477C28  40 82 00 10 */	bne lbl_80477C38
/* 80477C2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80477C30  40 82 00 08 */	bne lbl_80477C38
/* 80477C34  3B 60 00 00 */	li r27, 0
lbl_80477C38:
/* 80477C38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80477C3C  41 82 00 44 */	beq lbl_80477C80
/* 80477C40  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80477C44  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80477C48  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80477C4C  D0 1D 0C F8 */	stfs f0, 0xcf8(r29)
/* 80477C50  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80477C54  D0 1D 0C FC */	stfs f0, 0xcfc(r29)
/* 80477C58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80477C5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80477C60  38 80 40 00 */	li r4, 0x4000
/* 80477C64  4B B9 47 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 80477C68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80477C6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80477C70  38 9D 0C F4 */	addi r4, r29, 0xcf4
/* 80477C74  7C 85 23 78 */	mr r5, r4
/* 80477C78  4B EC F0 F5 */	bl PSMTXMultVec
/* 80477C7C  48 00 00 28 */	b lbl_80477CA4
lbl_80477C80:
/* 80477C80  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80477C84  41 82 00 20 */	beq lbl_80477CA4
/* 80477C88  3C 60 80 43 */	lis r3, BaseX__4cXyz@ha /* 0x80430D0C@ha */
/* 80477C8C  C4 03 0D 0C */	lfsu f0, BaseX__4cXyz@l(r3)  /* 0x80430D0C@l */
/* 80477C90  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80477C94  C0 03 00 04 */	lfs f0, 4(r3)
/* 80477C98  D0 1D 0C F8 */	stfs f0, 0xcf8(r29)
/* 80477C9C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80477CA0  D0 1D 0C FC */	stfs f0, 0xcfc(r29)
lbl_80477CA4:
/* 80477CA4  88 1D 0D B8 */	lbz r0, 0xdb8(r29)
/* 80477CA8  28 00 00 00 */	cmplwi r0, 0
/* 80477CAC  40 82 01 34 */	bne lbl_80477DE0
/* 80477CB0  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80477CB4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80477CB8  41 82 00 60 */	beq lbl_80477D18
/* 80477CBC  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80477CC0  FC 00 02 10 */	fabs f0, f0
/* 80477CC4  FF E0 00 18 */	frsp f31, f0
/* 80477CC8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80477CCC  FC 00 02 10 */	fabs f0, f0
/* 80477CD0  FF C0 00 18 */	frsp f30, f0
/* 80477CD4  7F A3 EB 78 */	mr r3, r29
/* 80477CD8  4B FF 79 CD */	bl data__12daObjCarry_cFv
/* 80477CDC  A8 03 00 7C */	lha r0, 0x7c(r3)
/* 80477CE0  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 80477CE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80477CE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80477CEC  3C 00 43 30 */	lis r0, 0x4330
/* 80477CF0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80477CF4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80477CF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80477CFC  EC 1E F8 2A */	fadds f0, f30, f31
/* 80477D00  EC 01 00 32 */	fmuls f0, f1, f0
/* 80477D04  FC 00 00 1E */	fctiwz f0, f0
/* 80477D08  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80477D0C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80477D10  B0 1D 0D 00 */	sth r0, 0xd00(r29)
/* 80477D14  48 00 00 5C */	b lbl_80477D70
lbl_80477D18:
/* 80477D18  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80477D1C  FC 00 02 10 */	fabs f0, f0
/* 80477D20  FF C0 00 18 */	frsp f30, f0
/* 80477D24  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80477D28  FC 00 02 10 */	fabs f0, f0
/* 80477D2C  FF E0 00 18 */	frsp f31, f0
/* 80477D30  7F A3 EB 78 */	mr r3, r29
/* 80477D34  4B FF 79 71 */	bl data__12daObjCarry_cFv
/* 80477D38  A8 03 00 7A */	lha r0, 0x7a(r3)
/* 80477D3C  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 80477D40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80477D44  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80477D48  3C 00 43 30 */	lis r0, 0x4330
/* 80477D4C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80477D50  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80477D54  EC 20 08 28 */	fsubs f1, f0, f1
/* 80477D58  EC 1F F0 2A */	fadds f0, f31, f30
/* 80477D5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80477D60  FC 00 00 1E */	fctiwz f0, f0
/* 80477D64  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80477D68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80477D6C  B0 1D 0D 00 */	sth r0, 0xd00(r29)
lbl_80477D70:
/* 80477D70  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477D74  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80477D78  7C 00 1E 70 */	srawi r0, r0, 3
/* 80477D7C  54 00 18 38 */	slwi r0, r0, 3
/* 80477D80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80477D84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80477D88  7C 23 04 2E */	lfsx f1, r3, r0
/* 80477D8C  C0 1D 0C F4 */	lfs f0, 0xcf4(r29)
/* 80477D90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477D94  D0 1D 0D 4C */	stfs f0, 0xd4c(r29)
/* 80477D98  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477D9C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80477DA0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80477DA4  C0 1D 0C F8 */	lfs f0, 0xcf8(r29)
/* 80477DA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477DAC  D0 1D 0D 50 */	stfs f0, 0xd50(r29)
/* 80477DB0  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477DB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80477DB8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80477DBC  C0 1D 0C FC */	lfs f0, 0xcfc(r29)
/* 80477DC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477DC4  D0 1D 0D 54 */	stfs f0, 0xd54(r29)
/* 80477DC8  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477DCC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80477DD0  7C 63 02 14 */	add r3, r3, r0
/* 80477DD4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80477DD8  D0 1D 0D 58 */	stfs f0, 0xd58(r29)
/* 80477DDC  48 00 01 D8 */	b lbl_80477FB4
lbl_80477DE0:
/* 80477DE0  38 61 00 0C */	addi r3, r1, 0xc
/* 80477DE4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80477DE8  38 BD 0D EC */	addi r5, r29, 0xdec
/* 80477DEC  4B DE ED 49 */	bl __mi__4cXyzCFRC3Vec
/* 80477DF0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80477DF4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80477DF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80477DFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80477E00  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80477E04  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80477E08  4B DE F8 6D */	bl cM_atan2s__Fff
/* 80477E0C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80477E10  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80477E14  41 82 01 A0 */	beq lbl_80477FB4
/* 80477E18  38 61 00 30 */	addi r3, r1, 0x30
/* 80477E1C  4B EC F3 1D */	bl PSVECSquareMag
/* 80477E20  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80477E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80477E28  40 81 00 58 */	ble lbl_80477E80
/* 80477E2C  FC 00 08 34 */	frsqrte f0, f1
/* 80477E30  C8 9F 0A 50 */	lfd f4, 0xa50(r31)
/* 80477E34  FC 44 00 32 */	fmul f2, f4, f0
/* 80477E38  C8 7F 0A 58 */	lfd f3, 0xa58(r31)
/* 80477E3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80477E40  FC 01 00 32 */	fmul f0, f1, f0
/* 80477E44  FC 03 00 28 */	fsub f0, f3, f0
/* 80477E48  FC 02 00 32 */	fmul f0, f2, f0
/* 80477E4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80477E50  FC 00 00 32 */	fmul f0, f0, f0
/* 80477E54  FC 01 00 32 */	fmul f0, f1, f0
/* 80477E58  FC 03 00 28 */	fsub f0, f3, f0
/* 80477E5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80477E60  FC 44 00 32 */	fmul f2, f4, f0
/* 80477E64  FC 00 00 32 */	fmul f0, f0, f0
/* 80477E68  FC 01 00 32 */	fmul f0, f1, f0
/* 80477E6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80477E70  FC 02 00 32 */	fmul f0, f2, f0
/* 80477E74  FC 21 00 32 */	fmul f1, f1, f0
/* 80477E78  FC 20 08 18 */	frsp f1, f1
/* 80477E7C  48 00 00 88 */	b lbl_80477F04
lbl_80477E80:
/* 80477E80  C8 1F 0A 60 */	lfd f0, 0xa60(r31)
/* 80477E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80477E88  40 80 00 10 */	bge lbl_80477E98
/* 80477E8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80477E90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80477E94  48 00 00 70 */	b lbl_80477F04
lbl_80477E98:
/* 80477E98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80477E9C  80 81 00 08 */	lwz r4, 8(r1)
/* 80477EA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80477EA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80477EA8  7C 03 00 00 */	cmpw r3, r0
/* 80477EAC  41 82 00 14 */	beq lbl_80477EC0
/* 80477EB0  40 80 00 40 */	bge lbl_80477EF0
/* 80477EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80477EB8  41 82 00 20 */	beq lbl_80477ED8
/* 80477EBC  48 00 00 34 */	b lbl_80477EF0
lbl_80477EC0:
/* 80477EC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80477EC4  41 82 00 0C */	beq lbl_80477ED0
/* 80477EC8  38 00 00 01 */	li r0, 1
/* 80477ECC  48 00 00 28 */	b lbl_80477EF4
lbl_80477ED0:
/* 80477ED0  38 00 00 02 */	li r0, 2
/* 80477ED4  48 00 00 20 */	b lbl_80477EF4
lbl_80477ED8:
/* 80477ED8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80477EDC  41 82 00 0C */	beq lbl_80477EE8
/* 80477EE0  38 00 00 05 */	li r0, 5
/* 80477EE4  48 00 00 10 */	b lbl_80477EF4
lbl_80477EE8:
/* 80477EE8  38 00 00 03 */	li r0, 3
/* 80477EEC  48 00 00 08 */	b lbl_80477EF4
lbl_80477EF0:
/* 80477EF0  38 00 00 04 */	li r0, 4
lbl_80477EF4:
/* 80477EF4  2C 00 00 01 */	cmpwi r0, 1
/* 80477EF8  40 82 00 0C */	bne lbl_80477F04
/* 80477EFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80477F00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80477F04:
/* 80477F04  FF C0 0A 10 */	fabs f30, f1
/* 80477F08  7F A3 EB 78 */	mr r3, r29
/* 80477F0C  4B FF 77 99 */	bl data__12daObjCarry_cFv
/* 80477F10  A8 03 00 7A */	lha r0, 0x7a(r3)
/* 80477F14  C8 3F 0A A0 */	lfd f1, 0xaa0(r31)
/* 80477F18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80477F1C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80477F20  3C 00 43 30 */	lis r0, 0x4330
/* 80477F24  90 01 00 48 */	stw r0, 0x48(r1)
/* 80477F28  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80477F2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80477F30  FC 00 F0 18 */	frsp f0, f30
/* 80477F34  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477F38  FC 00 00 1E */	fctiwz f0, f0
/* 80477F3C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80477F40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80477F44  B0 1D 0D 00 */	sth r0, 0xd00(r29)
/* 80477F48  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477F4C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80477F50  7C 00 1E 70 */	srawi r0, r0, 3
/* 80477F54  54 00 18 38 */	slwi r0, r0, 3
/* 80477F58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80477F5C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80477F60  7C 23 04 2E */	lfsx f1, r3, r0
/* 80477F64  C0 1D 0C F4 */	lfs f0, 0xcf4(r29)
/* 80477F68  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477F6C  D0 1D 0D 4C */	stfs f0, 0xd4c(r29)
/* 80477F70  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477F74  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80477F78  7C 23 04 2E */	lfsx f1, r3, r0
/* 80477F7C  C0 1D 0C F8 */	lfs f0, 0xcf8(r29)
/* 80477F80  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477F84  D0 1D 0D 50 */	stfs f0, 0xd50(r29)
/* 80477F88  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477F8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80477F90  7C 23 04 2E */	lfsx f1, r3, r0
/* 80477F94  C0 1D 0C FC */	lfs f0, 0xcfc(r29)
/* 80477F98  EC 00 00 72 */	fmuls f0, f0, f1
/* 80477F9C  D0 1D 0D 54 */	stfs f0, 0xd54(r29)
/* 80477FA0  A8 1D 0D 00 */	lha r0, 0xd00(r29)
/* 80477FA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80477FA8  7C 63 02 14 */	add r3, r3, r0
/* 80477FAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80477FB0  D0 1D 0D 58 */	stfs f0, 0xd58(r29)
lbl_80477FB4:
/* 80477FB4  9B DD 0D 7B */	stb r30, 0xd7b(r29)
lbl_80477FB8:
/* 80477FB8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80477FBC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80477FC0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80477FC4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80477FC8  39 61 00 70 */	addi r11, r1, 0x70
/* 80477FCC  4B EE A2 55 */	bl _restgpr_27
/* 80477FD0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80477FD4  7C 08 03 A6 */	mtlr r0
/* 80477FD8  38 21 00 90 */	addi r1, r1, 0x90
/* 80477FDC  4E 80 00 20 */	blr 
