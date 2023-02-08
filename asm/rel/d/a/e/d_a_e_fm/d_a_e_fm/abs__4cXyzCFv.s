lbl_804FA550:
/* 804FA550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FA554  7C 08 02 A6 */	mflr r0
/* 804FA558  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FA55C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FA560  3C 80 80 50 */	lis r4, lit_3777@ha /* 0x804FA6BC@ha */
/* 804FA564  3B E4 A6 BC */	addi r31, r4, lit_3777@l /* 0x804FA6BC@l */
/* 804FA568  4B E4 CB D1 */	bl PSVECSquareMag
/* 804FA56C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804FA570  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FA574  40 81 00 58 */	ble lbl_804FA5CC
/* 804FA578  FC 00 08 34 */	frsqrte f0, f1
/* 804FA57C  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 804FA580  FC 44 00 32 */	fmul f2, f4, f0
/* 804FA584  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 804FA588  FC 00 00 32 */	fmul f0, f0, f0
/* 804FA58C  FC 01 00 32 */	fmul f0, f1, f0
/* 804FA590  FC 03 00 28 */	fsub f0, f3, f0
/* 804FA594  FC 02 00 32 */	fmul f0, f2, f0
/* 804FA598  FC 44 00 32 */	fmul f2, f4, f0
/* 804FA59C  FC 00 00 32 */	fmul f0, f0, f0
/* 804FA5A0  FC 01 00 32 */	fmul f0, f1, f0
/* 804FA5A4  FC 03 00 28 */	fsub f0, f3, f0
/* 804FA5A8  FC 02 00 32 */	fmul f0, f2, f0
/* 804FA5AC  FC 44 00 32 */	fmul f2, f4, f0
/* 804FA5B0  FC 00 00 32 */	fmul f0, f0, f0
/* 804FA5B4  FC 01 00 32 */	fmul f0, f1, f0
/* 804FA5B8  FC 03 00 28 */	fsub f0, f3, f0
/* 804FA5BC  FC 02 00 32 */	fmul f0, f2, f0
/* 804FA5C0  FC 21 00 32 */	fmul f1, f1, f0
/* 804FA5C4  FC 20 08 18 */	frsp f1, f1
/* 804FA5C8  48 00 00 88 */	b lbl_804FA650
lbl_804FA5CC:
/* 804FA5CC  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 804FA5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FA5D4  40 80 00 10 */	bge lbl_804FA5E4
/* 804FA5D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804FA5DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804FA5E0  48 00 00 70 */	b lbl_804FA650
lbl_804FA5E4:
/* 804FA5E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FA5E8  80 81 00 08 */	lwz r4, 8(r1)
/* 804FA5EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804FA5F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804FA5F4  7C 03 00 00 */	cmpw r3, r0
/* 804FA5F8  41 82 00 14 */	beq lbl_804FA60C
/* 804FA5FC  40 80 00 40 */	bge lbl_804FA63C
/* 804FA600  2C 03 00 00 */	cmpwi r3, 0
/* 804FA604  41 82 00 20 */	beq lbl_804FA624
/* 804FA608  48 00 00 34 */	b lbl_804FA63C
lbl_804FA60C:
/* 804FA60C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FA610  41 82 00 0C */	beq lbl_804FA61C
/* 804FA614  38 00 00 01 */	li r0, 1
/* 804FA618  48 00 00 28 */	b lbl_804FA640
lbl_804FA61C:
/* 804FA61C  38 00 00 02 */	li r0, 2
/* 804FA620  48 00 00 20 */	b lbl_804FA640
lbl_804FA624:
/* 804FA624  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FA628  41 82 00 0C */	beq lbl_804FA634
/* 804FA62C  38 00 00 05 */	li r0, 5
/* 804FA630  48 00 00 10 */	b lbl_804FA640
lbl_804FA634:
/* 804FA634  38 00 00 03 */	li r0, 3
/* 804FA638  48 00 00 08 */	b lbl_804FA640
lbl_804FA63C:
/* 804FA63C  38 00 00 04 */	li r0, 4
lbl_804FA640:
/* 804FA640  2C 00 00 01 */	cmpwi r0, 1
/* 804FA644  40 82 00 0C */	bne lbl_804FA650
/* 804FA648  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804FA64C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804FA650:
/* 804FA650  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FA654  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FA658  7C 08 03 A6 */	mtlr r0
/* 804FA65C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FA660  4E 80 00 20 */	blr 
