lbl_80BAA47C:
/* 80BAA47C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BAA480  7C 08 02 A6 */	mflr r0
/* 80BAA484  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BAA488  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80BAA48C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80BAA490  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BAA494  4B 7B 7D 45 */	bl _savegpr_28
/* 80BAA498  7C 7E 1B 78 */	mr r30, r3
/* 80BAA49C  3C 60 80 BB */	lis r3, lit_3774@ha /* 0x80BAC970@ha */
/* 80BAA4A0  3B E3 C9 70 */	addi r31, r3, lit_3774@l /* 0x80BAC970@l */
/* 80BAA4A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAA4A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAA4AC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80BAA4B0  7F A3 EB 78 */	mr r3, r29
/* 80BAA4B4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BAA4B8  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80BAA4BC  7D 89 03 A6 */	mtctr r12
/* 80BAA4C0  4E 80 04 21 */	bctrl 
/* 80BAA4C4  7C 7C 1B 78 */	mr r28, r3
/* 80BAA4C8  80 1E 09 E8 */	lwz r0, 0x9e8(r30)
/* 80BAA4CC  2C 00 00 00 */	cmpwi r0, 0
/* 80BAA4D0  40 82 03 2C */	bne lbl_80BAA7FC
/* 80BAA4D4  28 1C 00 00 */	cmplwi r28, 0
/* 80BAA4D8  41 82 01 7C */	beq lbl_80BAA654
/* 80BAA4DC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BAA4E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BAA4E4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BAA4E8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAA4EC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BAA4F0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80BAA4F4  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80BAA4F8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80BAA4FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BAA500  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80BAA504  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80BAA508  38 61 00 44 */	addi r3, r1, 0x44
/* 80BAA50C  38 81 00 50 */	addi r4, r1, 0x50
/* 80BAA510  4B 79 CE 8D */	bl PSVECSquareDistance
/* 80BAA514  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAA518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA51C  40 81 00 58 */	ble lbl_80BAA574
/* 80BAA520  FC 00 08 34 */	frsqrte f0, f1
/* 80BAA524  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAA528  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA52C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAA530  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA534  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA538  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA53C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA540  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA544  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA548  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA54C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA550  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA554  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA558  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA55C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA560  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA564  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA568  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAA56C  FC 20 08 18 */	frsp f1, f1
/* 80BAA570  48 00 00 88 */	b lbl_80BAA5F8
lbl_80BAA574:
/* 80BAA574  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAA578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA57C  40 80 00 10 */	bge lbl_80BAA58C
/* 80BAA580  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAA584  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAA588  48 00 00 70 */	b lbl_80BAA5F8
lbl_80BAA58C:
/* 80BAA58C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BAA590  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BAA594  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAA598  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAA59C  7C 03 00 00 */	cmpw r3, r0
/* 80BAA5A0  41 82 00 14 */	beq lbl_80BAA5B4
/* 80BAA5A4  40 80 00 40 */	bge lbl_80BAA5E4
/* 80BAA5A8  2C 03 00 00 */	cmpwi r3, 0
/* 80BAA5AC  41 82 00 20 */	beq lbl_80BAA5CC
/* 80BAA5B0  48 00 00 34 */	b lbl_80BAA5E4
lbl_80BAA5B4:
/* 80BAA5B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA5B8  41 82 00 0C */	beq lbl_80BAA5C4
/* 80BAA5BC  38 00 00 01 */	li r0, 1
/* 80BAA5C0  48 00 00 28 */	b lbl_80BAA5E8
lbl_80BAA5C4:
/* 80BAA5C4  38 00 00 02 */	li r0, 2
/* 80BAA5C8  48 00 00 20 */	b lbl_80BAA5E8
lbl_80BAA5CC:
/* 80BAA5CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA5D0  41 82 00 0C */	beq lbl_80BAA5DC
/* 80BAA5D4  38 00 00 05 */	li r0, 5
/* 80BAA5D8  48 00 00 10 */	b lbl_80BAA5E8
lbl_80BAA5DC:
/* 80BAA5DC  38 00 00 03 */	li r0, 3
/* 80BAA5E0  48 00 00 08 */	b lbl_80BAA5E8
lbl_80BAA5E4:
/* 80BAA5E4  38 00 00 04 */	li r0, 4
lbl_80BAA5E8:
/* 80BAA5E8  2C 00 00 01 */	cmpwi r0, 1
/* 80BAA5EC  40 82 00 0C */	bne lbl_80BAA5F8
/* 80BAA5F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAA5F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BAA5F8:
/* 80BAA5F8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BAA5FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA600  40 80 00 54 */	bge lbl_80BAA654
/* 80BAA604  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BAA608  4B 6B D3 85 */	bl cM_rndFX__Ff
/* 80BAA60C  FF E0 08 90 */	fmr f31, f1
/* 80BAA610  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BAA614  7F 84 E3 78 */	mr r4, r28
/* 80BAA618  4B 6C 65 ED */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BAA61C  7C 60 07 34 */	extsh r0, r3
/* 80BAA620  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 80BAA624  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAA628  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BAA62C  3C 00 43 30 */	lis r0, 0x4330
/* 80BAA630  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BAA634  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80BAA638  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAA63C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BAA640  FC 00 00 1E */	fctiwz f0, f0
/* 80BAA644  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80BAA648  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BAA64C  B0 1E 09 EC */	sth r0, 0x9ec(r30)
/* 80BAA650  48 00 01 94 */	b lbl_80BAA7E4
lbl_80BAA654:
/* 80BAA654  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 80BAA658  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80BAA65C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BAA660  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAA664  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BAA668  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80BAA66C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BAA670  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BAA674  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BAA678  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BAA67C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80BAA680  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BAA684  38 81 00 38 */	addi r4, r1, 0x38
/* 80BAA688  4B 79 CD 15 */	bl PSVECSquareDistance
/* 80BAA68C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAA690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA694  40 81 00 58 */	ble lbl_80BAA6EC
/* 80BAA698  FC 00 08 34 */	frsqrte f0, f1
/* 80BAA69C  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAA6A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA6A4  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAA6A8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA6AC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA6B0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA6B4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA6B8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA6BC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA6C0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA6C4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA6C8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA6CC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA6D0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA6D4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA6D8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA6DC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA6E0  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAA6E4  FC 20 08 18 */	frsp f1, f1
/* 80BAA6E8  48 00 00 88 */	b lbl_80BAA770
lbl_80BAA6EC:
/* 80BAA6EC  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAA6F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA6F4  40 80 00 10 */	bge lbl_80BAA704
/* 80BAA6F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAA6FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAA700  48 00 00 70 */	b lbl_80BAA770
lbl_80BAA704:
/* 80BAA704  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BAA708  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BAA70C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAA710  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAA714  7C 03 00 00 */	cmpw r3, r0
/* 80BAA718  41 82 00 14 */	beq lbl_80BAA72C
/* 80BAA71C  40 80 00 40 */	bge lbl_80BAA75C
/* 80BAA720  2C 03 00 00 */	cmpwi r3, 0
/* 80BAA724  41 82 00 20 */	beq lbl_80BAA744
/* 80BAA728  48 00 00 34 */	b lbl_80BAA75C
lbl_80BAA72C:
/* 80BAA72C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA730  41 82 00 0C */	beq lbl_80BAA73C
/* 80BAA734  38 00 00 01 */	li r0, 1
/* 80BAA738  48 00 00 28 */	b lbl_80BAA760
lbl_80BAA73C:
/* 80BAA73C  38 00 00 02 */	li r0, 2
/* 80BAA740  48 00 00 20 */	b lbl_80BAA760
lbl_80BAA744:
/* 80BAA744  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA748  41 82 00 0C */	beq lbl_80BAA754
/* 80BAA74C  38 00 00 05 */	li r0, 5
/* 80BAA750  48 00 00 10 */	b lbl_80BAA760
lbl_80BAA754:
/* 80BAA754  38 00 00 03 */	li r0, 3
/* 80BAA758  48 00 00 08 */	b lbl_80BAA760
lbl_80BAA75C:
/* 80BAA75C  38 00 00 04 */	li r0, 4
lbl_80BAA760:
/* 80BAA760  2C 00 00 01 */	cmpwi r0, 1
/* 80BAA764  40 82 00 0C */	bne lbl_80BAA770
/* 80BAA768  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAA76C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BAA770:
/* 80BAA770  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BAA774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA778  40 80 00 20 */	bge lbl_80BAA798
/* 80BAA77C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BAA780  4B 6B D2 0D */	bl cM_rndFX__Ff
/* 80BAA784  FC 00 08 1E */	fctiwz f0, f1
/* 80BAA788  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80BAA78C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BAA790  B0 1E 09 EC */	sth r0, 0x9ec(r30)
/* 80BAA794  48 00 00 50 */	b lbl_80BAA7E4
lbl_80BAA798:
/* 80BAA798  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BAA79C  4B 6B D1 F1 */	bl cM_rndFX__Ff
/* 80BAA7A0  FF E0 08 90 */	fmr f31, f1
/* 80BAA7A4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BAA7A8  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80BAA7AC  4B 6C 64 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BAA7B0  7C 60 07 34 */	extsh r0, r3
/* 80BAA7B4  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 80BAA7B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAA7BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BAA7C0  3C 00 43 30 */	lis r0, 0x4330
/* 80BAA7C4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BAA7C8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80BAA7CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAA7D0  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BAA7D4  FC 00 00 1E */	fctiwz f0, f0
/* 80BAA7D8  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80BAA7DC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80BAA7E0  B0 1E 09 EC */	sth r0, 0x9ec(r30)
lbl_80BAA7E4:
/* 80BAA7E4  38 00 00 10 */	li r0, 0x10
/* 80BAA7E8  B0 1E 09 EE */	sth r0, 0x9ee(r30)
/* 80BAA7EC  80 7E 09 E8 */	lwz r3, 0x9e8(r30)
/* 80BAA7F0  38 03 00 01 */	addi r0, r3, 1
/* 80BAA7F4  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BAA7F8  48 00 02 00 */	b lbl_80BAA9F8
lbl_80BAA7FC:
/* 80BAA7FC  2C 00 FF FF */	cmpwi r0, -1
/* 80BAA800  41 82 01 F8 */	beq lbl_80BAA9F8
/* 80BAA804  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80BAA808  28 00 00 00 */	cmplwi r0, 0
/* 80BAA80C  41 82 00 0C */	beq lbl_80BAA818
/* 80BAA810  7F C3 F3 78 */	mr r3, r30
/* 80BAA814  48 00 12 85 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAA818:
/* 80BAA818  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BAA81C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BAA820  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BAA824  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAA828  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BAA82C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BAA830  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BAA834  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BAA838  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BAA83C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BAA840  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BAA844  38 61 00 14 */	addi r3, r1, 0x14
/* 80BAA848  38 81 00 20 */	addi r4, r1, 0x20
/* 80BAA84C  4B 79 CB 51 */	bl PSVECSquareDistance
/* 80BAA850  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAA854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA858  40 81 00 58 */	ble lbl_80BAA8B0
/* 80BAA85C  FC 00 08 34 */	frsqrte f0, f1
/* 80BAA860  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAA864  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA868  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAA86C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA870  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA874  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA878  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA87C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA880  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA884  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA888  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA88C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA890  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAA894  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAA898  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAA89C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAA8A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAA8A4  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAA8A8  FC 20 08 18 */	frsp f1, f1
/* 80BAA8AC  48 00 00 88 */	b lbl_80BAA934
lbl_80BAA8B0:
/* 80BAA8B0  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAA8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA8B8  40 80 00 10 */	bge lbl_80BAA8C8
/* 80BAA8BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAA8C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAA8C4  48 00 00 70 */	b lbl_80BAA934
lbl_80BAA8C8:
/* 80BAA8C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAA8CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAA8D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAA8D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAA8D8  7C 03 00 00 */	cmpw r3, r0
/* 80BAA8DC  41 82 00 14 */	beq lbl_80BAA8F0
/* 80BAA8E0  40 80 00 40 */	bge lbl_80BAA920
/* 80BAA8E4  2C 03 00 00 */	cmpwi r3, 0
/* 80BAA8E8  41 82 00 20 */	beq lbl_80BAA908
/* 80BAA8EC  48 00 00 34 */	b lbl_80BAA920
lbl_80BAA8F0:
/* 80BAA8F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA8F4  41 82 00 0C */	beq lbl_80BAA900
/* 80BAA8F8  38 00 00 01 */	li r0, 1
/* 80BAA8FC  48 00 00 28 */	b lbl_80BAA924
lbl_80BAA900:
/* 80BAA900  38 00 00 02 */	li r0, 2
/* 80BAA904  48 00 00 20 */	b lbl_80BAA924
lbl_80BAA908:
/* 80BAA908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAA90C  41 82 00 0C */	beq lbl_80BAA918
/* 80BAA910  38 00 00 05 */	li r0, 5
/* 80BAA914  48 00 00 10 */	b lbl_80BAA924
lbl_80BAA918:
/* 80BAA918  38 00 00 03 */	li r0, 3
/* 80BAA91C  48 00 00 08 */	b lbl_80BAA924
lbl_80BAA920:
/* 80BAA920  38 00 00 04 */	li r0, 4
lbl_80BAA924:
/* 80BAA924  2C 00 00 01 */	cmpwi r0, 1
/* 80BAA928  40 82 00 0C */	bne lbl_80BAA934
/* 80BAA92C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAA930  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BAA934:
/* 80BAA934  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BAA938  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA93C  40 80 00 4C */	bge lbl_80BAA988
/* 80BAA940  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BAA944  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BAA948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAA94C  40 81 00 3C */	ble lbl_80BAA988
/* 80BAA950  38 00 00 01 */	li r0, 1
/* 80BAA954  98 1E 09 F1 */	stb r0, 0x9f1(r30)
/* 80BAA958  3C 60 80 BB */	lis r3, lit_3992@ha /* 0x80BACAE8@ha */
/* 80BAA95C  38 83 CA E8 */	addi r4, r3, lit_3992@l /* 0x80BACAE8@l */
/* 80BAA960  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAA964  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAA968  90 61 00 68 */	stw r3, 0x68(r1)
/* 80BAA96C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80BAA970  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAA974  90 01 00 70 */	stw r0, 0x70(r1)
/* 80BAA978  7F C3 F3 78 */	mr r3, r30
/* 80BAA97C  38 81 00 68 */	addi r4, r1, 0x68
/* 80BAA980  4B FF F4 DD */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
/* 80BAA984  48 00 00 74 */	b lbl_80BAA9F8
lbl_80BAA988:
/* 80BAA988  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80BAA98C  A8 9E 09 EC */	lha r4, 0x9ec(r30)
/* 80BAA990  38 A0 00 04 */	li r5, 4
/* 80BAA994  38 C0 40 00 */	li r6, 0x4000
/* 80BAA998  4B 6C 5C 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80BAA99C  A8 7E 09 EC */	lha r3, 0x9ec(r30)
/* 80BAA9A0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80BAA9A4  7C 63 00 50 */	subf r3, r3, r0
/* 80BAA9A8  4B 7B A7 29 */	bl abs
/* 80BAA9AC  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80BAA9B0  40 80 00 48 */	bge lbl_80BAA9F8
/* 80BAA9B4  A0 7E 09 EE */	lhz r3, 0x9ee(r30)
/* 80BAA9B8  38 03 FF FF */	addi r0, r3, -1
/* 80BAA9BC  B0 1E 09 EE */	sth r0, 0x9ee(r30)
/* 80BAA9C0  A0 1E 09 EE */	lhz r0, 0x9ee(r30)
/* 80BAA9C4  28 00 00 00 */	cmplwi r0, 0
/* 80BAA9C8  40 82 00 30 */	bne lbl_80BAA9F8
/* 80BAA9CC  3C 60 80 BB */	lis r3, lit_3998@ha /* 0x80BACAF4@ha */
/* 80BAA9D0  38 83 CA F4 */	addi r4, r3, lit_3998@l /* 0x80BACAF4@l */
/* 80BAA9D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAA9D8  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAA9DC  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80BAA9E0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80BAA9E4  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAA9E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BAA9EC  7F C3 F3 78 */	mr r3, r30
/* 80BAA9F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80BAA9F4  4B FF F4 69 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAA9F8:
/* 80BAA9F8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80BAA9FC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80BAAA00  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BAAA04  4B 7B 78 21 */	bl _restgpr_28
/* 80BAAA08  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BAAA0C  7C 08 03 A6 */	mtlr r0
/* 80BAAA10  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BAAA14  4E 80 00 20 */	blr 
