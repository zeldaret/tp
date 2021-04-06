lbl_807D79EC:
/* 807D79EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D79F0  7C 08 02 A6 */	mflr r0
/* 807D79F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D79F8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807D79FC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807D7A00  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 807D7A04  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 807D7A08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D7A0C  93 C1 00 08 */	stw r30, 8(r1)
/* 807D7A10  7C 7E 1B 78 */	mr r30, r3
/* 807D7A14  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807D7A18  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807D7A1C  C3 FF 00 48 */	lfs f31, 0x48(r31)
/* 807D7A20  C3 DF 00 60 */	lfs f30, 0x60(r31)
/* 807D7A24  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D7A28  2C 00 00 01 */	cmpwi r0, 1
/* 807D7A2C  41 82 00 34 */	beq lbl_807D7A60
/* 807D7A30  40 80 00 40 */	bge lbl_807D7A70
/* 807D7A34  2C 00 00 00 */	cmpwi r0, 0
/* 807D7A38  40 80 00 08 */	bge lbl_807D7A40
/* 807D7A3C  48 00 00 34 */	b lbl_807D7A70
lbl_807D7A40:
/* 807D7A40  38 80 00 20 */	li r4, 0x20
/* 807D7A44  FC 20 F0 90 */	fmr f1, f30
/* 807D7A48  38 A0 00 02 */	li r5, 2
/* 807D7A4C  FC 40 F0 90 */	fmr f2, f30
/* 807D7A50  4B FF AA F9 */	bl anm_init__FP10e_wb_classifUcf
/* 807D7A54  38 00 00 01 */	li r0, 1
/* 807D7A58  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D7A5C  48 00 00 14 */	b lbl_807D7A70
lbl_807D7A60:
/* 807D7A60  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E35C8@ha */
/* 807D7A64  38 63 35 C8 */	addi r3, r3, l_HIO@l /* 0x807E35C8@l */
/* 807D7A68  C3 E3 00 34 */	lfs f31, 0x34(r3)
/* 807D7A6C  C3 DF 00 F8 */	lfs f30, 0xf8(r31)
lbl_807D7A70:
/* 807D7A70  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807D7A74  FC 20 F8 90 */	fmr f1, f31
/* 807D7A78  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807D7A7C  FC 60 F0 90 */	fmr f3, f30
/* 807D7A80  4B A9 7F BD */	bl cLib_addCalc2__FPffff
/* 807D7A84  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807D7A88  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 807D7A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7A90  40 81 00 0C */	ble lbl_807D7A9C
/* 807D7A94  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807D7A98  48 00 00 14 */	b lbl_807D7AAC
lbl_807D7A9C:
/* 807D7A9C  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 807D7AA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D7AA4  40 80 00 08 */	bge lbl_807D7AAC
/* 807D7AA8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
lbl_807D7AAC:
/* 807D7AAC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807D7AB0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807D7AB4  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 807D7AB8  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 807D7ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D7AC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807D7AC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D7AC8  7C 08 03 A6 */	mtlr r0
/* 807D7ACC  38 21 00 30 */	addi r1, r1, 0x30
/* 807D7AD0  4E 80 00 20 */	blr 
