lbl_80CAF5EC:
/* 80CAF5EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CAF5F0  7C 08 02 A6 */	mflr r0
/* 80CAF5F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CAF5F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CAF5FC  7C 7F 1B 78 */	mr r31, r3
/* 80CAF600  4B FF FE B5 */	bl setBaseMtx__10daPillar_cFv
/* 80CAF604  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80CAF608  28 03 00 00 */	cmplwi r3, 0
/* 80CAF60C  41 82 00 10 */	beq lbl_80CAF61C
/* 80CAF610  38 03 00 24 */	addi r0, r3, 0x24
/* 80CAF614  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CAF618  48 00 00 10 */	b lbl_80CAF628
lbl_80CAF61C:
/* 80CAF61C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CAF620  38 03 00 24 */	addi r0, r3, 0x24
/* 80CAF624  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80CAF628:
/* 80CAF628  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80CAF62C  38 80 00 FF */	li r4, 0xff
/* 80CAF630  38 A0 00 FF */	li r5, 0xff
/* 80CAF634  7F E6 FB 78 */	mr r6, r31
/* 80CAF638  4B 3D 42 28 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CAF63C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80CAF640  3C 80 80 CB */	lis r4, l_cyl_src@ha
/* 80CAF644  38 84 09 F4 */	addi r4, r4, l_cyl_src@l
/* 80CAF648  4B 3D 52 6C */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CAF64C  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80CAF650  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80CAF654  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CAF658  80 63 00 04 */	lwz r3, 4(r3)
/* 80CAF65C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CAF660  80 83 00 00 */	lwz r4, 0(r3)
/* 80CAF664  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80CAF668  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CAF66C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80CAF670  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CAF674  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80CAF678  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CAF67C  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80CAF680  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CAF684  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80CAF688  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CAF68C  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80CAF690  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CAF694  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80CAF698  28 03 00 00 */	cmplwi r3, 0
/* 80CAF69C  41 82 00 84 */	beq lbl_80CAF720
/* 80CAF6A0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CAF6A4  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CAF6A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAF6AC  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CAF6B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAF6B4  40 81 00 08 */	ble lbl_80CAF6BC
/* 80CAF6B8  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80CAF6BC:
/* 80CAF6BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CAF6C0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80CAF6C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAF6C8  40 81 00 08 */	ble lbl_80CAF6D0
/* 80CAF6CC  D0 21 00 18 */	stfs f1, 0x18(r1)
lbl_80CAF6D0:
/* 80CAF6D0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CAF6D4  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80CAF6D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAF6DC  40 81 00 08 */	ble lbl_80CAF6E4
/* 80CAF6E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_80CAF6E4:
/* 80CAF6E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CAF6E8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80CAF6EC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAF6F0  40 80 00 08 */	bge lbl_80CAF6F8
/* 80CAF6F4  D0 21 00 08 */	stfs f1, 8(r1)
lbl_80CAF6F8:
/* 80CAF6F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CAF6FC  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80CAF700  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAF704  40 80 00 08 */	bge lbl_80CAF70C
/* 80CAF708  D0 21 00 0C */	stfs f1, 0xc(r1)
lbl_80CAF70C:
/* 80CAF70C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CAF710  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80CAF714  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CAF718  40 80 00 08 */	bge lbl_80CAF720
/* 80CAF71C  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_80CAF720:
/* 80CAF720  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CAF724  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 80CAF728  EC 40 08 2A */	fadds f2, f0, f1
/* 80CAF72C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80CAF730  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CAF734  EC A0 08 2A */	fadds f5, f0, f1
/* 80CAF738  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80CAF73C  7F E3 FB 78 */	mr r3, r31
/* 80CAF740  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CAF744  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80CAF748  C0 81 00 08 */	lfs f4, 8(r1)
/* 80CAF74C  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 80CAF750  4B 36 AD F8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CAF754  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAF758  54 00 46 3F */	rlwinm. r0, r0, 8, 0x18, 0x1f
/* 80CAF75C  41 82 00 0C */	beq lbl_80CAF768
/* 80CAF760  28 00 00 FF */	cmplwi r0, 0xff
/* 80CAF764  40 82 00 10 */	bne lbl_80CAF774
lbl_80CAF768:
/* 80CAF768  38 00 00 04 */	li r0, 4
/* 80CAF76C  B0 1F 07 36 */	sth r0, 0x736(r31)
/* 80CAF770  48 00 00 08 */	b lbl_80CAF778
lbl_80CAF774:
/* 80CAF774  B0 1F 07 36 */	sth r0, 0x736(r31)
lbl_80CAF778:
/* 80CAF778  38 00 00 FF */	li r0, 0xff
/* 80CAF77C  90 1F 07 38 */	stw r0, 0x738(r31)
/* 80CAF780  3C 60 80 CB */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80CAF784  38 03 F3 F8 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80CAF788  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80CAF78C  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80CAF790  38 60 00 01 */	li r3, 1
/* 80CAF794  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CAF798  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CAF79C  7C 08 03 A6 */	mtlr r0
/* 80CAF7A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CAF7A4  4E 80 00 20 */	blr 
