lbl_804E3FF8:
/* 804E3FF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E3FFC  7C 08 02 A6 */	mflr r0
/* 804E4000  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E4004  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E4008  7C 7F 1B 78 */	mr r31, r3
/* 804E400C  88 03 05 98 */	lbz r0, 0x598(r3)
/* 804E4010  28 00 00 00 */	cmplwi r0, 0
/* 804E4014  40 82 00 D4 */	bne lbl_804E40E8
/* 804E4018  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804E401C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E4020  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804E4024  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E4028  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804E402C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E4030  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 804E4034  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804E4038  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804E403C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804E4040  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 804E4044  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804E4048  3C 60 80 4E */	lis r3, lit_3919@ha /* 0x804E4A54@ha */
/* 804E404C  C0 03 4A 54 */	lfs f0, lit_3919@l(r3)  /* 0x804E4A54@l */
/* 804E4050  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E4054  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E4058  3C 60 80 4E */	lis r3, lit_4706@ha /* 0x804E4ABC@ha */
/* 804E405C  C0 03 4A BC */	lfs f0, lit_4706@l(r3)  /* 0x804E4ABC@l */
/* 804E4060  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E4064  4B FF DD 35 */	bl getNowLevel__Fv
/* 804E4068  38 A0 FF 00 */	li r5, -256
/* 804E406C  7C A5 1B 78 */	or r5, r5, r3
/* 804E4070  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E4074  7C 07 07 74 */	extsb r7, r0
/* 804E4078  38 00 00 00 */	li r0, 0
/* 804E407C  90 01 00 08 */	stw r0, 8(r1)
/* 804E4080  38 60 01 14 */	li r3, 0x114
/* 804E4084  28 1F 00 00 */	cmplwi r31, 0
/* 804E4088  41 82 00 0C */	beq lbl_804E4094
/* 804E408C  80 9F 00 04 */	lwz r4, 4(r31)
/* 804E4090  48 00 00 08 */	b lbl_804E4098
lbl_804E4094:
/* 804E4094  38 80 FF FF */	li r4, -1
lbl_804E4098:
/* 804E4098  38 C1 00 10 */	addi r6, r1, 0x10
/* 804E409C  39 00 00 00 */	li r8, 0
/* 804E40A0  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 804E40A4  39 40 FF FF */	li r10, -1
/* 804E40A8  4B B3 5E D1 */	bl fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 804E40AC  90 7F 05 94 */	stw r3, 0x594(r31)
/* 804E40B0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804E40B4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804E40B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E40BC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804E40C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804E40C4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804E40C8  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 804E40CC  3C 03 00 01 */	addis r0, r3, 1
/* 804E40D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 804E40D4  40 82 00 0C */	bne lbl_804E40E0
/* 804E40D8  38 60 00 00 */	li r3, 0
/* 804E40DC  48 00 00 10 */	b lbl_804E40EC
lbl_804E40E0:
/* 804E40E0  38 00 00 01 */	li r0, 1
/* 804E40E4  98 1F 05 98 */	stb r0, 0x598(r31)
lbl_804E40E8:
/* 804E40E8  38 60 00 01 */	li r3, 1
lbl_804E40EC:
/* 804E40EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E40F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E40F4  7C 08 03 A6 */	mtlr r0
/* 804E40F8  38 21 00 30 */	addi r1, r1, 0x30
/* 804E40FC  4E 80 00 20 */	blr 
