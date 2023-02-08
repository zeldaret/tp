lbl_80BAFC08:
/* 80BAFC08  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80BAFC0C  7C 08 02 A6 */	mflr r0
/* 80BAFC10  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80BAFC14  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80BAFC18  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80BAFC1C  7C 7E 1B 78 */	mr r30, r3
/* 80BAFC20  3C 60 80 BB */	lis r3, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BAFC24  3B E3 37 B8 */	addi r31, r3, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BAFC28  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BAFC2C  38 9E 0F CC */	addi r4, r30, 0xfcc
/* 80BAFC30  38 BE 0F B8 */	addi r5, r30, 0xfb8
/* 80BAFC34  4B 6B 6F 01 */	bl __mi__4cXyzCFRC3Vec
/* 80BAFC38  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BAFC3C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BAFC40  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BAFC44  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BAFC48  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80BAFC4C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BAFC50  C0 1E 0F B8 */	lfs f0, 0xfb8(r30)
/* 80BAFC54  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BAFC58  C0 1E 0F BC */	lfs f0, 0xfbc(r30)
/* 80BAFC5C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BAFC60  C0 1E 0F C0 */	lfs f0, 0xfc0(r30)
/* 80BAFC64  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BAFC68  38 61 00 30 */	addi r3, r1, 0x30
/* 80BAFC6C  38 81 00 60 */	addi r4, r1, 0x60
/* 80BAFC70  4B 6B 72 D9 */	bl normalizeZP__4cXyzFv
/* 80BAFC74  38 61 00 24 */	addi r3, r1, 0x24
/* 80BAFC78  38 81 00 60 */	addi r4, r1, 0x60
/* 80BAFC7C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80BAFC80  4B 6B 6F 05 */	bl __ml__4cXyzCFf
/* 80BAFC84  38 61 00 54 */	addi r3, r1, 0x54
/* 80BAFC88  38 81 00 24 */	addi r4, r1, 0x24
/* 80BAFC8C  7C 65 1B 78 */	mr r5, r3
/* 80BAFC90  4B 79 74 01 */	bl PSVECAdd
/* 80BAFC94  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80BAFC98  38 81 00 54 */	addi r4, r1, 0x54
/* 80BAFC9C  7F C5 F3 78 */	mr r5, r30
/* 80BAFCA0  4B 46 DF C9 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BAFCA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAFCA8  41 82 01 54 */	beq lbl_80BAFDFC
/* 80BAFCAC  3C 60 80 BB */	lis r3, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BAFCB0  38 03 3E 40 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BAFCB4  90 01 00 90 */	stw r0, 0x90(r1)
/* 80BAFCB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAFCBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAFCC0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BAFCC4  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BAFCC8  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BAFCCC  38 84 00 14 */	addi r4, r4, 0x14
/* 80BAFCD0  38 A1 00 80 */	addi r5, r1, 0x80
/* 80BAFCD4  4B 4C 4A 71 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BAFCD8  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80BAFCDC  4B 6B 85 09 */	bl cBgW_CheckBGround__Ff
/* 80BAFCE0  3C 80 80 BB */	lis r4, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BAFCE4  38 04 3E 40 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BAFCE8  90 01 00 90 */	stw r0, 0x90(r1)
/* 80BAFCEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAFCF0  41 82 01 0C */	beq lbl_80BAFDFC
/* 80BAFCF4  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BAFCF8  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BAFCFC  38 83 00 30 */	addi r4, r3, 0x30
/* 80BAFD00  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80BAFD04  4B 79 76 99 */	bl PSVECSquareDistance
/* 80BAFD08  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BAFD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAFD10  40 81 00 58 */	ble lbl_80BAFD68
/* 80BAFD14  FC 00 08 34 */	frsqrte f0, f1
/* 80BAFD18  C8 9F 00 98 */	lfd f4, 0x98(r31)
/* 80BAFD1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAFD20  C8 7F 00 A0 */	lfd f3, 0xa0(r31)
/* 80BAFD24  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAFD28  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAFD2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAFD30  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAFD34  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAFD38  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAFD3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAFD40  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAFD44  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAFD48  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAFD4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAFD50  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAFD54  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAFD58  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAFD5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAFD60  FC 20 08 18 */	frsp f1, f1
/* 80BAFD64  48 00 00 88 */	b lbl_80BAFDEC
lbl_80BAFD68:
/* 80BAFD68  C8 1F 00 A8 */	lfd f0, 0xa8(r31)
/* 80BAFD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAFD70  40 80 00 10 */	bge lbl_80BAFD80
/* 80BAFD74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAFD78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAFD7C  48 00 00 70 */	b lbl_80BAFDEC
lbl_80BAFD80:
/* 80BAFD80  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAFD84  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAFD88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAFD8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAFD90  7C 03 00 00 */	cmpw r3, r0
/* 80BAFD94  41 82 00 14 */	beq lbl_80BAFDA8
/* 80BAFD98  40 80 00 40 */	bge lbl_80BAFDD8
/* 80BAFD9C  2C 03 00 00 */	cmpwi r3, 0
/* 80BAFDA0  41 82 00 20 */	beq lbl_80BAFDC0
/* 80BAFDA4  48 00 00 34 */	b lbl_80BAFDD8
lbl_80BAFDA8:
/* 80BAFDA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAFDAC  41 82 00 0C */	beq lbl_80BAFDB8
/* 80BAFDB0  38 00 00 01 */	li r0, 1
/* 80BAFDB4  48 00 00 28 */	b lbl_80BAFDDC
lbl_80BAFDB8:
/* 80BAFDB8  38 00 00 02 */	li r0, 2
/* 80BAFDBC  48 00 00 20 */	b lbl_80BAFDDC
lbl_80BAFDC0:
/* 80BAFDC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAFDC4  41 82 00 0C */	beq lbl_80BAFDD0
/* 80BAFDC8  38 00 00 05 */	li r0, 5
/* 80BAFDCC  48 00 00 10 */	b lbl_80BAFDDC
lbl_80BAFDD0:
/* 80BAFDD0  38 00 00 03 */	li r0, 3
/* 80BAFDD4  48 00 00 08 */	b lbl_80BAFDDC
lbl_80BAFDD8:
/* 80BAFDD8  38 00 00 04 */	li r0, 4
lbl_80BAFDDC:
/* 80BAFDDC  2C 00 00 01 */	cmpwi r0, 1
/* 80BAFDE0  40 82 00 0C */	bne lbl_80BAFDEC
/* 80BAFDE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAFDE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BAFDEC:
/* 80BAFDEC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80BAFDF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BAFDF4  D0 1E 10 A8 */	stfs f0, 0x10a8(r30)
/* 80BAFDF8  48 00 00 0C */	b lbl_80BAFE04
lbl_80BAFDFC:
/* 80BAFDFC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80BAFE00  D0 1E 10 A8 */	stfs f0, 0x10a8(r30)
lbl_80BAFE04:
/* 80BAFE04  38 61 00 18 */	addi r3, r1, 0x18
/* 80BAFE08  38 81 00 60 */	addi r4, r1, 0x60
/* 80BAFE0C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80BAFE10  C0 1E 10 A8 */	lfs f0, 0x10a8(r30)
/* 80BAFE14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BAFE18  4B 6B 6D 6D */	bl __ml__4cXyzCFf
/* 80BAFE1C  38 61 00 0C */	addi r3, r1, 0xc
/* 80BAFE20  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 80BAFE24  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BAFE28  4B 6B 6C BD */	bl __pl__4cXyzCFRC3Vec
/* 80BAFE2C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BAFE30  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BAFE34  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BAFE38  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BAFE3C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BAFE40  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BAFE44  38 7E 0A 7C */	addi r3, r30, 0xa7c
/* 80BAFE48  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 80BAFE4C  38 A1 00 54 */	addi r5, r1, 0x54
/* 80BAFE50  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80BAFE54  4B 6B F1 AD */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 80BAFE58  38 7E 09 58 */	addi r3, r30, 0x958
/* 80BAFE5C  4B 4D 49 C9 */	bl CalcAtVec__8dCcD_CpsFv
/* 80BAFE60  88 1E 10 39 */	lbz r0, 0x1039(r30)
/* 80BAFE64  7C 00 07 75 */	extsb. r0, r0
/* 80BAFE68  40 81 00 C0 */	ble lbl_80BAFF28
/* 80BAFE6C  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 80BAFE70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BAFE74  C0 1E 0F D0 */	lfs f0, 0xfd0(r30)
/* 80BAFE78  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BAFE7C  C0 1E 0F D4 */	lfs f0, 0xfd4(r30)
/* 80BAFE80  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BAFE84  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80BAFE88  38 81 00 54 */	addi r4, r1, 0x54
/* 80BAFE8C  7F C5 F3 78 */	mr r5, r30
/* 80BAFE90  4B 46 DD D9 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BAFE94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAFE98  41 82 00 6C */	beq lbl_80BAFF04
/* 80BAFE9C  3C 60 80 BB */	lis r3, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BAFEA0  38 03 3E 40 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BAFEA4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BAFEA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAFEAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAFEB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BAFEB4  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BAFEB8  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BAFEBC  38 84 00 14 */	addi r4, r4, 0x14
/* 80BAFEC0  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80BAFEC4  4B 4C 48 81 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BAFEC8  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80BAFECC  4B 6B 83 19 */	bl cBgW_CheckBGround__Ff
/* 80BAFED0  3C 80 80 BB */	lis r4, __vt__8cM3dGPla@ha /* 0x80BB3E40@ha */
/* 80BAFED4  38 04 3E 40 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x80BB3E40@l */
/* 80BAFED8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BAFEDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAFEE0  41 82 00 24 */	beq lbl_80BAFF04
/* 80BAFEE4  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 80BAFEE8  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 80BAFEEC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80BAFEF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BAFEF4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80BAFEF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BAFEFC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80BAFF00  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80BAFF04:
/* 80BAFF04  38 7E 10 48 */	addi r3, r30, 0x1048
/* 80BAFF08  38 81 00 48 */	addi r4, r1, 0x48
/* 80BAFF0C  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80BAFF10  4B 6C 08 9D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BAFF14  2C 03 00 00 */	cmpwi r3, 0
/* 80BAFF18  41 82 00 30 */	beq lbl_80BAFF48
/* 80BAFF1C  38 00 FF FF */	li r0, -1
/* 80BAFF20  98 1E 10 39 */	stb r0, 0x1039(r30)
/* 80BAFF24  48 00 00 24 */	b lbl_80BAFF48
lbl_80BAFF28:
/* 80BAFF28  38 7E 10 48 */	addi r3, r30, 0x1048
/* 80BAFF2C  38 81 00 54 */	addi r4, r1, 0x54
/* 80BAFF30  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80BAFF34  4B 6C 08 79 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BAFF38  2C 03 00 00 */	cmpwi r3, 0
/* 80BAFF3C  41 82 00 0C */	beq lbl_80BAFF48
/* 80BAFF40  38 00 00 01 */	li r0, 1
/* 80BAFF44  98 1E 10 39 */	stb r0, 0x1039(r30)
lbl_80BAFF48:
/* 80BAFF48  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80BAFF4C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80BAFF50  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80BAFF54  7C 08 03 A6 */	mtlr r0
/* 80BAFF58  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80BAFF5C  4E 80 00 20 */	blr 
