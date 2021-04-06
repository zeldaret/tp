lbl_80B45B10:
/* 80B45B10  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B45B14  7C 08 02 A6 */	mflr r0
/* 80B45B18  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B45B1C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B45B20  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B45B24  39 61 00 60 */	addi r11, r1, 0x60
/* 80B45B28  4B 81 C6 B5 */	bl _savegpr_29
/* 80B45B2C  7C 7F 1B 78 */	mr r31, r3
/* 80B45B30  7C 80 23 78 */	mr r0, r4
/* 80B45B34  FF E0 08 90 */	fmr f31, f1
/* 80B45B38  7C BD 2B 78 */	mr r29, r5
/* 80B45B3C  3C 60 80 B4 */	lis r3, m__19daNpc_yamiD_Param_c@ha /* 0x80B4604C@ha */
/* 80B45B40  3B C3 60 4C */	addi r30, r3, m__19daNpc_yamiD_Param_c@l /* 0x80B4604C@l */
/* 80B45B44  38 A0 00 00 */	li r5, 0
/* 80B45B48  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B45B4C  28 04 00 00 */	cmplwi r4, 0
/* 80B45B50  41 82 01 40 */	beq lbl_80B45C90
/* 80B45B54  38 61 00 18 */	addi r3, r1, 0x18
/* 80B45B58  7C 05 03 78 */	mr r5, r0
/* 80B45B5C  4B 72 0F D9 */	bl __mi__4cXyzCFRC3Vec
/* 80B45B60  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B45B64  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B45B68  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B45B6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B45B70  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B45B74  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B45B78  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B45B7C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B45B80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B45B84  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B45B88  38 61 00 0C */	addi r3, r1, 0xc
/* 80B45B8C  4B 80 15 AD */	bl PSVECSquareMag
/* 80B45B90  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B45B94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B45B98  40 81 00 58 */	ble lbl_80B45BF0
/* 80B45B9C  FC 00 08 34 */	frsqrte f0, f1
/* 80B45BA0  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80B45BA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B45BA8  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80B45BAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B45BB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B45BB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B45BB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B45BBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B45BC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B45BC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B45BC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B45BCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B45BD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B45BD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B45BD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B45BDC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B45BE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B45BE4  FC 41 00 32 */	fmul f2, f1, f0
/* 80B45BE8  FC 40 10 18 */	frsp f2, f2
/* 80B45BEC  48 00 00 90 */	b lbl_80B45C7C
lbl_80B45BF0:
/* 80B45BF0  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80B45BF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B45BF8  40 80 00 10 */	bge lbl_80B45C08
/* 80B45BFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B45C00  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B45C04  48 00 00 78 */	b lbl_80B45C7C
lbl_80B45C08:
/* 80B45C08  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B45C0C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B45C10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B45C14  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B45C18  7C 03 00 00 */	cmpw r3, r0
/* 80B45C1C  41 82 00 14 */	beq lbl_80B45C30
/* 80B45C20  40 80 00 40 */	bge lbl_80B45C60
/* 80B45C24  2C 03 00 00 */	cmpwi r3, 0
/* 80B45C28  41 82 00 20 */	beq lbl_80B45C48
/* 80B45C2C  48 00 00 34 */	b lbl_80B45C60
lbl_80B45C30:
/* 80B45C30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B45C34  41 82 00 0C */	beq lbl_80B45C40
/* 80B45C38  38 00 00 01 */	li r0, 1
/* 80B45C3C  48 00 00 28 */	b lbl_80B45C64
lbl_80B45C40:
/* 80B45C40  38 00 00 02 */	li r0, 2
/* 80B45C44  48 00 00 20 */	b lbl_80B45C64
lbl_80B45C48:
/* 80B45C48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B45C4C  41 82 00 0C */	beq lbl_80B45C58
/* 80B45C50  38 00 00 05 */	li r0, 5
/* 80B45C54  48 00 00 10 */	b lbl_80B45C64
lbl_80B45C58:
/* 80B45C58  38 00 00 03 */	li r0, 3
/* 80B45C5C  48 00 00 08 */	b lbl_80B45C64
lbl_80B45C60:
/* 80B45C60  38 00 00 04 */	li r0, 4
lbl_80B45C64:
/* 80B45C64  2C 00 00 01 */	cmpwi r0, 1
/* 80B45C68  40 82 00 10 */	bne lbl_80B45C78
/* 80B45C6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B45C70  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B45C74  48 00 00 08 */	b lbl_80B45C7C
lbl_80B45C78:
/* 80B45C78  FC 40 08 90 */	fmr f2, f1
lbl_80B45C7C:
/* 80B45C7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B45C80  4B 72 19 F5 */	bl cM_atan2s__Fff
/* 80B45C84  7C 03 00 D0 */	neg r0, r3
/* 80B45C88  7C 05 07 34 */	extsh r5, r0
/* 80B45C8C  7C A5 EA 14 */	add r5, r5, r29
lbl_80B45C90:
/* 80B45C90  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B45C94  7C A5 02 14 */	add r5, r5, r0
/* 80B45C98  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80B45C9C  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B45CA0  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B45CA4  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80B45CA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B45CAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B45CB0  3C 60 43 30 */	lis r3, 0x4330
/* 80B45CB4  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B45CB8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B45CBC  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B45CC0  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B45CC4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B45CC8  7C A0 07 34 */	extsh r0, r5
/* 80B45CCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B45CD0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B45CD4  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B45CD8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B45CDC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B45CE0  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B45CE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B45CE8  FC 00 00 1E */	fctiwz f0, f0
/* 80B45CEC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B45CF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B45CF4  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B45CF8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B45CFC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B45D00  39 61 00 60 */	addi r11, r1, 0x60
/* 80B45D04  4B 81 C5 25 */	bl _restgpr_29
/* 80B45D08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B45D0C  7C 08 03 A6 */	mtlr r0
/* 80B45D10  38 21 00 70 */	addi r1, r1, 0x70
/* 80B45D14  4E 80 00 20 */	blr 
