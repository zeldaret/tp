lbl_8003F40C:
/* 8003F40C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003F410  7C 08 02 A6 */	mflr r0
/* 8003F414  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003F418  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8003F41C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8003F420  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003F424  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003F428  FF E0 08 90 */	fmr f31, f1
/* 8003F42C  7C 7E 1B 78 */	mr r30, r3
/* 8003F430  7C 9F 23 78 */	mr r31, r4
/* 8003F434  38 61 00 08 */	addi r3, r1, 8
/* 8003F438  38 80 00 00 */	li r4, 0
/* 8003F43C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8003F440  38 C1 00 0C */	addi r6, r1, 0xc
/* 8003F444  38 E0 00 00 */	li r7, 0
/* 8003F448  4B FF FE 05 */	bl getFloorParameter__10dMapInfo_nFfPScPfPfPfPf
/* 8003F44C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8003F450  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8003F454  40 80 00 80 */	bge lbl_8003F4D4
/* 8003F458  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8003F45C  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8003F460  4C 41 13 82 */	cror 2, 1, 2
/* 8003F464  40 82 00 7C */	bne lbl_8003F4E0
/* 8003F468  80 0D 88 DC */	lwz r0, mNowStayRoomNo__10dMapInfo_c(r13)
/* 8003F46C  7C 1F 00 00 */	cmpw r31, r0
/* 8003F470  40 82 00 3C */	bne lbl_8003F4AC
/* 8003F474  88 0D 88 E0 */	lbz r0, data_80450E60(r13)
/* 8003F478  28 00 00 00 */	cmplwi r0, 0
/* 8003F47C  41 82 00 30 */	beq lbl_8003F4AC
/* 8003F480  88 AD 88 D8 */	lbz r5, data_80450E58(r13)
/* 8003F484  7C A4 07 74 */	extsb r4, r5
/* 8003F488  88 01 00 08 */	lbz r0, 8(r1)
/* 8003F48C  7C 03 07 74 */	extsb r3, r0
/* 8003F490  7C 04 18 00 */	cmpw r4, r3
/* 8003F494  41 82 00 10 */	beq lbl_8003F4A4
/* 8003F498  38 03 00 01 */	addi r0, r3, 1
/* 8003F49C  7C 04 00 00 */	cmpw r4, r0
/* 8003F4A0  40 82 00 0C */	bne lbl_8003F4AC
lbl_8003F4A4:
/* 8003F4A4  98 A1 00 08 */	stb r5, 8(r1)
/* 8003F4A8  48 00 00 38 */	b lbl_8003F4E0
lbl_8003F4AC:
/* 8003F4AC  C0 22 84 2C */	lfs f1, lit_3887(r2)
/* 8003F4B0  EC 02 00 2A */	fadds f0, f2, f0
/* 8003F4B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8003F4B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8003F4BC  4C 41 13 82 */	cror 2, 1, 2
/* 8003F4C0  40 82 00 20 */	bne lbl_8003F4E0
/* 8003F4C4  88 61 00 08 */	lbz r3, 8(r1)
/* 8003F4C8  38 03 00 01 */	addi r0, r3, 1
/* 8003F4CC  98 01 00 08 */	stb r0, 8(r1)
/* 8003F4D0  48 00 00 10 */	b lbl_8003F4E0
lbl_8003F4D4:
/* 8003F4D4  88 61 00 08 */	lbz r3, 8(r1)
/* 8003F4D8  38 03 00 01 */	addi r0, r3, 1
/* 8003F4DC  98 01 00 08 */	stb r0, 8(r1)
lbl_8003F4E0:
/* 8003F4E0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8003F4E4  41 82 00 68 */	beq lbl_8003F54C
/* 8003F4E8  2C 1F 00 00 */	cmpwi r31, 0
/* 8003F4EC  41 80 00 60 */	blt lbl_8003F54C
/* 8003F4F0  2C 1F 00 40 */	cmpwi r31, 0x40
/* 8003F4F4  40 80 00 58 */	bge lbl_8003F54C
/* 8003F4F8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8003F4FC  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8003F500  1C 1F 04 04 */	mulli r0, r31, 0x404
/* 8003F504  7C 63 02 14 */	add r3, r3, r0
/* 8003F508  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8003F50C  28 03 00 00 */	cmplwi r3, 0
/* 8003F510  41 82 00 3C */	beq lbl_8003F54C
/* 8003F514  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8003F518  7C 04 07 74 */	extsb r4, r0
/* 8003F51C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8003F520  7C 03 07 74 */	extsb r3, r0
/* 8003F524  88 01 00 08 */	lbz r0, 8(r1)
/* 8003F528  7C 00 07 74 */	extsb r0, r0
/* 8003F52C  7C 00 20 00 */	cmpw r0, r4
/* 8003F530  40 80 00 08 */	bge lbl_8003F538
/* 8003F534  98 81 00 08 */	stb r4, 8(r1)
lbl_8003F538:
/* 8003F538  88 01 00 08 */	lbz r0, 8(r1)
/* 8003F53C  7C 00 07 74 */	extsb r0, r0
/* 8003F540  7C 00 18 00 */	cmpw r0, r3
/* 8003F544  40 81 00 08 */	ble lbl_8003F54C
/* 8003F548  98 61 00 08 */	stb r3, 8(r1)
lbl_8003F54C:
/* 8003F54C  88 61 00 08 */	lbz r3, 8(r1)
/* 8003F550  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8003F554  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8003F558  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003F55C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003F560  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003F564  7C 08 03 A6 */	mtlr r0
/* 8003F568  38 21 00 30 */	addi r1, r1, 0x30
/* 8003F56C  4E 80 00 20 */	blr 
