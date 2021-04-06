lbl_800B96A4:
/* 800B96A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B96A8  7C 08 02 A6 */	mflr r0
/* 800B96AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B96B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800B96B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800B96B8  39 61 00 20 */	addi r11, r1, 0x20
/* 800B96BC  48 2A 8B 21 */	bl _savegpr_29
/* 800B96C0  7C 7F 1B 78 */	mr r31, r3
/* 800B96C4  FF E0 08 90 */	fmr f31, f1
/* 800B96C8  54 9E 04 3E */	clrlwi r30, r4, 0x10
/* 800B96CC  28 1E 00 40 */	cmplwi r30, 0x40
/* 800B96D0  41 82 00 2C */	beq lbl_800B96FC
/* 800B96D4  28 1E 00 46 */	cmplwi r30, 0x46
/* 800B96D8  41 82 00 24 */	beq lbl_800B96FC
/* 800B96DC  28 1E 00 48 */	cmplwi r30, 0x48
/* 800B96E0  41 82 00 1C */	beq lbl_800B96FC
/* 800B96E4  28 1E 00 44 */	cmplwi r30, 0x44
/* 800B96E8  41 82 00 14 */	beq lbl_800B96FC
/* 800B96EC  7F C3 F3 78 */	mr r3, r30
/* 800B96F0  48 0A 53 99 */	bl checkBottleItem__9daPy_py_cFi
/* 800B96F4  2C 03 00 00 */	cmpwi r3, 0
/* 800B96F8  41 82 00 18 */	beq lbl_800B9710
lbl_800B96FC:
/* 800B96FC  3B C0 02 47 */	li r30, 0x247
/* 800B9700  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha /* 0x8038EB50@ha */
/* 800B9704  38 03 EB 50 */	addi r0, r3, m__18daAlinkHIO_item_c0@l /* 0x8038EB50@l */
/* 800B9708  7C 1D 03 78 */	mr r29, r0
/* 800B970C  48 00 00 54 */	b lbl_800B9760
lbl_800B9710:
/* 800B9710  7F E3 FB 78 */	mr r3, r31
/* 800B9714  7F C4 F3 78 */	mr r4, r30
/* 800B9718  48 02 50 69 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800B971C  2C 03 00 00 */	cmpwi r3, 0
/* 800B9720  41 82 00 30 */	beq lbl_800B9750
/* 800B9724  7F E3 FB 78 */	mr r3, r31
/* 800B9728  48 02 64 A1 */	bl checkBowGrabLeftHand__9daAlink_cCFv
/* 800B972C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B9730  20 00 00 00 */	subfic r0, r0, 0
/* 800B9734  7C 60 01 10 */	subfe r3, r0, r0
/* 800B9738  38 03 02 48 */	addi r0, r3, 0x248
/* 800B973C  7C 1E 03 78 */	mr r30, r0
/* 800B9740  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha /* 0x8038EB50@ha */
/* 800B9744  38 03 EB 50 */	addi r0, r3, m__18daAlinkHIO_item_c0@l /* 0x8038EB50@l */
/* 800B9748  7C 1D 03 78 */	mr r29, r0
/* 800B974C  48 00 00 14 */	b lbl_800B9760
lbl_800B9750:
/* 800B9750  3B C0 02 45 */	li r30, 0x245
/* 800B9754  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha /* 0x8038EB50@ha */
/* 800B9758  38 63 EB 50 */	addi r3, r3, m__18daAlinkHIO_item_c0@l /* 0x8038EB50@l */
/* 800B975C  3B A3 00 14 */	addi r29, r3, 0x14
lbl_800B9760:
/* 800B9760  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B9764  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B9768  40 81 00 40 */	ble lbl_800B97A8
/* 800B976C  7F E3 FB 78 */	mr r3, r31
/* 800B9770  48 00 00 7D */	bl checkFastUnequip__9daAlink_cFv
/* 800B9774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9778  41 82 00 30 */	beq lbl_800B97A8
/* 800B977C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800B9780  28 00 02 45 */	cmplwi r0, 0x245
/* 800B9784  40 82 00 14 */	bne lbl_800B9798
/* 800B9788  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha /* 0x8038EB50@ha */
/* 800B978C  38 63 EB 50 */	addi r3, r3, m__18daAlinkHIO_item_c0@l /* 0x8038EB50@l */
/* 800B9790  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 800B9794  48 00 00 1C */	b lbl_800B97B0
lbl_800B9798:
/* 800B9798  3C 60 80 39 */	lis r3, m__18daAlinkHIO_item_c0@ha /* 0x8038EB50@ha */
/* 800B979C  38 63 EB 50 */	addi r3, r3, m__18daAlinkHIO_item_c0@l /* 0x8038EB50@l */
/* 800B97A0  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 800B97A4  48 00 00 0C */	b lbl_800B97B0
lbl_800B97A8:
/* 800B97A8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800B97AC  EC 20 07 F2 */	fmuls f1, f0, f31
lbl_800B97B0:
/* 800B97B0  7F E3 FB 78 */	mr r3, r31
/* 800B97B4  7F C4 F3 78 */	mr r4, r30
/* 800B97B8  38 A0 00 02 */	li r5, 2
/* 800B97BC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 800B97C0  A8 DD 00 00 */	lha r6, 0(r29)
/* 800B97C4  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 800B97C8  4B FF 3C 11 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 800B97CC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800B97D0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800B97D4  39 61 00 20 */	addi r11, r1, 0x20
/* 800B97D8  48 2A 8A 51 */	bl _restgpr_29
/* 800B97DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B97E0  7C 08 03 A6 */	mtlr r0
/* 800B97E4  38 21 00 30 */	addi r1, r1, 0x30
/* 800B97E8  4E 80 00 20 */	blr 
