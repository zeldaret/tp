lbl_80BAF8F8:
/* 80BAF8F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BAF8FC  7C 08 02 A6 */	mflr r0
/* 80BAF900  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BAF904  39 61 00 70 */	addi r11, r1, 0x70
/* 80BAF908  4B 7B 28 D1 */	bl _savegpr_28
/* 80BAF90C  7C 7E 1B 78 */	mr r30, r3
/* 80BAF910  3C 80 80 BB */	lis r4, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BAF914  3B A4 37 B8 */	addi r29, r4, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BAF918  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAF91C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAF920  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 80BAF924  7F 84 E3 78 */	mr r4, r28
/* 80BAF928  4B 46 B0 3D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BAF92C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 80BAF930  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BAF934  38 7D 00 24 */	addi r3, r29, 0x24
/* 80BAF938  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BAF93C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BAF940  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BAF944  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BAF948  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 80BAF94C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAF950  40 81 00 24 */	ble lbl_80BAF974
/* 80BAF954  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80BAF958  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BAF95C  38 7D 00 0C */	addi r3, r29, 0xc
/* 80BAF960  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BAF964  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BAF968  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BAF96C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BAF970  48 00 00 2C */	b lbl_80BAF99C
lbl_80BAF974:
/* 80BAF974  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80BAF978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAF97C  40 81 00 20 */	ble lbl_80BAF99C
/* 80BAF980  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80BAF984  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BAF988  38 7D 00 18 */	addi r3, r29, 0x18
/* 80BAF98C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BAF990  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BAF994  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BAF998  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80BAF99C:
/* 80BAF99C  AB FE 0F 96 */	lha r31, 0xf96(r30)
/* 80BAF9A0  38 7E 0F D8 */	addi r3, r30, 0xfd8
/* 80BAF9A4  38 81 00 48 */	addi r4, r1, 0x48
/* 80BAF9A8  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 80BAF9AC  4B 6C 0E 01 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80BAF9B0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BAF9B4  4B 45 D3 B1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAF9B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BAF9BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BAF9C0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BAF9C4  7C 1F 02 14 */	add r0, r31, r0
/* 80BAF9C8  7C 04 07 34 */	extsh r4, r0
/* 80BAF9CC  4B 45 CA 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BAF9D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BAF9D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BAF9D8  38 9E 0F D8 */	addi r4, r30, 0xfd8
/* 80BAF9DC  38 BE 0F B8 */	addi r5, r30, 0xfb8
/* 80BAF9E0  4B 79 73 8D */	bl PSMTXMultVec
/* 80BAF9E4  C0 3E 10 04 */	lfs f1, 0x1004(r30)
/* 80BAF9E8  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80BAF9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAF9F0  40 80 00 08 */	bge lbl_80BAF9F8
/* 80BAF9F4  FC 20 00 90 */	fmr f1, f0
lbl_80BAF9F8:
/* 80BAF9F8  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BAF9FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BAFA00  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BAFA04  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80BAFA08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BAFA0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BAFA10  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BAFA14  38 BE 0F CC */	addi r5, r30, 0xfcc
/* 80BAFA18  4B 79 73 55 */	bl PSMTXMultVec
/* 80BAFA1C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80BAFA20  D0 1E 0F CC */	stfs f0, 0xfcc(r30)
/* 80BAFA24  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80BAFA28  D0 1E 0F D0 */	stfs f0, 0xfd0(r30)
/* 80BAFA2C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80BAFA30  D0 1E 0F D4 */	stfs f0, 0xfd4(r30)
/* 80BAFA34  38 61 00 24 */	addi r3, r1, 0x24
/* 80BAFA38  38 9E 0F B8 */	addi r4, r30, 0xfb8
/* 80BAFA3C  38 BE 0F CC */	addi r5, r30, 0xfcc
/* 80BAFA40  4B 6B 70 F5 */	bl __mi__4cXyzCFRC3Vec
/* 80BAFA44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BAFA48  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BAFA4C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BAFA50  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BAFA54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BAFA58  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BAFA5C  C0 5E 0F D4 */	lfs f2, 0xfd4(r30)
/* 80BAFA60  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 80BAFA64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BAFA68  C0 3D 00 78 */	lfs f1, 0x78(r29)
/* 80BAFA6C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BAFA70  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80BAFA74  C0 5E 0F C0 */	lfs f2, 0xfc0(r30)
/* 80BAFA78  C0 1E 0F B8 */	lfs f0, 0xfb8(r30)
/* 80BAFA7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BAFA80  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BAFA84  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BAFA88  38 61 00 0C */	addi r3, r1, 0xc
/* 80BAFA8C  38 81 00 18 */	addi r4, r1, 0x18
/* 80BAFA90  4B 79 79 0D */	bl PSVECSquareDistance
/* 80BAFA94  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 80BAFA98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAFA9C  40 81 00 58 */	ble lbl_80BAFAF4
/* 80BAFAA0  FC 00 08 34 */	frsqrte f0, f1
/* 80BAFAA4  C8 9D 00 98 */	lfd f4, 0x98(r29)
/* 80BAFAA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAFAAC  C8 7D 00 A0 */	lfd f3, 0xa0(r29)
/* 80BAFAB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAFAB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAFAB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAFABC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAFAC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAFAC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAFAC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAFACC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAFAD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAFAD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAFAD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAFADC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAFAE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAFAE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAFAE8  FC 41 00 32 */	fmul f2, f1, f0
/* 80BAFAEC  FC 40 10 18 */	frsp f2, f2
/* 80BAFAF0  48 00 00 90 */	b lbl_80BAFB80
lbl_80BAFAF4:
/* 80BAFAF4  C8 1D 00 A8 */	lfd f0, 0xa8(r29)
/* 80BAFAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAFAFC  40 80 00 10 */	bge lbl_80BAFB0C
/* 80BAFB00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAFB04  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAFB08  48 00 00 78 */	b lbl_80BAFB80
lbl_80BAFB0C:
/* 80BAFB0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAFB10  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAFB14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAFB18  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAFB1C  7C 03 00 00 */	cmpw r3, r0
/* 80BAFB20  41 82 00 14 */	beq lbl_80BAFB34
/* 80BAFB24  40 80 00 40 */	bge lbl_80BAFB64
/* 80BAFB28  2C 03 00 00 */	cmpwi r3, 0
/* 80BAFB2C  41 82 00 20 */	beq lbl_80BAFB4C
/* 80BAFB30  48 00 00 34 */	b lbl_80BAFB64
lbl_80BAFB34:
/* 80BAFB34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAFB38  41 82 00 0C */	beq lbl_80BAFB44
/* 80BAFB3C  38 00 00 01 */	li r0, 1
/* 80BAFB40  48 00 00 28 */	b lbl_80BAFB68
lbl_80BAFB44:
/* 80BAFB44  38 00 00 02 */	li r0, 2
/* 80BAFB48  48 00 00 20 */	b lbl_80BAFB68
lbl_80BAFB4C:
/* 80BAFB4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAFB50  41 82 00 0C */	beq lbl_80BAFB5C
/* 80BAFB54  38 00 00 05 */	li r0, 5
/* 80BAFB58  48 00 00 10 */	b lbl_80BAFB68
lbl_80BAFB5C:
/* 80BAFB5C  38 00 00 03 */	li r0, 3
/* 80BAFB60  48 00 00 08 */	b lbl_80BAFB68
lbl_80BAFB64:
/* 80BAFB64  38 00 00 04 */	li r0, 4
lbl_80BAFB68:
/* 80BAFB68  2C 00 00 01 */	cmpwi r0, 1
/* 80BAFB6C  40 82 00 10 */	bne lbl_80BAFB7C
/* 80BAFB70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAFB74  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAFB78  48 00 00 08 */	b lbl_80BAFB80
lbl_80BAFB7C:
/* 80BAFB7C  FC 40 08 90 */	fmr f2, f1
lbl_80BAFB80:
/* 80BAFB80  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80BAFB84  4B 6B 7A F1 */	bl cM_atan2s__Fff
/* 80BAFB88  B0 7E 0F C4 */	sth r3, 0xfc4(r30)
/* 80BAFB8C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BAFB90  7C 1F 02 14 */	add r0, r31, r0
/* 80BAFB94  B0 1E 0F C6 */	sth r0, 0xfc6(r30)
/* 80BAFB98  38 00 00 00 */	li r0, 0
/* 80BAFB9C  B0 1E 0F C8 */	sth r0, 0xfc8(r30)
/* 80BAFBA0  A8 1E 0F C4 */	lha r0, 0xfc4(r30)
/* 80BAFBA4  2C 00 0E 38 */	cmpwi r0, 0xe38
/* 80BAFBA8  40 80 00 0C */	bge lbl_80BAFBB4
/* 80BAFBAC  38 00 0E 38 */	li r0, 0xe38
/* 80BAFBB0  B0 1E 0F C4 */	sth r0, 0xfc4(r30)
lbl_80BAFBB4:
/* 80BAFBB4  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 80BAFBB8  4B 45 D1 AD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAFBBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BAFBC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BAFBC4  A8 9E 0F C4 */	lha r4, 0xfc4(r30)
/* 80BAFBC8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BAFBCC  7C 1F 02 14 */	add r0, r31, r0
/* 80BAFBD0  7C 05 07 34 */	extsh r5, r0
/* 80BAFBD4  38 C0 00 00 */	li r6, 0
/* 80BAFBD8  4B 45 C6 C9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BAFBDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BAFBE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BAFBE4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BAFBE8  38 BE 0F CC */	addi r5, r30, 0xfcc
/* 80BAFBEC  4B 79 71 81 */	bl PSMTXMultVec
/* 80BAFBF0  39 61 00 70 */	addi r11, r1, 0x70
/* 80BAFBF4  4B 7B 26 31 */	bl _restgpr_28
/* 80BAFBF8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BAFBFC  7C 08 03 A6 */	mtlr r0
/* 80BAFC00  38 21 00 70 */	addi r1, r1, 0x70
/* 80BAFC04  4E 80 00 20 */	blr 
