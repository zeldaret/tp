lbl_80BCAB50:
/* 80BCAB50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BCAB54  7C 08 02 A6 */	mflr r0
/* 80BCAB58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BCAB5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCAB60  4B 79 76 7D */	bl _savegpr_29
/* 80BCAB64  7C 7D 1B 78 */	mr r29, r3
/* 80BCAB68  3C 60 80 BD */	lis r3, lit_3775@ha /* 0x80BCC578@ha */
/* 80BCAB6C  3B E3 C5 78 */	addi r31, r3, lit_3775@l /* 0x80BCC578@l */
/* 80BCAB70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCAB74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCAB78  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80BCAB7C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80BCAB80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BCAB84  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80BCAB88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BCAB8C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCAB90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BCAB94  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BCAB98  38 80 00 09 */	li r4, 9
/* 80BCAB9C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BCABA0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80BCABA4  7D 89 03 A6 */	mtctr r12
/* 80BCABA8  4E 80 04 21 */	bctrl 
/* 80BCABAC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80BCABB0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80BCABB4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BCABB8  4B 77 B8 F9 */	bl PSMTXCopy
/* 80BCABBC  38 61 00 18 */	addi r3, r1, 0x18
/* 80BCABC0  38 81 00 0C */	addi r4, r1, 0xc
/* 80BCABC4  4B 6A 63 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BCABC8  88 1D 09 81 */	lbz r0, 0x981(r29)
/* 80BCABCC  2C 00 00 01 */	cmpwi r0, 1
/* 80BCABD0  41 82 00 D8 */	beq lbl_80BCACA8
/* 80BCABD4  40 80 01 58 */	bge lbl_80BCAD2C
/* 80BCABD8  2C 00 00 00 */	cmpwi r0, 0
/* 80BCABDC  40 80 00 08 */	bge lbl_80BCABE4
/* 80BCABE0  48 00 01 4C */	b lbl_80BCAD2C
lbl_80BCABE4:
/* 80BCABE4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BCABE8  38 81 00 0C */	addi r4, r1, 0xc
/* 80BCABEC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80BCABF0  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 80BCABF4  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BCABF8  4B 6A 4E C1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80BCABFC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BCAC00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCAC04  40 80 00 74 */	bge lbl_80BCAC78
/* 80BCAC08  88 7D 09 81 */	lbz r3, 0x981(r29)
/* 80BCAC0C  38 03 00 01 */	addi r0, r3, 1
/* 80BCAC10  98 1D 09 81 */	stb r0, 0x981(r29)
/* 80BCAC14  38 00 00 C8 */	li r0, 0xc8
/* 80BCAC18  B0 1D 09 82 */	sth r0, 0x982(r29)
/* 80BCAC1C  3C 60 80 BD */	lis r3, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCAC20  38 63 C6 78 */	addi r3, r3, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCAC24  38 80 00 07 */	li r4, 7
/* 80BCAC28  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCAC2C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCAC30  3C A5 00 02 */	addis r5, r5, 2
/* 80BCAC34  38 C0 00 80 */	li r6, 0x80
/* 80BCAC38  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCAC3C  4B 47 16 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCAC40  7C 64 1B 78 */	mr r4, r3
/* 80BCAC44  80 7D 0A 60 */	lwz r3, 0xa60(r29)
/* 80BCAC48  38 A0 00 02 */	li r5, 2
/* 80BCAC4C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80BCAC50  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BCAC54  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BCAC58  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80BCAC5C  4B 44 62 15 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BCAC60  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BCAC64  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 80BCAC68  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BCAC6C  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80BCAC70  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BCAC74  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
lbl_80BCAC78:
/* 80BCAC78  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BCAC7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80BCAC80  4B 6A 5F 85 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BCAC84  B0 7D 09 90 */	sth r3, 0x990(r29)
/* 80BCAC88  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80BCAC8C  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80BCAC90  38 A0 00 0C */	li r5, 0xc
/* 80BCAC94  38 C0 10 00 */	li r6, 0x1000
/* 80BCAC98  4B 6A 59 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80BCAC9C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80BCACA0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80BCACA4  48 00 00 88 */	b lbl_80BCAD2C
lbl_80BCACA8:
/* 80BCACA8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BCACAC  38 81 00 0C */	addi r4, r1, 0xc
/* 80BCACB0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BCACB4  4B 6A 5A F9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BCACB8  A8 1D 09 82 */	lha r0, 0x982(r29)
/* 80BCACBC  2C 00 00 00 */	cmpwi r0, 0
/* 80BCACC0  40 82 00 6C */	bne lbl_80BCAD2C
/* 80BCACC4  38 00 00 01 */	li r0, 1
/* 80BCACC8  98 1D 09 80 */	stb r0, 0x980(r29)
/* 80BCACCC  38 00 00 00 */	li r0, 0
/* 80BCACD0  98 1D 09 81 */	stb r0, 0x981(r29)
/* 80BCACD4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCACD8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80BCACDC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80BCACE0  38 00 00 32 */	li r0, 0x32
/* 80BCACE4  B0 1D 09 86 */	sth r0, 0x986(r29)
/* 80BCACE8  3C 60 80 BD */	lis r3, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCACEC  38 63 C6 78 */	addi r3, r3, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCACF0  38 80 00 06 */	li r4, 6
/* 80BCACF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCACF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCACFC  3C A5 00 02 */	addis r5, r5, 2
/* 80BCAD00  38 C0 00 80 */	li r6, 0x80
/* 80BCAD04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCAD08  4B 47 15 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCAD0C  7C 64 1B 78 */	mr r4, r3
/* 80BCAD10  80 7D 0A 60 */	lwz r3, 0xa60(r29)
/* 80BCAD14  38 A0 00 02 */	li r5, 2
/* 80BCAD18  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80BCAD1C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BCAD20  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BCAD24  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80BCAD28  4B 44 61 49 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80BCAD2C:
/* 80BCAD2C  7F C3 F3 78 */	mr r3, r30
/* 80BCAD30  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80BCAD34  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 80BCAD38  7D 89 03 A6 */	mtctr r12
/* 80BCAD3C  4E 80 04 21 */	bctrl 
/* 80BCAD40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCAD44  41 82 01 00 */	beq lbl_80BCAE44
/* 80BCAD48  38 61 00 0C */	addi r3, r1, 0xc
/* 80BCAD4C  38 9D 09 B4 */	addi r4, r29, 0x9b4
/* 80BCAD50  4B 77 C6 4D */	bl PSVECSquareDistance
/* 80BCAD54  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCAD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCAD5C  40 81 00 58 */	ble lbl_80BCADB4
/* 80BCAD60  FC 00 08 34 */	frsqrte f0, f1
/* 80BCAD64  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 80BCAD68  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCAD6C  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 80BCAD70  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCAD74  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCAD78  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCAD7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCAD80  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCAD84  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCAD88  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCAD8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCAD90  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCAD94  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCAD98  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCAD9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCADA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCADA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCADA8  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCADAC  FC 20 08 18 */	frsp f1, f1
/* 80BCADB0  48 00 00 88 */	b lbl_80BCAE38
lbl_80BCADB4:
/* 80BCADB4  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 80BCADB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCADBC  40 80 00 10 */	bge lbl_80BCADCC
/* 80BCADC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCADC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BCADC8  48 00 00 70 */	b lbl_80BCAE38
lbl_80BCADCC:
/* 80BCADCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BCADD0  80 81 00 08 */	lwz r4, 8(r1)
/* 80BCADD4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCADD8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCADDC  7C 03 00 00 */	cmpw r3, r0
/* 80BCADE0  41 82 00 14 */	beq lbl_80BCADF4
/* 80BCADE4  40 80 00 40 */	bge lbl_80BCAE24
/* 80BCADE8  2C 03 00 00 */	cmpwi r3, 0
/* 80BCADEC  41 82 00 20 */	beq lbl_80BCAE0C
/* 80BCADF0  48 00 00 34 */	b lbl_80BCAE24
lbl_80BCADF4:
/* 80BCADF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCADF8  41 82 00 0C */	beq lbl_80BCAE04
/* 80BCADFC  38 00 00 01 */	li r0, 1
/* 80BCAE00  48 00 00 28 */	b lbl_80BCAE28
lbl_80BCAE04:
/* 80BCAE04  38 00 00 02 */	li r0, 2
/* 80BCAE08  48 00 00 20 */	b lbl_80BCAE28
lbl_80BCAE0C:
/* 80BCAE0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCAE10  41 82 00 0C */	beq lbl_80BCAE1C
/* 80BCAE14  38 00 00 05 */	li r0, 5
/* 80BCAE18  48 00 00 10 */	b lbl_80BCAE28
lbl_80BCAE1C:
/* 80BCAE1C  38 00 00 03 */	li r0, 3
/* 80BCAE20  48 00 00 08 */	b lbl_80BCAE28
lbl_80BCAE24:
/* 80BCAE24  38 00 00 04 */	li r0, 4
lbl_80BCAE28:
/* 80BCAE28  2C 00 00 01 */	cmpwi r0, 1
/* 80BCAE2C  40 82 00 0C */	bne lbl_80BCAE38
/* 80BCAE30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BCAE34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BCAE38:
/* 80BCAE38  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80BCAE3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCAE40  40 81 00 6C */	ble lbl_80BCAEAC
lbl_80BCAE44:
/* 80BCAE44  38 00 00 01 */	li r0, 1
/* 80BCAE48  98 1D 09 80 */	stb r0, 0x980(r29)
/* 80BCAE4C  38 00 00 00 */	li r0, 0
/* 80BCAE50  98 1D 09 81 */	stb r0, 0x981(r29)
/* 80BCAE54  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCAE58  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80BCAE5C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80BCAE60  38 00 00 32 */	li r0, 0x32
/* 80BCAE64  B0 1D 09 86 */	sth r0, 0x986(r29)
/* 80BCAE68  3C 60 80 BD */	lis r3, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCAE6C  38 63 C6 78 */	addi r3, r3, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCAE70  38 80 00 06 */	li r4, 6
/* 80BCAE74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCAE78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCAE7C  3C A5 00 02 */	addis r5, r5, 2
/* 80BCAE80  38 C0 00 80 */	li r6, 0x80
/* 80BCAE84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BCAE88  4B 47 14 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCAE8C  7C 64 1B 78 */	mr r4, r3
/* 80BCAE90  80 7D 0A 60 */	lwz r3, 0xa60(r29)
/* 80BCAE94  38 A0 00 02 */	li r5, 2
/* 80BCAE98  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80BCAE9C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80BCAEA0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80BCAEA4  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80BCAEA8  4B 44 5F C9 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80BCAEAC:
/* 80BCAEAC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BCAEB0  D0 1D 09 B4 */	stfs f0, 0x9b4(r29)
/* 80BCAEB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BCAEB8  D0 1D 09 B8 */	stfs f0, 0x9b8(r29)
/* 80BCAEBC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BCAEC0  D0 1D 09 BC */	stfs f0, 0x9bc(r29)
/* 80BCAEC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCAEC8  4B 79 73 61 */	bl _restgpr_29
/* 80BCAECC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BCAED0  7C 08 03 A6 */	mtlr r0
/* 80BCAED4  38 21 00 40 */	addi r1, r1, 0x40
/* 80BCAED8  4E 80 00 20 */	blr 
