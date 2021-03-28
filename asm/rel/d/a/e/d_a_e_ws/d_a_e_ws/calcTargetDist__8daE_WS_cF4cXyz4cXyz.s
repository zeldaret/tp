lbl_807E3FAC:
/* 807E3FAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E3FB0  7C 08 02 A6 */	mflr r0
/* 807E3FB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E3FB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807E3FBC  3C 60 80 7E */	lis r3, lit_3802@ha
/* 807E3FC0  3B E3 73 00 */	addi r31, r3, lit_3802@l
/* 807E3FC4  7C 83 23 78 */	mr r3, r4
/* 807E3FC8  7C A4 2B 78 */	mr r4, r5
/* 807E3FCC  4B B6 33 D0 */	b PSVECSquareDistance
/* 807E3FD0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E3FD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E3FD8  40 81 00 58 */	ble lbl_807E4030
/* 807E3FDC  FC 00 08 34 */	frsqrte f0, f1
/* 807E3FE0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807E3FE4  FC 44 00 32 */	fmul f2, f4, f0
/* 807E3FE8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807E3FEC  FC 00 00 32 */	fmul f0, f0, f0
/* 807E3FF0  FC 01 00 32 */	fmul f0, f1, f0
/* 807E3FF4  FC 03 00 28 */	fsub f0, f3, f0
/* 807E3FF8  FC 02 00 32 */	fmul f0, f2, f0
/* 807E3FFC  FC 44 00 32 */	fmul f2, f4, f0
/* 807E4000  FC 00 00 32 */	fmul f0, f0, f0
/* 807E4004  FC 01 00 32 */	fmul f0, f1, f0
/* 807E4008  FC 03 00 28 */	fsub f0, f3, f0
/* 807E400C  FC 02 00 32 */	fmul f0, f2, f0
/* 807E4010  FC 44 00 32 */	fmul f2, f4, f0
/* 807E4014  FC 00 00 32 */	fmul f0, f0, f0
/* 807E4018  FC 01 00 32 */	fmul f0, f1, f0
/* 807E401C  FC 03 00 28 */	fsub f0, f3, f0
/* 807E4020  FC 02 00 32 */	fmul f0, f2, f0
/* 807E4024  FC 21 00 32 */	fmul f1, f1, f0
/* 807E4028  FC 20 08 18 */	frsp f1, f1
/* 807E402C  48 00 00 88 */	b lbl_807E40B4
lbl_807E4030:
/* 807E4030  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807E4034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E4038  40 80 00 10 */	bge lbl_807E4048
/* 807E403C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E4040  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E4044  48 00 00 70 */	b lbl_807E40B4
lbl_807E4048:
/* 807E4048  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E404C  80 81 00 08 */	lwz r4, 8(r1)
/* 807E4050  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E4054  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E4058  7C 03 00 00 */	cmpw r3, r0
/* 807E405C  41 82 00 14 */	beq lbl_807E4070
/* 807E4060  40 80 00 40 */	bge lbl_807E40A0
/* 807E4064  2C 03 00 00 */	cmpwi r3, 0
/* 807E4068  41 82 00 20 */	beq lbl_807E4088
/* 807E406C  48 00 00 34 */	b lbl_807E40A0
lbl_807E4070:
/* 807E4070  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E4074  41 82 00 0C */	beq lbl_807E4080
/* 807E4078  38 00 00 01 */	li r0, 1
/* 807E407C  48 00 00 28 */	b lbl_807E40A4
lbl_807E4080:
/* 807E4080  38 00 00 02 */	li r0, 2
/* 807E4084  48 00 00 20 */	b lbl_807E40A4
lbl_807E4088:
/* 807E4088  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E408C  41 82 00 0C */	beq lbl_807E4098
/* 807E4090  38 00 00 05 */	li r0, 5
/* 807E4094  48 00 00 10 */	b lbl_807E40A4
lbl_807E4098:
/* 807E4098  38 00 00 03 */	li r0, 3
/* 807E409C  48 00 00 08 */	b lbl_807E40A4
lbl_807E40A0:
/* 807E40A0  38 00 00 04 */	li r0, 4
lbl_807E40A4:
/* 807E40A4  2C 00 00 01 */	cmpwi r0, 1
/* 807E40A8  40 82 00 0C */	bne lbl_807E40B4
/* 807E40AC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E40B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E40B4:
/* 807E40B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807E40B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E40BC  7C 08 03 A6 */	mtlr r0
/* 807E40C0  38 21 00 20 */	addi r1, r1, 0x20
/* 807E40C4  4E 80 00 20 */	blr 
