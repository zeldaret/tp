lbl_8063C76C:
/* 8063C76C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8063C770  7C 08 02 A6 */	mflr r0
/* 8063C774  90 01 00 54 */	stw r0, 0x54(r1)
/* 8063C778  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8063C77C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8063C780  39 61 00 40 */	addi r11, r1, 0x40
/* 8063C784  4B D2 5A 59 */	bl _savegpr_29
/* 8063C788  7C 7D 1B 78 */	mr r29, r3
/* 8063C78C  3C 60 80 64 */	lis r3, lit_3776@ha /* 0x8063DC84@ha */
/* 8063C790  3B E3 DC 84 */	addi r31, r3, lit_3776@l /* 0x8063DC84@l */
/* 8063C794  38 61 00 0C */	addi r3, r1, 0xc
/* 8063C798  80 9D 06 68 */	lwz r4, 0x668(r29)
/* 8063C79C  48 00 14 B9 */	bl getIceCenterPos__8daB_YO_cFv
/* 8063C7A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8063C7A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8063C7A8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8063C7AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063C7B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8063C7B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063C7B8  80 7D 06 68 */	lwz r3, 0x668(r29)
/* 8063C7BC  C3 E3 0F 4C */	lfs f31, 0xf4c(r3)
/* 8063C7C0  AB C3 0F 5C */	lha r30, 0xf5c(r3)
/* 8063C7C4  38 7D 06 80 */	addi r3, r29, 0x680
/* 8063C7C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8063C7CC  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8063C7D0  4B C3 3F 71 */	bl cLib_chaseF__FPfff
/* 8063C7D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063C7D8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063C7DC  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8063C7E0  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063C7E4  7C 1E 02 14 */	add r0, r30, r0
/* 8063C7E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063C7EC  7C 64 02 14 */	add r3, r4, r0
/* 8063C7F0  C0 63 00 04 */	lfs f3, 4(r3)
/* 8063C7F4  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8063C7F8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063C7FC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8063C800  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063C804  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C808  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8063C80C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8063C810  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8063C814  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8063C818  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C81C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8063C820  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8063C824  2C 00 00 01 */	cmpwi r0, 1
/* 8063C828  41 82 00 48 */	beq lbl_8063C870
/* 8063C82C  40 80 00 B4 */	bge lbl_8063C8E0
/* 8063C830  2C 00 00 00 */	cmpwi r0, 0
/* 8063C834  40 80 00 08 */	bge lbl_8063C83C
/* 8063C838  48 00 00 A8 */	b lbl_8063C8E0
lbl_8063C83C:
/* 8063C83C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C840  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8063C844  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8063C848  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8063C84C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8063C850  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8063C854  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8063C858  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8063C85C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8063C860  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8063C864  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8063C868  38 00 00 01 */	li r0, 1
/* 8063C86C  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8063C870:
/* 8063C870  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063C874  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063C878  90 01 00 08 */	stw r0, 8(r1)
/* 8063C87C  38 7D 06 48 */	addi r3, r29, 0x648
/* 8063C880  38 81 00 08 */	addi r4, r1, 8
/* 8063C884  38 A0 00 00 */	li r5, 0
/* 8063C888  38 C0 FF FF */	li r6, -1
/* 8063C88C  81 9D 06 58 */	lwz r12, 0x658(r29)
/* 8063C890  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063C894  7D 89 03 A6 */	mtctr r12
/* 8063C898  4E 80 04 21 */	bctrl 
/* 8063C89C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8063C8A0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8063C8A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C8A8  40 80 00 18 */	bge lbl_8063C8C0
/* 8063C8AC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8063C8B0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8063C8B4  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063C8B8  4B C3 3E 89 */	bl cLib_chaseF__FPfff
/* 8063C8BC  48 00 00 14 */	b lbl_8063C8D0
lbl_8063C8C0:
/* 8063C8C0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8063C8C4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8063C8C8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063C8CC  4B C3 3E 75 */	bl cLib_chaseF__FPfff
lbl_8063C8D0:
/* 8063C8D0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8063C8D4  38 81 00 18 */	addi r4, r1, 0x18
/* 8063C8D8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8063C8DC  4B C3 3E D1 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
lbl_8063C8E0:
/* 8063C8E0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8063C8E4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8063C8E8  39 61 00 40 */	addi r11, r1, 0x40
/* 8063C8EC  4B D2 59 3D */	bl _restgpr_29
/* 8063C8F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8063C8F4  7C 08 03 A6 */	mtlr r0
/* 8063C8F8  38 21 00 50 */	addi r1, r1, 0x50
/* 8063C8FC  4E 80 00 20 */	blr 
