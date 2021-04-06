lbl_8019E570:
/* 8019E570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019E574  7C 08 02 A6 */	mflr r0
/* 8019E578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019E57C  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E580  38 C5 CA 54 */	addi r6, r5, g_env_light@l /* 0x8042CA54@l */
/* 8019E584  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8019E588  38 05 FF FF */	addi r0, r5, -1
/* 8019E58C  7C 80 00 38 */	and r0, r4, r0
/* 8019E590  54 00 10 3A */	slwi r0, r0, 2
/* 8019E594  7C 86 02 14 */	add r4, r6, r0
/* 8019E598  80 84 03 F8 */	lwz r4, 0x3f8(r4)
/* 8019E59C  48 1A 8E 01 */	bl PSVECSquareDistance
/* 8019E5A0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019E5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E5A8  40 81 00 58 */	ble lbl_8019E600
/* 8019E5AC  FC 00 08 34 */	frsqrte f0, f1
/* 8019E5B0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 8019E5B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E5B8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 8019E5BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E5C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E5C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E5C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E5CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E5D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E5D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E5D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E5DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E5E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8019E5E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8019E5E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8019E5EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8019E5F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8019E5F4  FC 21 00 32 */	fmul f1, f1, f0
/* 8019E5F8  FC 20 08 18 */	frsp f1, f1
/* 8019E5FC  48 00 00 88 */	b lbl_8019E684
lbl_8019E600:
/* 8019E600  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 8019E604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019E608  40 80 00 10 */	bge lbl_8019E618
/* 8019E60C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8019E610  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8019E614  48 00 00 70 */	b lbl_8019E684
lbl_8019E618:
/* 8019E618  D0 21 00 08 */	stfs f1, 8(r1)
/* 8019E61C  80 81 00 08 */	lwz r4, 8(r1)
/* 8019E620  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8019E624  3C 00 7F 80 */	lis r0, 0x7f80
/* 8019E628  7C 03 00 00 */	cmpw r3, r0
/* 8019E62C  41 82 00 14 */	beq lbl_8019E640
/* 8019E630  40 80 00 40 */	bge lbl_8019E670
/* 8019E634  2C 03 00 00 */	cmpwi r3, 0
/* 8019E638  41 82 00 20 */	beq lbl_8019E658
/* 8019E63C  48 00 00 34 */	b lbl_8019E670
lbl_8019E640:
/* 8019E640  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E644  41 82 00 0C */	beq lbl_8019E650
/* 8019E648  38 00 00 01 */	li r0, 1
/* 8019E64C  48 00 00 28 */	b lbl_8019E674
lbl_8019E650:
/* 8019E650  38 00 00 02 */	li r0, 2
/* 8019E654  48 00 00 20 */	b lbl_8019E674
lbl_8019E658:
/* 8019E658  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8019E65C  41 82 00 0C */	beq lbl_8019E668
/* 8019E660  38 00 00 05 */	li r0, 5
/* 8019E664  48 00 00 10 */	b lbl_8019E674
lbl_8019E668:
/* 8019E668  38 00 00 03 */	li r0, 3
/* 8019E66C  48 00 00 08 */	b lbl_8019E674
lbl_8019E670:
/* 8019E670  38 00 00 04 */	li r0, 4
lbl_8019E674:
/* 8019E674  2C 00 00 01 */	cmpwi r0, 1
/* 8019E678  40 82 00 0C */	bne lbl_8019E684
/* 8019E67C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8019E680  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8019E684:
/* 8019E684  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019E688  7C 08 03 A6 */	mtlr r0
/* 8019E68C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019E690  4E 80 00 20 */	blr 
