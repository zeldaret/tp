lbl_80519B60:
/* 80519B60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80519B64  7C 08 02 A6 */	mflr r0
/* 80519B68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80519B6C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80519B70  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80519B74  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80519B78  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80519B7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80519B80  4B E4 86 55 */	bl _savegpr_27
/* 80519B84  7C 7F 1B 78 */	mr r31, r3
/* 80519B88  3C 60 80 52 */	lis r3, lit_3649@ha /* 0x8051B9C8@ha */
/* 80519B8C  3B A3 B9 C8 */	addi r29, r3, lit_3649@l /* 0x8051B9C8@l */
/* 80519B90  3C 60 80 52 */	lis r3, s_wd_sub__FPvPv@ha /* 0x80519B14@ha */
/* 80519B94  38 63 9B 14 */	addi r3, r3, s_wd_sub__FPvPv@l /* 0x80519B14@l */
/* 80519B98  7F E4 FB 78 */	mr r4, r31
/* 80519B9C  4B B0 77 9D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80519BA0  28 03 00 00 */	cmplwi r3, 0
/* 80519BA4  41 82 01 58 */	beq lbl_80519CFC
/* 80519BA8  3B 83 05 7C */	addi r28, r3, 0x57c
/* 80519BAC  3B 60 00 00 */	li r27, 0
/* 80519BB0  C3 FD 00 1C */	lfs f31, 0x1c(r29)
/* 80519BB4  C3 DD 00 48 */	lfs f30, 0x48(r29)
/* 80519BB8  3F C3 00 01 */	addis r30, r3, 1
/* 80519BBC  48 00 01 34 */	b lbl_80519CF0
lbl_80519BC0:
/* 80519BC0  38 61 00 0C */	addi r3, r1, 0xc
/* 80519BC4  38 9C 00 10 */	addi r4, r28, 0x10
/* 80519BC8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80519BCC  4B D4 CF 69 */	bl __mi__4cXyzCFRC3Vec
/* 80519BD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80519BD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80519BD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80519BDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80519BE0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80519BE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80519BE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80519BEC  4B E2 D5 4D */	bl PSVECSquareMag
/* 80519BF0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80519BF4  40 81 00 58 */	ble lbl_80519C4C
/* 80519BF8  FC 00 08 34 */	frsqrte f0, f1
/* 80519BFC  C8 9D 00 30 */	lfd f4, 0x30(r29)
/* 80519C00  FC 44 00 32 */	fmul f2, f4, f0
/* 80519C04  C8 7D 00 38 */	lfd f3, 0x38(r29)
/* 80519C08  FC 00 00 32 */	fmul f0, f0, f0
/* 80519C0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80519C10  FC 03 00 28 */	fsub f0, f3, f0
/* 80519C14  FC 02 00 32 */	fmul f0, f2, f0
/* 80519C18  FC 44 00 32 */	fmul f2, f4, f0
/* 80519C1C  FC 00 00 32 */	fmul f0, f0, f0
/* 80519C20  FC 01 00 32 */	fmul f0, f1, f0
/* 80519C24  FC 03 00 28 */	fsub f0, f3, f0
/* 80519C28  FC 02 00 32 */	fmul f0, f2, f0
/* 80519C2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80519C30  FC 00 00 32 */	fmul f0, f0, f0
/* 80519C34  FC 01 00 32 */	fmul f0, f1, f0
/* 80519C38  FC 03 00 28 */	fsub f0, f3, f0
/* 80519C3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80519C40  FC 21 00 32 */	fmul f1, f1, f0
/* 80519C44  FC 20 08 18 */	frsp f1, f1
/* 80519C48  48 00 00 88 */	b lbl_80519CD0
lbl_80519C4C:
/* 80519C4C  C8 1D 00 40 */	lfd f0, 0x40(r29)
/* 80519C50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80519C54  40 80 00 10 */	bge lbl_80519C64
/* 80519C58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80519C5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80519C60  48 00 00 70 */	b lbl_80519CD0
lbl_80519C64:
/* 80519C64  D0 21 00 08 */	stfs f1, 8(r1)
/* 80519C68  80 81 00 08 */	lwz r4, 8(r1)
/* 80519C6C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80519C70  3C 00 7F 80 */	lis r0, 0x7f80
/* 80519C74  7C 03 00 00 */	cmpw r3, r0
/* 80519C78  41 82 00 14 */	beq lbl_80519C8C
/* 80519C7C  40 80 00 40 */	bge lbl_80519CBC
/* 80519C80  2C 03 00 00 */	cmpwi r3, 0
/* 80519C84  41 82 00 20 */	beq lbl_80519CA4
/* 80519C88  48 00 00 34 */	b lbl_80519CBC
lbl_80519C8C:
/* 80519C8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80519C90  41 82 00 0C */	beq lbl_80519C9C
/* 80519C94  38 00 00 01 */	li r0, 1
/* 80519C98  48 00 00 28 */	b lbl_80519CC0
lbl_80519C9C:
/* 80519C9C  38 00 00 02 */	li r0, 2
/* 80519CA0  48 00 00 20 */	b lbl_80519CC0
lbl_80519CA4:
/* 80519CA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80519CA8  41 82 00 0C */	beq lbl_80519CB4
/* 80519CAC  38 00 00 05 */	li r0, 5
/* 80519CB0  48 00 00 10 */	b lbl_80519CC0
lbl_80519CB4:
/* 80519CB4  38 00 00 03 */	li r0, 3
/* 80519CB8  48 00 00 08 */	b lbl_80519CC0
lbl_80519CBC:
/* 80519CBC  38 00 00 04 */	li r0, 4
lbl_80519CC0:
/* 80519CC0  2C 00 00 01 */	cmpwi r0, 1
/* 80519CC4  40 82 00 0C */	bne lbl_80519CD0
/* 80519CC8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80519CCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80519CD0:
/* 80519CD0  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 80519CD4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80519CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80519CDC  40 80 00 0C */	bge lbl_80519CE8
/* 80519CE0  7F 83 E3 78 */	mr r3, r28
/* 80519CE4  48 00 00 1C */	b lbl_80519D00
lbl_80519CE8:
/* 80519CE8  3B 7B 00 01 */	addi r27, r27, 1
/* 80519CEC  3B 9C 00 54 */	addi r28, r28, 0x54
lbl_80519CF0:
/* 80519CF0  80 1E AD 98 */	lwz r0, -0x5268(r30)
/* 80519CF4  7C 1B 00 00 */	cmpw r27, r0
/* 80519CF8  41 80 FE C8 */	blt lbl_80519BC0
lbl_80519CFC:
/* 80519CFC  38 60 00 00 */	li r3, 0
lbl_80519D00:
/* 80519D00  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80519D04  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80519D08  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80519D0C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80519D10  39 61 00 40 */	addi r11, r1, 0x40
/* 80519D14  4B E4 85 0D */	bl _restgpr_27
/* 80519D18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80519D1C  7C 08 03 A6 */	mtlr r0
/* 80519D20  38 21 00 60 */	addi r1, r1, 0x60
/* 80519D24  4E 80 00 20 */	blr 
