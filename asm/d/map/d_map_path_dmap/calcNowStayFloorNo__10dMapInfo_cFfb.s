lbl_8003F570:
/* 8003F570  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003F574  7C 08 02 A6 */	mflr r0
/* 8003F578  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003F57C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8003F580  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8003F584  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003F588  FF E0 08 90 */	fmr f31, f1
/* 8003F58C  7C 7F 1B 78 */	mr r31, r3
/* 8003F590  38 61 00 08 */	addi r3, r1, 8
/* 8003F594  38 80 00 00 */	li r4, 0
/* 8003F598  38 A1 00 10 */	addi r5, r1, 0x10
/* 8003F59C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8003F5A0  38 E0 00 00 */	li r7, 0
/* 8003F5A4  4B FF FC A9 */	bl getFloorParameter__10dMapInfo_nFfPScPfPfPfPf
/* 8003F5A8  88 0D 88 E0 */	lbz r0, data_80450E60(r13)
/* 8003F5AC  28 00 00 00 */	cmplwi r0, 0
/* 8003F5B0  41 82 00 5C */	beq lbl_8003F60C
/* 8003F5B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8003F5B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8003F5BC  40 80 00 40 */	bge lbl_8003F5FC
/* 8003F5C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8003F5C4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8003F5C8  4C 41 13 82 */	cror 2, 1, 2
/* 8003F5CC  40 82 00 6C */	bne lbl_8003F638
/* 8003F5D0  88 AD 88 D8 */	lbz r5, data_80450E58(r13)
/* 8003F5D4  7C A4 07 74 */	extsb r4, r5
/* 8003F5D8  88 01 00 08 */	lbz r0, 8(r1)
/* 8003F5DC  7C 03 07 74 */	extsb r3, r0
/* 8003F5E0  7C 04 18 00 */	cmpw r4, r3
/* 8003F5E4  41 82 00 10 */	beq lbl_8003F5F4
/* 8003F5E8  38 03 00 01 */	addi r0, r3, 1
/* 8003F5EC  7C 04 00 00 */	cmpw r4, r0
/* 8003F5F0  40 82 00 48 */	bne lbl_8003F638
lbl_8003F5F4:
/* 8003F5F4  98 A1 00 08 */	stb r5, 8(r1)
/* 8003F5F8  48 00 00 40 */	b lbl_8003F638
lbl_8003F5FC:
/* 8003F5FC  88 61 00 08 */	lbz r3, 8(r1)
/* 8003F600  38 03 00 01 */	addi r0, r3, 1
/* 8003F604  98 01 00 08 */	stb r0, 8(r1)
/* 8003F608  48 00 00 30 */	b lbl_8003F638
lbl_8003F60C:
/* 8003F60C  C0 42 84 2C */	lfs f2, lit_3887(r2)
/* 8003F610  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8003F614  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8003F618  EC 01 00 2A */	fadds f0, f1, f0
/* 8003F61C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8003F620  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8003F624  4C 41 13 82 */	cror 2, 1, 2
/* 8003F628  40 82 00 10 */	bne lbl_8003F638
/* 8003F62C  88 61 00 08 */	lbz r3, 8(r1)
/* 8003F630  38 03 00 01 */	addi r0, r3, 1
/* 8003F634  98 01 00 08 */	stb r0, 8(r1)
lbl_8003F638:
/* 8003F638  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8003F63C  41 82 00 6C */	beq lbl_8003F6A8
/* 8003F640  80 0D 88 DC */	lwz r0, mNowStayRoomNo__10dMapInfo_c(r13)
/* 8003F644  2C 00 00 00 */	cmpwi r0, 0
/* 8003F648  41 80 00 60 */	blt lbl_8003F6A8
/* 8003F64C  2C 00 00 40 */	cmpwi r0, 0x40
/* 8003F650  40 80 00 58 */	bge lbl_8003F6A8
/* 8003F654  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8003F658  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8003F65C  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8003F660  7C 63 02 14 */	add r3, r3, r0
/* 8003F664  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8003F668  28 03 00 00 */	cmplwi r3, 0
/* 8003F66C  41 82 00 3C */	beq lbl_8003F6A8
/* 8003F670  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8003F674  7C 04 07 74 */	extsb r4, r0
/* 8003F678  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8003F67C  7C 03 07 74 */	extsb r3, r0
/* 8003F680  88 01 00 08 */	lbz r0, 8(r1)
/* 8003F684  7C 00 07 74 */	extsb r0, r0
/* 8003F688  7C 00 20 00 */	cmpw r0, r4
/* 8003F68C  40 80 00 08 */	bge lbl_8003F694
/* 8003F690  98 81 00 08 */	stb r4, 8(r1)
lbl_8003F694:
/* 8003F694  88 01 00 08 */	lbz r0, 8(r1)
/* 8003F698  7C 00 07 74 */	extsb r0, r0
/* 8003F69C  7C 00 18 00 */	cmpw r0, r3
/* 8003F6A0  40 81 00 08 */	ble lbl_8003F6A8
/* 8003F6A4  98 61 00 08 */	stb r3, 8(r1)
lbl_8003F6A8:
/* 8003F6A8  88 61 00 08 */	lbz r3, 8(r1)
/* 8003F6AC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8003F6B0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8003F6B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003F6B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003F6BC  7C 08 03 A6 */	mtlr r0
/* 8003F6C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8003F6C4  4E 80 00 20 */	blr 
