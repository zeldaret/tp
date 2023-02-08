lbl_807E25EC:
/* 807E25EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E25F0  7C 08 02 A6 */	mflr r0
/* 807E25F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E25F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807E25FC  3C 80 80 7E */	lis r4, lit_3882@ha /* 0x807E298C@ha */
/* 807E2600  3B E4 29 8C */	addi r31, r4, lit_3882@l /* 0x807E298C@l */
/* 807E2604  4B B6 4B 35 */	bl PSVECSquareMag
/* 807E2608  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807E260C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E2610  40 81 00 58 */	ble lbl_807E2668
/* 807E2614  FC 00 08 34 */	frsqrte f0, f1
/* 807E2618  C8 9F 00 90 */	lfd f4, 0x90(r31)
/* 807E261C  FC 44 00 32 */	fmul f2, f4, f0
/* 807E2620  C8 7F 00 98 */	lfd f3, 0x98(r31)
/* 807E2624  FC 00 00 32 */	fmul f0, f0, f0
/* 807E2628  FC 01 00 32 */	fmul f0, f1, f0
/* 807E262C  FC 03 00 28 */	fsub f0, f3, f0
/* 807E2630  FC 02 00 32 */	fmul f0, f2, f0
/* 807E2634  FC 44 00 32 */	fmul f2, f4, f0
/* 807E2638  FC 00 00 32 */	fmul f0, f0, f0
/* 807E263C  FC 01 00 32 */	fmul f0, f1, f0
/* 807E2640  FC 03 00 28 */	fsub f0, f3, f0
/* 807E2644  FC 02 00 32 */	fmul f0, f2, f0
/* 807E2648  FC 44 00 32 */	fmul f2, f4, f0
/* 807E264C  FC 00 00 32 */	fmul f0, f0, f0
/* 807E2650  FC 01 00 32 */	fmul f0, f1, f0
/* 807E2654  FC 03 00 28 */	fsub f0, f3, f0
/* 807E2658  FC 02 00 32 */	fmul f0, f2, f0
/* 807E265C  FC 21 00 32 */	fmul f1, f1, f0
/* 807E2660  FC 20 08 18 */	frsp f1, f1
/* 807E2664  48 00 00 88 */	b lbl_807E26EC
lbl_807E2668:
/* 807E2668  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 807E266C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E2670  40 80 00 10 */	bge lbl_807E2680
/* 807E2674  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807E2678  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807E267C  48 00 00 70 */	b lbl_807E26EC
lbl_807E2680:
/* 807E2680  D0 21 00 08 */	stfs f1, 8(r1)
/* 807E2684  80 81 00 08 */	lwz r4, 8(r1)
/* 807E2688  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E268C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E2690  7C 03 00 00 */	cmpw r3, r0
/* 807E2694  41 82 00 14 */	beq lbl_807E26A8
/* 807E2698  40 80 00 40 */	bge lbl_807E26D8
/* 807E269C  2C 03 00 00 */	cmpwi r3, 0
/* 807E26A0  41 82 00 20 */	beq lbl_807E26C0
/* 807E26A4  48 00 00 34 */	b lbl_807E26D8
lbl_807E26A8:
/* 807E26A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E26AC  41 82 00 0C */	beq lbl_807E26B8
/* 807E26B0  38 00 00 01 */	li r0, 1
/* 807E26B4  48 00 00 28 */	b lbl_807E26DC
lbl_807E26B8:
/* 807E26B8  38 00 00 02 */	li r0, 2
/* 807E26BC  48 00 00 20 */	b lbl_807E26DC
lbl_807E26C0:
/* 807E26C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E26C4  41 82 00 0C */	beq lbl_807E26D0
/* 807E26C8  38 00 00 05 */	li r0, 5
/* 807E26CC  48 00 00 10 */	b lbl_807E26DC
lbl_807E26D0:
/* 807E26D0  38 00 00 03 */	li r0, 3
/* 807E26D4  48 00 00 08 */	b lbl_807E26DC
lbl_807E26D8:
/* 807E26D8  38 00 00 04 */	li r0, 4
lbl_807E26DC:
/* 807E26DC  2C 00 00 01 */	cmpwi r0, 1
/* 807E26E0  40 82 00 0C */	bne lbl_807E26EC
/* 807E26E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807E26E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807E26EC:
/* 807E26EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807E26F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E26F4  7C 08 03 A6 */	mtlr r0
/* 807E26F8  38 21 00 20 */	addi r1, r1, 0x20
/* 807E26FC  4E 80 00 20 */	blr 
