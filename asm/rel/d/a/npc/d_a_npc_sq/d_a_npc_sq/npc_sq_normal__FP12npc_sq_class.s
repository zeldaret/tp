lbl_80AF61B0:
/* 80AF61B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF61B4  7C 08 02 A6 */	mflr r0
/* 80AF61B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF61BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF61C0  4B 86 C0 1D */	bl _savegpr_29
/* 80AF61C4  7C 7E 1B 78 */	mr r30, r3
/* 80AF61C8  3C 80 80 AF */	lis r4, lit_3768@ha /* 0x80AF7408@ha */
/* 80AF61CC  3B E4 74 08 */	addi r31, r4, lit_3768@l /* 0x80AF7408@l */
/* 80AF61D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF61D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF61D8  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80AF61DC  A8 03 06 2A */	lha r0, 0x62a(r3)
/* 80AF61E0  2C 00 00 01 */	cmpwi r0, 1
/* 80AF61E4  41 82 00 88 */	beq lbl_80AF626C
/* 80AF61E8  40 80 00 10 */	bge lbl_80AF61F8
/* 80AF61EC  2C 00 00 00 */	cmpwi r0, 0
/* 80AF61F0  40 80 00 14 */	bge lbl_80AF6204
/* 80AF61F4  48 00 00 78 */	b lbl_80AF626C
lbl_80AF61F8:
/* 80AF61F8  2C 00 00 03 */	cmpwi r0, 3
/* 80AF61FC  40 80 00 70 */	bge lbl_80AF626C
/* 80AF6200  48 00 00 24 */	b lbl_80AF6224
lbl_80AF6204:
/* 80AF6204  38 80 00 09 */	li r4, 9
/* 80AF6208  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80AF620C  38 A0 00 02 */	li r5, 2
/* 80AF6210  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80AF6214  4B FF FD FD */	bl anm_init__FP12npc_sq_classifUcf
/* 80AF6218  38 00 00 01 */	li r0, 1
/* 80AF621C  B0 1E 06 2A */	sth r0, 0x62a(r30)
/* 80AF6220  48 00 00 4C */	b lbl_80AF626C
lbl_80AF6224:
/* 80AF6224  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80AF6228  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80AF622C  38 04 40 00 */	addi r0, r4, 0x4000
/* 80AF6230  7C 04 07 34 */	extsh r4, r0
/* 80AF6234  38 A0 00 02 */	li r5, 2
/* 80AF6238  38 C0 30 00 */	li r6, 0x3000
/* 80AF623C  4B 77 A3 CD */	bl cLib_addCalcAngleS2__FPssss
/* 80AF6240  A8 1E 06 30 */	lha r0, 0x630(r30)
/* 80AF6244  2C 00 00 01 */	cmpwi r0, 1
/* 80AF6248  40 82 00 24 */	bne lbl_80AF626C
/* 80AF624C  7F C3 F3 78 */	mr r3, r30
/* 80AF6250  38 80 00 07 */	li r4, 7
/* 80AF6254  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80AF6258  38 A0 00 02 */	li r5, 2
/* 80AF625C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80AF6260  4B FF FD B1 */	bl anm_init__FP12npc_sq_classifUcf
/* 80AF6264  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80AF6268  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80AF626C:
/* 80AF626C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80AF6270  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AF6274  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80AF6278  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF627C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80AF6280  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AF6284  38 61 00 0C */	addi r3, r1, 0xc
/* 80AF6288  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AF628C  7C 65 1B 78 */	mr r5, r3
/* 80AF6290  4B 85 0E 25 */	bl PSVECSubtract
/* 80AF6294  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AF6298  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF629C  A8 1E 09 EC */	lha r0, 0x9ec(r30)
/* 80AF62A0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF62A4  40 82 01 04 */	bne lbl_80AF63A8
/* 80AF62A8  38 61 00 0C */	addi r3, r1, 0xc
/* 80AF62AC  4B 85 0E 8D */	bl PSVECSquareMag
/* 80AF62B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AF62B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF62B8  40 81 00 58 */	ble lbl_80AF6310
/* 80AF62BC  FC 00 08 34 */	frsqrte f0, f1
/* 80AF62C0  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80AF62C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF62C8  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80AF62CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF62D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF62D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF62D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF62DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF62E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF62E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF62E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF62EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF62F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80AF62F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80AF62F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80AF62FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80AF6300  FC 02 00 32 */	fmul f0, f2, f0
/* 80AF6304  FC 21 00 32 */	fmul f1, f1, f0
/* 80AF6308  FC 20 08 18 */	frsp f1, f1
/* 80AF630C  48 00 00 88 */	b lbl_80AF6394
lbl_80AF6310:
/* 80AF6310  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80AF6314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF6318  40 80 00 10 */	bge lbl_80AF6328
/* 80AF631C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AF6320  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80AF6324  48 00 00 70 */	b lbl_80AF6394
lbl_80AF6328:
/* 80AF6328  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AF632C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AF6330  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AF6334  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AF6338  7C 03 00 00 */	cmpw r3, r0
/* 80AF633C  41 82 00 14 */	beq lbl_80AF6350
/* 80AF6340  40 80 00 40 */	bge lbl_80AF6380
/* 80AF6344  2C 03 00 00 */	cmpwi r3, 0
/* 80AF6348  41 82 00 20 */	beq lbl_80AF6368
/* 80AF634C  48 00 00 34 */	b lbl_80AF6380
lbl_80AF6350:
/* 80AF6350  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AF6354  41 82 00 0C */	beq lbl_80AF6360
/* 80AF6358  38 00 00 01 */	li r0, 1
/* 80AF635C  48 00 00 28 */	b lbl_80AF6384
lbl_80AF6360:
/* 80AF6360  38 00 00 02 */	li r0, 2
/* 80AF6364  48 00 00 20 */	b lbl_80AF6384
lbl_80AF6368:
/* 80AF6368  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AF636C  41 82 00 0C */	beq lbl_80AF6378
/* 80AF6370  38 00 00 05 */	li r0, 5
/* 80AF6374  48 00 00 10 */	b lbl_80AF6384
lbl_80AF6378:
/* 80AF6378  38 00 00 03 */	li r0, 3
/* 80AF637C  48 00 00 08 */	b lbl_80AF6384
lbl_80AF6380:
/* 80AF6380  38 00 00 04 */	li r0, 4
lbl_80AF6384:
/* 80AF6384  2C 00 00 01 */	cmpwi r0, 1
/* 80AF6388  40 82 00 0C */	bne lbl_80AF6394
/* 80AF638C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80AF6390  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80AF6394:
/* 80AF6394  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80AF6398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AF639C  40 80 00 0C */	bge lbl_80AF63A8
/* 80AF63A0  38 00 00 01 */	li r0, 1
/* 80AF63A4  B0 1E 09 EC */	sth r0, 0x9ec(r30)
lbl_80AF63A8:
/* 80AF63A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF63AC  4B 86 BE 7D */	bl _restgpr_29
/* 80AF63B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF63B4  7C 08 03 A6 */	mtlr r0
/* 80AF63B8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF63BC  4E 80 00 20 */	blr 
