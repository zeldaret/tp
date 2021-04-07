lbl_8054A5BC:
/* 8054A5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054A5C0  7C 08 02 A6 */	mflr r0
/* 8054A5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054A5C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8054A5CC  3C 80 80 55 */	lis r4, lit_3905@ha /* 0x8054A964@ha */
/* 8054A5D0  3B E4 A9 64 */	addi r31, r4, lit_3905@l /* 0x8054A964@l */
/* 8054A5D4  4B DF CB 65 */	bl PSVECSquareMag
/* 8054A5D8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8054A5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054A5E0  40 81 00 58 */	ble lbl_8054A638
/* 8054A5E4  FC 00 08 34 */	frsqrte f0, f1
/* 8054A5E8  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 8054A5EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8054A5F0  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 8054A5F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8054A5F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8054A5FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8054A600  FC 02 00 32 */	fmul f0, f2, f0
/* 8054A604  FC 44 00 32 */	fmul f2, f4, f0
/* 8054A608  FC 00 00 32 */	fmul f0, f0, f0
/* 8054A60C  FC 01 00 32 */	fmul f0, f1, f0
/* 8054A610  FC 03 00 28 */	fsub f0, f3, f0
/* 8054A614  FC 02 00 32 */	fmul f0, f2, f0
/* 8054A618  FC 44 00 32 */	fmul f2, f4, f0
/* 8054A61C  FC 00 00 32 */	fmul f0, f0, f0
/* 8054A620  FC 01 00 32 */	fmul f0, f1, f0
/* 8054A624  FC 03 00 28 */	fsub f0, f3, f0
/* 8054A628  FC 02 00 32 */	fmul f0, f2, f0
/* 8054A62C  FC 21 00 32 */	fmul f1, f1, f0
/* 8054A630  FC 20 08 18 */	frsp f1, f1
/* 8054A634  48 00 00 88 */	b lbl_8054A6BC
lbl_8054A638:
/* 8054A638  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 8054A63C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054A640  40 80 00 10 */	bge lbl_8054A650
/* 8054A644  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8054A648  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8054A64C  48 00 00 70 */	b lbl_8054A6BC
lbl_8054A650:
/* 8054A650  D0 21 00 08 */	stfs f1, 8(r1)
/* 8054A654  80 81 00 08 */	lwz r4, 8(r1)
/* 8054A658  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8054A65C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8054A660  7C 03 00 00 */	cmpw r3, r0
/* 8054A664  41 82 00 14 */	beq lbl_8054A678
/* 8054A668  40 80 00 40 */	bge lbl_8054A6A8
/* 8054A66C  2C 03 00 00 */	cmpwi r3, 0
/* 8054A670  41 82 00 20 */	beq lbl_8054A690
/* 8054A674  48 00 00 34 */	b lbl_8054A6A8
lbl_8054A678:
/* 8054A678  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8054A67C  41 82 00 0C */	beq lbl_8054A688
/* 8054A680  38 00 00 01 */	li r0, 1
/* 8054A684  48 00 00 28 */	b lbl_8054A6AC
lbl_8054A688:
/* 8054A688  38 00 00 02 */	li r0, 2
/* 8054A68C  48 00 00 20 */	b lbl_8054A6AC
lbl_8054A690:
/* 8054A690  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8054A694  41 82 00 0C */	beq lbl_8054A6A0
/* 8054A698  38 00 00 05 */	li r0, 5
/* 8054A69C  48 00 00 10 */	b lbl_8054A6AC
lbl_8054A6A0:
/* 8054A6A0  38 00 00 03 */	li r0, 3
/* 8054A6A4  48 00 00 08 */	b lbl_8054A6AC
lbl_8054A6A8:
/* 8054A6A8  38 00 00 04 */	li r0, 4
lbl_8054A6AC:
/* 8054A6AC  2C 00 00 01 */	cmpwi r0, 1
/* 8054A6B0  40 82 00 0C */	bne lbl_8054A6BC
/* 8054A6B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8054A6B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8054A6BC:
/* 8054A6BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8054A6C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054A6C4  7C 08 03 A6 */	mtlr r0
/* 8054A6C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8054A6CC  4E 80 00 20 */	blr 
