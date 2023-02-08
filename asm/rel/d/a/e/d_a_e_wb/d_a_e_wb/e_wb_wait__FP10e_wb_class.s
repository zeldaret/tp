lbl_807D3FB0:
/* 807D3FB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807D3FB4  7C 08 02 A6 */	mflr r0
/* 807D3FB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D3FBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807D3FC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807D3FC4  7C 7E 1B 78 */	mr r30, r3
/* 807D3FC8  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D3FCC  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807D3FD0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D3FD4  2C 00 00 01 */	cmpwi r0, 1
/* 807D3FD8  41 82 00 34 */	beq lbl_807D400C
/* 807D3FDC  40 80 00 A4 */	bge lbl_807D4080
/* 807D3FE0  2C 00 00 00 */	cmpwi r0, 0
/* 807D3FE4  40 80 00 0C */	bge lbl_807D3FF0
/* 807D3FE8  48 00 00 98 */	b lbl_807D4080
/* 807D3FEC  48 00 00 94 */	b lbl_807D4080
lbl_807D3FF0:
/* 807D3FF0  38 80 00 25 */	li r4, 0x25
/* 807D3FF4  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807D3FF8  38 A0 00 02 */	li r5, 2
/* 807D3FFC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D4000  4B FF E5 49 */	bl anm_init__FP10e_wb_classifUcf
/* 807D4004  38 00 00 01 */	li r0, 1
/* 807D4008  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807D400C:
/* 807D400C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807D4010  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807D4014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4018  40 81 00 3C */	ble lbl_807D4054
/* 807D401C  38 00 00 02 */	li r0, 2
/* 807D4020  98 1E 14 2C */	stb r0, 0x142c(r30)
/* 807D4024  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030029@ha */
/* 807D4028  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00030029@l */
/* 807D402C  90 01 00 08 */	stw r0, 8(r1)
/* 807D4030  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807D4034  38 81 00 08 */	addi r4, r1, 8
/* 807D4038  38 A0 00 00 */	li r5, 0
/* 807D403C  38 C0 FF FF */	li r6, -1
/* 807D4040  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807D4044  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807D4048  7D 89 03 A6 */	mtctr r12
/* 807D404C  4E 80 04 21 */	bctrl 
/* 807D4050  48 00 00 30 */	b lbl_807D4080
lbl_807D4054:
/* 807D4054  7F C3 F3 78 */	mr r3, r30
/* 807D4058  38 80 00 2A */	li r4, 0x2a
/* 807D405C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 807D4060  38 A0 00 02 */	li r5, 2
/* 807D4064  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D4068  4B FF E4 E1 */	bl anm_init__FP10e_wb_classifUcf
/* 807D406C  38 00 00 02 */	li r0, 2
/* 807D4070  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D4074  A0 1E 06 BE */	lhz r0, 0x6be(r30)
/* 807D4078  60 00 00 20 */	ori r0, r0, 0x20
/* 807D407C  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_807D4080:
/* 807D4080  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807D4084  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D4088  FC 40 08 90 */	fmr f2, f1
/* 807D408C  4B A9 B9 F5 */	bl cLib_addCalc0__FPfff
/* 807D4090  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807D4094  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807D4098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807D409C  7C 08 03 A6 */	mtlr r0
/* 807D40A0  38 21 00 20 */	addi r1, r1, 0x20
/* 807D40A4  4E 80 00 20 */	blr 
