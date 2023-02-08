lbl_80CA9530:
/* 80CA9530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9534  7C 08 02 A6 */	mflr r0
/* 80CA9538  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA953C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA9540  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA9544  7C 7E 1B 78 */	mr r30, r3
/* 80CA9548  3C 60 80 CB */	lis r3, lit_3655@ha /* 0x80CA9B78@ha */
/* 80CA954C  3B E3 9B 78 */	addi r31, r3, lit_3655@l /* 0x80CA9B78@l */
/* 80CA9550  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80CA9554  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80CA9558  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 80CA955C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80CA9560  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 80CA9564  4B 5C 64 19 */	bl cLib_addCalc__FPfffff
/* 80CA9568  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80CA956C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80CA9570  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CA9574  40 80 00 08 */	bge lbl_80CA957C
/* 80CA9578  48 00 00 18 */	b lbl_80CA9590
lbl_80CA957C:
/* 80CA957C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80CA9580  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CA9584  40 81 00 08 */	ble lbl_80CA958C
/* 80CA9588  48 00 00 08 */	b lbl_80CA9590
lbl_80CA958C:
/* 80CA958C  FC 20 00 90 */	fmr f1, f0
lbl_80CA9590:
/* 80CA9590  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 80CA9594  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80CA9598  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CA959C  41 82 00 14 */	beq lbl_80CA95B0
/* 80CA95A0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CA95A4  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80CA95A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CA95AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CA95B0:
/* 80CA95B0  7F C3 F3 78 */	mr r3, r30
/* 80CA95B4  4B FF F6 BD */	bl chkWaterLineIn__11daOnsTaru_cFv
/* 80CA95B8  2C 03 00 00 */	cmpwi r3, 0
/* 80CA95BC  41 82 00 10 */	beq lbl_80CA95CC
/* 80CA95C0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80CA95C4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CA95C8  48 00 00 0C */	b lbl_80CA95D4
lbl_80CA95CC:
/* 80CA95CC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80CA95D0  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80CA95D4:
/* 80CA95D4  7F C3 F3 78 */	mr r3, r30
/* 80CA95D8  38 9E 07 BC */	addi r4, r30, 0x7bc
/* 80CA95DC  4B 37 10 F1 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CA95E0  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80CA95E4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80CA95E8  41 82 00 14 */	beq lbl_80CA95FC
/* 80CA95EC  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80CA95F0  60 00 00 10 */	ori r0, r0, 0x10
/* 80CA95F4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80CA95F8  48 00 00 10 */	b lbl_80CA9608
lbl_80CA95FC:
/* 80CA95FC  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80CA9600  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CA9604  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80CA9608:
/* 80CA9608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA960C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA9610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9614  7C 08 03 A6 */	mtlr r0
/* 80CA9618  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA961C  4E 80 00 20 */	blr 
