lbl_805F53E0:
/* 805F53E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F53E4  7C 08 02 A6 */	mflr r0
/* 805F53E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F53EC  39 61 00 40 */	addi r11, r1, 0x40
/* 805F53F0  4B D6 CD ED */	bl _savegpr_29
/* 805F53F4  7C 7D 1B 78 */	mr r29, r3
/* 805F53F8  7C 9E 23 78 */	mr r30, r4
/* 805F53FC  3C 80 80 60 */	lis r4, lit_3815@ha /* 0x80602664@ha */
/* 805F5400  3B E4 26 64 */	addi r31, r4, lit_3815@l /* 0x80602664@l */
/* 805F5404  4B A2 38 DD */	bl fopAc_IsActor__FPv
/* 805F5408  2C 03 00 00 */	cmpwi r3, 0
/* 805F540C  41 82 01 4C */	beq lbl_805F5558
/* 805F5410  A8 1D 00 08 */	lha r0, 8(r29)
/* 805F5414  2C 00 03 08 */	cmpwi r0, 0x308
/* 805F5418  40 82 01 40 */	bne lbl_805F5558
/* 805F541C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 805F5420  28 00 00 01 */	cmplwi r0, 1
/* 805F5424  41 82 00 0C */	beq lbl_805F5430
/* 805F5428  28 00 00 02 */	cmplwi r0, 2
/* 805F542C  40 82 01 2C */	bne lbl_805F5558
lbl_805F5430:
/* 805F5430  38 61 00 0C */	addi r3, r1, 0xc
/* 805F5434  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805F5438  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805F543C  4B C7 16 F9 */	bl __mi__4cXyzCFRC3Vec
/* 805F5440  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805F5444  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F5448  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805F544C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F5450  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805F5454  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805F5458  38 61 00 18 */	addi r3, r1, 0x18
/* 805F545C  4B D5 1C DD */	bl PSVECSquareMag
/* 805F5460  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 805F5464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F5468  40 81 00 58 */	ble lbl_805F54C0
/* 805F546C  FC 00 08 34 */	frsqrte f0, f1
/* 805F5470  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 805F5474  FC 44 00 32 */	fmul f2, f4, f0
/* 805F5478  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 805F547C  FC 00 00 32 */	fmul f0, f0, f0
/* 805F5480  FC 01 00 32 */	fmul f0, f1, f0
/* 805F5484  FC 03 00 28 */	fsub f0, f3, f0
/* 805F5488  FC 02 00 32 */	fmul f0, f2, f0
/* 805F548C  FC 44 00 32 */	fmul f2, f4, f0
/* 805F5490  FC 00 00 32 */	fmul f0, f0, f0
/* 805F5494  FC 01 00 32 */	fmul f0, f1, f0
/* 805F5498  FC 03 00 28 */	fsub f0, f3, f0
/* 805F549C  FC 02 00 32 */	fmul f0, f2, f0
/* 805F54A0  FC 44 00 32 */	fmul f2, f4, f0
/* 805F54A4  FC 00 00 32 */	fmul f0, f0, f0
/* 805F54A8  FC 01 00 32 */	fmul f0, f1, f0
/* 805F54AC  FC 03 00 28 */	fsub f0, f3, f0
/* 805F54B0  FC 02 00 32 */	fmul f0, f2, f0
/* 805F54B4  FC 21 00 32 */	fmul f1, f1, f0
/* 805F54B8  FC 20 08 18 */	frsp f1, f1
/* 805F54BC  48 00 00 88 */	b lbl_805F5544
lbl_805F54C0:
/* 805F54C0  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 805F54C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F54C8  40 80 00 10 */	bge lbl_805F54D8
/* 805F54CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805F54D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805F54D4  48 00 00 70 */	b lbl_805F5544
lbl_805F54D8:
/* 805F54D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805F54DC  80 81 00 08 */	lwz r4, 8(r1)
/* 805F54E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805F54E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805F54E8  7C 03 00 00 */	cmpw r3, r0
/* 805F54EC  41 82 00 14 */	beq lbl_805F5500
/* 805F54F0  40 80 00 40 */	bge lbl_805F5530
/* 805F54F4  2C 03 00 00 */	cmpwi r3, 0
/* 805F54F8  41 82 00 20 */	beq lbl_805F5518
/* 805F54FC  48 00 00 34 */	b lbl_805F5530
lbl_805F5500:
/* 805F5500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F5504  41 82 00 0C */	beq lbl_805F5510
/* 805F5508  38 00 00 01 */	li r0, 1
/* 805F550C  48 00 00 28 */	b lbl_805F5534
lbl_805F5510:
/* 805F5510  38 00 00 02 */	li r0, 2
/* 805F5514  48 00 00 20 */	b lbl_805F5534
lbl_805F5518:
/* 805F5518  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805F551C  41 82 00 0C */	beq lbl_805F5528
/* 805F5520  38 00 00 05 */	li r0, 5
/* 805F5524  48 00 00 10 */	b lbl_805F5534
lbl_805F5528:
/* 805F5528  38 00 00 03 */	li r0, 3
/* 805F552C  48 00 00 08 */	b lbl_805F5534
lbl_805F5530:
/* 805F5530  38 00 00 04 */	li r0, 4
lbl_805F5534:
/* 805F5534  2C 00 00 01 */	cmpwi r0, 1
/* 805F5538  40 82 00 0C */	bne lbl_805F5544
/* 805F553C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805F5540  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805F5544:
/* 805F5544  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 805F5548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F554C  40 80 00 0C */	bge lbl_805F5558
/* 805F5550  7F A3 EB 78 */	mr r3, r29
/* 805F5554  48 00 00 08 */	b lbl_805F555C
lbl_805F5558:
/* 805F5558  38 60 00 00 */	li r3, 0
lbl_805F555C:
/* 805F555C  39 61 00 40 */	addi r11, r1, 0x40
/* 805F5560  4B D6 CC C9 */	bl _restgpr_29
/* 805F5564  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F5568  7C 08 03 A6 */	mtlr r0
/* 805F556C  38 21 00 40 */	addi r1, r1, 0x40
/* 805F5570  4E 80 00 20 */	blr 
