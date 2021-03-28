lbl_8026C5D0:
/* 8026C5D0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8026C5D4  7C 08 02 A6 */	mflr r0
/* 8026C5D8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8026C5DC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8026C5E0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8026C5E4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8026C5E8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8026C5EC  39 61 00 70 */	addi r11, r1, 0x70
/* 8026C5F0  48 0F 5B ED */	bl _savegpr_29
/* 8026C5F4  7C 7D 1B 78 */	mr r29, r3
/* 8026C5F8  7C 9E 23 78 */	mr r30, r4
/* 8026C5FC  7C BF 2B 78 */	mr r31, r5
/* 8026C600  C0 23 00 04 */	lfs f1, 4(r3)
/* 8026C604  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026C608  EF E1 00 2A */	fadds f31, f1, f0
/* 8026C60C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8026C610  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026C614  40 81 00 1C */	ble lbl_8026C630
/* 8026C618  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8026C61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026C620  40 81 00 10 */	ble lbl_8026C630
/* 8026C624  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8026C628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026C62C  41 81 00 24 */	bgt lbl_8026C650
lbl_8026C630:
/* 8026C630  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 8026C634  40 80 00 24 */	bge lbl_8026C658
/* 8026C638  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8026C63C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026C640  40 80 00 18 */	bge lbl_8026C658
/* 8026C644  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8026C648  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026C64C  40 80 00 0C */	bge lbl_8026C658
lbl_8026C650:
/* 8026C650  38 60 00 00 */	li r3, 0
/* 8026C654  48 00 02 C8 */	b lbl_8026C91C
lbl_8026C658:
/* 8026C658  C3 C2 B7 C8 */	lfs f30, lit_4255(r2)
/* 8026C65C  7F A3 EB 78 */	mr r3, r29
/* 8026C660  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026C664  38 BE 00 20 */	addi r5, r30, 0x20
/* 8026C668  38 C1 00 54 */	addi r6, r1, 0x54
/* 8026C66C  38 E1 00 48 */	addi r7, r1, 0x48
/* 8026C670  48 00 09 D5 */	bl cM3d_Cross_CylPntPnt__FPC8cM3dGCylPC3VecPC3VecP3VecP3Vec
/* 8026C674  2C 03 00 00 */	cmpwi r3, 0
/* 8026C678  41 82 00 2C */	beq lbl_8026C6A4
/* 8026C67C  38 61 00 54 */	addi r3, r1, 0x54
/* 8026C680  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026C684  48 0D AD 19 */	bl PSVECSquareDistance
/* 8026C688  FF C0 08 90 */	fmr f30, f1
/* 8026C68C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8026C690  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026C694  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8026C698  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026C69C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8026C6A0  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8026C6A4:
/* 8026C6A4  7F A3 EB 78 */	mr r3, r29
/* 8026C6A8  38 9E 00 2C */	addi r4, r30, 0x2c
/* 8026C6AC  38 BE 00 20 */	addi r5, r30, 0x20
/* 8026C6B0  38 C1 00 54 */	addi r6, r1, 0x54
/* 8026C6B4  38 E1 00 48 */	addi r7, r1, 0x48
/* 8026C6B8  48 00 09 8D */	bl cM3d_Cross_CylPntPnt__FPC8cM3dGCylPC3VecPC3VecP3VecP3Vec
/* 8026C6BC  2C 03 00 00 */	cmpwi r3, 0
/* 8026C6C0  41 82 00 34 */	beq lbl_8026C6F4
/* 8026C6C4  38 61 00 54 */	addi r3, r1, 0x54
/* 8026C6C8  38 9E 00 2C */	addi r4, r30, 0x2c
/* 8026C6CC  48 0D AC D1 */	bl PSVECSquareDistance
/* 8026C6D0  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 8026C6D4  40 81 00 20 */	ble lbl_8026C6F4
/* 8026C6D8  FF C0 08 90 */	fmr f30, f1
/* 8026C6DC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8026C6E0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026C6E4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8026C6E8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026C6EC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8026C6F0  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8026C6F4:
/* 8026C6F4  7F A3 EB 78 */	mr r3, r29
/* 8026C6F8  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026C6FC  38 BE 00 2C */	addi r5, r30, 0x2c
/* 8026C700  38 C1 00 54 */	addi r6, r1, 0x54
/* 8026C704  38 E1 00 48 */	addi r7, r1, 0x48
/* 8026C708  48 00 09 3D */	bl cM3d_Cross_CylPntPnt__FPC8cM3dGCylPC3VecPC3VecP3VecP3Vec
/* 8026C70C  2C 03 00 00 */	cmpwi r3, 0
/* 8026C710  41 82 00 34 */	beq lbl_8026C744
/* 8026C714  38 61 00 54 */	addi r3, r1, 0x54
/* 8026C718  38 9E 00 14 */	addi r4, r30, 0x14
/* 8026C71C  48 0D AC 81 */	bl PSVECSquareDistance
/* 8026C720  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 8026C724  40 81 00 20 */	ble lbl_8026C744
/* 8026C728  FF C0 08 90 */	fmr f30, f1
/* 8026C72C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8026C730  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026C734  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8026C738  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026C73C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8026C740  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8026C744:
/* 8026C744  C0 02 B7 C8 */	lfs f0, lit_4255(r2)
/* 8026C748  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 8026C74C  41 82 00 0C */	beq lbl_8026C758
/* 8026C750  38 60 00 01 */	li r3, 1
/* 8026C754  48 00 01 C8 */	b lbl_8026C91C
lbl_8026C758:
/* 8026C758  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026C75C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026C760  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 8026C764  7F C3 F3 78 */	mr r3, r30
/* 8026C768  7F A4 EB 78 */	mr r4, r29
/* 8026C76C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8026C770  38 C1 00 0C */	addi r6, r1, 0xc
/* 8026C774  4B FF E3 75 */	bl cM3d_CrossY_Tri__FPC8cM3dGTriPC3VecPC10cM3d_RangePf
/* 8026C778  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C77C  41 82 01 9C */	beq lbl_8026C918
/* 8026C780  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026C784  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8026C788  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026C78C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8026C790  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8026C794  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8026C798  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8026C79C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8026C7A0  38 7E 00 14 */	addi r3, r30, 0x14
/* 8026C7A4  38 9E 00 20 */	addi r4, r30, 0x20
/* 8026C7A8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8026C7AC  48 0D A8 E5 */	bl PSVECAdd
/* 8026C7B0  38 61 00 18 */	addi r3, r1, 0x18
/* 8026C7B4  38 81 00 30 */	addi r4, r1, 0x30
/* 8026C7B8  C0 22 B7 C4 */	lfs f1, lit_3892(r2)
/* 8026C7BC  48 0D A9 1D */	bl PSVECScale
/* 8026C7C0  38 61 00 30 */	addi r3, r1, 0x30
/* 8026C7C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8026C7C8  38 A1 00 24 */	addi r5, r1, 0x24
/* 8026C7CC  48 0D A8 E9 */	bl PSVECSubtract
/* 8026C7D0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8026C7D4  EC 20 00 32 */	fmuls f1, f0, f0
/* 8026C7D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8026C7DC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8026C7E0  EC 81 00 2A */	fadds f4, f1, f0
/* 8026C7E4  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026C7E8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C7EC  40 81 00 58 */	ble lbl_8026C844
/* 8026C7F0  FC 00 20 34 */	frsqrte f0, f4
/* 8026C7F4  C8 62 B7 20 */	lfd f3, lit_2257(r2)
/* 8026C7F8  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C7FC  C8 42 B7 28 */	lfd f2, lit_2258(r2)
/* 8026C800  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C804  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C808  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C80C  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C810  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C814  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C818  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C81C  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C820  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C824  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C828  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C82C  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C830  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C834  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C838  FC 84 00 32 */	fmul f4, f4, f0
/* 8026C83C  FC 80 20 18 */	frsp f4, f4
/* 8026C840  48 00 00 88 */	b lbl_8026C8C8
lbl_8026C844:
/* 8026C844  C8 02 B7 30 */	lfd f0, lit_2259(r2)
/* 8026C848  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C84C  40 80 00 10 */	bge lbl_8026C85C
/* 8026C850  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8026C854  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 8026C858  48 00 00 70 */	b lbl_8026C8C8
lbl_8026C85C:
/* 8026C85C  D0 81 00 08 */	stfs f4, 8(r1)
/* 8026C860  80 81 00 08 */	lwz r4, 8(r1)
/* 8026C864  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026C868  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026C86C  7C 03 00 00 */	cmpw r3, r0
/* 8026C870  41 82 00 14 */	beq lbl_8026C884
/* 8026C874  40 80 00 40 */	bge lbl_8026C8B4
/* 8026C878  2C 03 00 00 */	cmpwi r3, 0
/* 8026C87C  41 82 00 20 */	beq lbl_8026C89C
/* 8026C880  48 00 00 34 */	b lbl_8026C8B4
lbl_8026C884:
/* 8026C884  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026C888  41 82 00 0C */	beq lbl_8026C894
/* 8026C88C  38 00 00 01 */	li r0, 1
/* 8026C890  48 00 00 28 */	b lbl_8026C8B8
lbl_8026C894:
/* 8026C894  38 00 00 02 */	li r0, 2
/* 8026C898  48 00 00 20 */	b lbl_8026C8B8
lbl_8026C89C:
/* 8026C89C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026C8A0  41 82 00 0C */	beq lbl_8026C8AC
/* 8026C8A4  38 00 00 05 */	li r0, 5
/* 8026C8A8  48 00 00 10 */	b lbl_8026C8B8
lbl_8026C8AC:
/* 8026C8AC  38 00 00 03 */	li r0, 3
/* 8026C8B0  48 00 00 08 */	b lbl_8026C8B8
lbl_8026C8B4:
/* 8026C8B4  38 00 00 04 */	li r0, 4
lbl_8026C8B8:
/* 8026C8B8  2C 00 00 01 */	cmpwi r0, 1
/* 8026C8BC  40 82 00 0C */	bne lbl_8026C8C8
/* 8026C8C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8026C8C4  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_8026C8C8:
/* 8026C8C8  FC 00 22 10 */	fabs f0, f4
/* 8026C8CC  FC 20 00 18 */	frsp f1, f0
/* 8026C8D0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026C8D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026C8D8  40 80 00 20 */	bge lbl_8026C8F8
/* 8026C8DC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8026C8E0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8026C8E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8026C8E8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8026C8EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8026C8F0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8026C8F4  48 00 00 1C */	b lbl_8026C910
lbl_8026C8F8:
/* 8026C8F8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8026C8FC  38 81 00 24 */	addi r4, r1, 0x24
/* 8026C900  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8026C904  EC 20 20 24 */	fdivs f1, f0, f4
/* 8026C908  7F E5 FB 78 */	mr r5, r31
/* 8026C90C  4B FF BC 55 */	bl cM3d_InDivPos1__FPC3VecPC3VecfP3Vec
lbl_8026C910:
/* 8026C910  38 60 00 01 */	li r3, 1
/* 8026C914  48 00 00 08 */	b lbl_8026C91C
lbl_8026C918:
/* 8026C918  38 60 00 00 */	li r3, 0
lbl_8026C91C:
/* 8026C91C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8026C920  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8026C924  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8026C928  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8026C92C  39 61 00 70 */	addi r11, r1, 0x70
/* 8026C930  48 0F 58 F9 */	bl _restgpr_29
/* 8026C934  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8026C938  7C 08 03 A6 */	mtlr r0
/* 8026C93C  38 21 00 90 */	addi r1, r1, 0x90
/* 8026C940  4E 80 00 20 */	blr 
