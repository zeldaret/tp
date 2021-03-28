lbl_8007A680:
/* 8007A680  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007A684  7C 08 02 A6 */	mflr r0
/* 8007A688  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007A68C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8007A690  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8007A694  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A698  48 2E 7B 45 */	bl _savegpr_29
/* 8007A69C  7C 7D 1B 78 */	mr r29, r3
/* 8007A6A0  FF E0 08 90 */	fmr f31, f1
/* 8007A6A4  7C 9F 23 78 */	mr r31, r4
/* 8007A6A8  7C BE 2B 78 */	mr r30, r5
/* 8007A6AC  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 8007A6B0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8007A6B4  40 80 00 9C */	bge lbl_8007A750
/* 8007A6B8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8007A6BC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8007A6C0  40 81 00 90 */	ble lbl_8007A750
/* 8007A6C4  80 7D 00 A0 */	lwz r3, 0xa0(r29)
/* 8007A6C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007A6CC  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8007A6D0  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8007A6D4  7C C3 02 14 */	add r6, r3, r0
/* 8007A6D8  80 BD 00 9C */	lwz r5, 0x9c(r29)
/* 8007A6DC  A0 06 00 00 */	lhz r0, 0(r6)
/* 8007A6E0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007A6E4  7C 65 02 14 */	add r3, r5, r0
/* 8007A6E8  A0 06 00 02 */	lhz r0, 2(r6)
/* 8007A6EC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007A6F0  7C 85 02 14 */	add r4, r5, r0
/* 8007A6F4  A0 06 00 04 */	lhz r0, 4(r6)
/* 8007A6F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007A6FC  7C A5 02 14 */	add r5, r5, r0
/* 8007A700  38 DE 00 24 */	addi r6, r30, 0x24
/* 8007A704  48 1F 00 B5 */	bl cM3d_CrossY_Tri_Front__FRC3VecRC3VecRC3VecPC3Vec
/* 8007A708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A70C  41 82 00 44 */	beq lbl_8007A750
/* 8007A710  7F A3 EB 78 */	mr r3, r29
/* 8007A714  57 FF 04 3E */	clrlwi r31, r31, 0x10
/* 8007A718  7F E4 FB 78 */	mr r4, r31
/* 8007A71C  80 BE 00 00 */	lwz r5, 0(r30)
/* 8007A720  81 9D 00 04 */	lwz r12, 4(r29)
/* 8007A724  81 8C 00 F8 */	lwz r12, 0xf8(r12)
/* 8007A728  7D 89 03 A6 */	mtctr r12
/* 8007A72C  4E 80 04 21 */	bctrl 
/* 8007A730  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007A734  40 82 00 1C */	bne lbl_8007A750
/* 8007A738  D3 FE 00 34 */	stfs f31, 0x34(r30)
/* 8007A73C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8007A740  7F E4 FB 78 */	mr r4, r31
/* 8007A744  48 1E DA 61 */	bl SetPolyIndex__13cBgS_PolyInfoFi
/* 8007A748  38 60 00 01 */	li r3, 1
/* 8007A74C  48 00 00 08 */	b lbl_8007A754
lbl_8007A750:
/* 8007A750  38 60 00 00 */	li r3, 0
lbl_8007A754:
/* 8007A754  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8007A758  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8007A75C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007A760  48 2E 7A C9 */	bl _restgpr_29
/* 8007A764  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007A768  7C 08 03 A6 */	mtlr r0
/* 8007A76C  38 21 00 30 */	addi r1, r1, 0x30
/* 8007A770  4E 80 00 20 */	blr 
