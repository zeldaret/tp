lbl_80CD85FC:
/* 80CD85FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CD8600  7C 08 02 A6 */	mflr r0
/* 80CD8604  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CD8608  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD860C  4B 68 9B D0 */	b _savegpr_29
/* 80CD8610  7C 7D 1B 78 */	mr r29, r3
/* 80CD8614  7C 9E 23 78 */	mr r30, r4
/* 80CD8618  3C 80 80 CE */	lis r4, lit_3697@ha
/* 80CD861C  3B E4 95 90 */	addi r31, r4, lit_3697@l
/* 80CD8620  4B 34 06 C0 */	b fopAc_IsActor__FPv
/* 80CD8624  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8628  41 82 01 40 */	beq lbl_80CD8768
/* 80CD862C  A8 1D 00 08 */	lha r0, 8(r29)
/* 80CD8630  2C 00 01 D9 */	cmpwi r0, 0x1d9
/* 80CD8634  40 82 01 34 */	bne lbl_80CD8768
/* 80CD8638  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80CD863C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CD8640  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CD8644  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CD8648  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CD864C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CD8650  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CD8654  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CD8658  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD865C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CD8660  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CD8664  38 61 00 0C */	addi r3, r1, 0xc
/* 80CD8668  38 81 00 18 */	addi r4, r1, 0x18
/* 80CD866C  4B 66 ED 30 */	b PSVECSquareDistance
/* 80CD8670  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD8674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD8678  40 81 00 58 */	ble lbl_80CD86D0
/* 80CD867C  FC 00 08 34 */	frsqrte f0, f1
/* 80CD8680  C8 9F 00 08 */	lfd f4, 8(r31)
/* 80CD8684  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD8688  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80CD868C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD8690  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD8694  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD8698  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD869C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD86A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD86A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD86A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD86AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD86B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD86B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD86B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD86BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD86C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD86C4  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD86C8  FC 20 08 18 */	frsp f1, f1
/* 80CD86CC  48 00 00 88 */	b lbl_80CD8754
lbl_80CD86D0:
/* 80CD86D0  C8 1F 00 18 */	lfd f0, 0x18(r31)
/* 80CD86D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD86D8  40 80 00 10 */	bge lbl_80CD86E8
/* 80CD86DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD86E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CD86E4  48 00 00 70 */	b lbl_80CD8754
lbl_80CD86E8:
/* 80CD86E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD86EC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD86F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD86F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD86F8  7C 03 00 00 */	cmpw r3, r0
/* 80CD86FC  41 82 00 14 */	beq lbl_80CD8710
/* 80CD8700  40 80 00 40 */	bge lbl_80CD8740
/* 80CD8704  2C 03 00 00 */	cmpwi r3, 0
/* 80CD8708  41 82 00 20 */	beq lbl_80CD8728
/* 80CD870C  48 00 00 34 */	b lbl_80CD8740
lbl_80CD8710:
/* 80CD8710  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD8714  41 82 00 0C */	beq lbl_80CD8720
/* 80CD8718  38 00 00 01 */	li r0, 1
/* 80CD871C  48 00 00 28 */	b lbl_80CD8744
lbl_80CD8720:
/* 80CD8720  38 00 00 02 */	li r0, 2
/* 80CD8724  48 00 00 20 */	b lbl_80CD8744
lbl_80CD8728:
/* 80CD8728  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD872C  41 82 00 0C */	beq lbl_80CD8738
/* 80CD8730  38 00 00 05 */	li r0, 5
/* 80CD8734  48 00 00 10 */	b lbl_80CD8744
lbl_80CD8738:
/* 80CD8738  38 00 00 03 */	li r0, 3
/* 80CD873C  48 00 00 08 */	b lbl_80CD8744
lbl_80CD8740:
/* 80CD8740  38 00 00 04 */	li r0, 4
lbl_80CD8744:
/* 80CD8744  2C 00 00 01 */	cmpwi r0, 1
/* 80CD8748  40 82 00 0C */	bne lbl_80CD8754
/* 80CD874C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CD8750  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CD8754:
/* 80CD8754  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CD8758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD875C  40 80 00 0C */	bge lbl_80CD8768
/* 80CD8760  7F A3 EB 78 */	mr r3, r29
/* 80CD8764  48 00 00 08 */	b lbl_80CD876C
lbl_80CD8768:
/* 80CD8768  38 60 00 00 */	li r3, 0
lbl_80CD876C:
/* 80CD876C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD8770  4B 68 9A B8 */	b _restgpr_29
/* 80CD8774  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CD8778  7C 08 03 A6 */	mtlr r0
/* 80CD877C  38 21 00 40 */	addi r1, r1, 0x40
/* 80CD8780  4E 80 00 20 */	blr 
