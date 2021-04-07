lbl_805E53DC:
/* 805E53DC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805E53E0  7C 08 02 A6 */	mflr r0
/* 805E53E4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805E53E8  39 61 00 70 */	addi r11, r1, 0x70
/* 805E53EC  4B D7 CD ED */	bl _savegpr_28
/* 805E53F0  7C 7D 1B 78 */	mr r29, r3
/* 805E53F4  7C 9E 23 78 */	mr r30, r4
/* 805E53F8  7C BC 2B 78 */	mr r28, r5
/* 805E53FC  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805E5400  3B E3 D0 60 */	addi r31, r3, lit_3911@l /* 0x805ED060@l */
/* 805E5404  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805E5408  4B C8 B7 FD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E540C  B0 7D 05 BA */	sth r3, 0x5ba(r29)
/* 805E5410  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805E5414  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E5418  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E541C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E5420  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805E5424  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805E5428  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805E542C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805E5430  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E5434  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E5438  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805E543C  38 61 00 0C */	addi r3, r1, 0xc
/* 805E5440  38 81 00 18 */	addi r4, r1, 0x18
/* 805E5444  4B D6 1F 59 */	bl PSVECSquareDistance
/* 805E5448  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E544C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E5450  40 81 00 58 */	ble lbl_805E54A8
/* 805E5454  FC 00 08 34 */	frsqrte f0, f1
/* 805E5458  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E545C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E5460  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E5464  FC 00 00 32 */	fmul f0, f0, f0
/* 805E5468  FC 01 00 32 */	fmul f0, f1, f0
/* 805E546C  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5470  FC 02 00 32 */	fmul f0, f2, f0
/* 805E5474  FC 44 00 32 */	fmul f2, f4, f0
/* 805E5478  FC 00 00 32 */	fmul f0, f0, f0
/* 805E547C  FC 01 00 32 */	fmul f0, f1, f0
/* 805E5480  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5484  FC 02 00 32 */	fmul f0, f2, f0
/* 805E5488  FC 44 00 32 */	fmul f2, f4, f0
/* 805E548C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E5490  FC 01 00 32 */	fmul f0, f1, f0
/* 805E5494  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5498  FC 02 00 32 */	fmul f0, f2, f0
/* 805E549C  FC 21 00 32 */	fmul f1, f1, f0
/* 805E54A0  FC 20 08 18 */	frsp f1, f1
/* 805E54A4  48 00 00 88 */	b lbl_805E552C
lbl_805E54A8:
/* 805E54A8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E54AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E54B0  40 80 00 10 */	bge lbl_805E54C0
/* 805E54B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E54B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805E54BC  48 00 00 70 */	b lbl_805E552C
lbl_805E54C0:
/* 805E54C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E54C4  80 81 00 08 */	lwz r4, 8(r1)
/* 805E54C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E54CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E54D0  7C 03 00 00 */	cmpw r3, r0
/* 805E54D4  41 82 00 14 */	beq lbl_805E54E8
/* 805E54D8  40 80 00 40 */	bge lbl_805E5518
/* 805E54DC  2C 03 00 00 */	cmpwi r3, 0
/* 805E54E0  41 82 00 20 */	beq lbl_805E5500
/* 805E54E4  48 00 00 34 */	b lbl_805E5518
lbl_805E54E8:
/* 805E54E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E54EC  41 82 00 0C */	beq lbl_805E54F8
/* 805E54F0  38 00 00 01 */	li r0, 1
/* 805E54F4  48 00 00 28 */	b lbl_805E551C
lbl_805E54F8:
/* 805E54F8  38 00 00 02 */	li r0, 2
/* 805E54FC  48 00 00 20 */	b lbl_805E551C
lbl_805E5500:
/* 805E5500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E5504  41 82 00 0C */	beq lbl_805E5510
/* 805E5508  38 00 00 05 */	li r0, 5
/* 805E550C  48 00 00 10 */	b lbl_805E551C
lbl_805E5510:
/* 805E5510  38 00 00 03 */	li r0, 3
/* 805E5514  48 00 00 08 */	b lbl_805E551C
lbl_805E5518:
/* 805E5518  38 00 00 04 */	li r0, 4
lbl_805E551C:
/* 805E551C  2C 00 00 01 */	cmpwi r0, 1
/* 805E5520  40 82 00 0C */	bne lbl_805E552C
/* 805E5524  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805E5528  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805E552C:
/* 805E552C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805E5530  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E5534  EC 42 00 28 */	fsubs f2, f2, f0
/* 805E5538  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805E553C  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E5540  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E5544  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E5548  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 805E554C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E5550  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 805E5554  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E5558  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 805E555C  41 82 00 54 */	beq lbl_805E55B0
/* 805E5560  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E5564  80 63 00 04 */	lwz r3, 4(r3)
/* 805E5568  38 63 00 24 */	addi r3, r3, 0x24
/* 805E556C  38 81 00 24 */	addi r4, r1, 0x24
/* 805E5570  4B D6 10 41 */	bl PSMTXInverse
/* 805E5574  38 61 00 24 */	addi r3, r1, 0x24
/* 805E5578  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805E557C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805E5580  4B D6 0F 31 */	bl PSMTXCopy
/* 805E5584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805E5588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805E558C  7F C4 F3 78 */	mr r4, r30
/* 805E5590  7F C5 F3 78 */	mr r5, r30
/* 805E5594  4B D6 17 D9 */	bl PSMTXMultVec
/* 805E5598  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805E559C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E55A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E55A4  40 80 00 5C */	bge lbl_805E5600
/* 805E55A8  38 60 00 01 */	li r3, 1
/* 805E55AC  48 00 00 58 */	b lbl_805E5604
lbl_805E55B0:
/* 805E55B0  7F C3 F3 78 */	mr r3, r30
/* 805E55B4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E55B8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 805E55BC  3C 80 80 5F */	lis r4, out_pos@ha /* 0x805ED774@ha */
/* 805E55C0  38 04 D7 74 */	addi r0, r4, out_pos@l /* 0x805ED774@l */
/* 805E55C4  7C 80 2A 14 */	add r4, r0, r5
/* 805E55C8  4B C8 B6 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E55CC  7C 7F 1B 78 */	mr r31, r3
/* 805E55D0  7F C3 F3 78 */	mr r3, r30
/* 805E55D4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805E55D8  4B C8 B6 2D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E55DC  7C 63 07 34 */	extsh r3, r3
/* 805E55E0  7F E0 07 34 */	extsh r0, r31
/* 805E55E4  7C 03 00 50 */	subf r0, r3, r0
/* 805E55E8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805E55EC  40 80 00 14 */	bge lbl_805E5600
/* 805E55F0  2C 00 C0 00 */	cmpwi r0, -16384
/* 805E55F4  40 81 00 0C */	ble lbl_805E5600
/* 805E55F8  38 60 00 01 */	li r3, 1
/* 805E55FC  48 00 00 08 */	b lbl_805E5604
lbl_805E5600:
/* 805E5600  38 60 00 00 */	li r3, 0
lbl_805E5604:
/* 805E5604  39 61 00 70 */	addi r11, r1, 0x70
/* 805E5608  4B D7 CC 1D */	bl _restgpr_28
/* 805E560C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805E5610  7C 08 03 A6 */	mtlr r0
/* 805E5614  38 21 00 70 */	addi r1, r1, 0x70
/* 805E5618  4E 80 00 20 */	blr 
