lbl_80D4287C:
/* 80D4287C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D42880  7C 08 02 A6 */	mflr r0
/* 80D42884  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D42888  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4288C  4B 61 F9 51 */	bl _savegpr_29
/* 80D42890  7C 7D 1B 78 */	mr r29, r3
/* 80D42894  3C 60 80 D4 */	lis r3, l_DATA@ha /* 0x80D43D88@ha */
/* 80D42898  3B E3 3D 88 */	addi r31, r3, l_DATA@l /* 0x80D43D88@l */
/* 80D4289C  3C 60 80 D4 */	lis r3, l_arcName@ha /* 0x80D43FA4@ha */
/* 80D428A0  38 63 3F A4 */	addi r3, r3, l_arcName@l /* 0x80D43FA4@l */
/* 80D428A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D428A8  88 1D 07 2D */	lbz r0, 0x72d(r29)
/* 80D428AC  54 00 10 3A */	slwi r0, r0, 2
/* 80D428B0  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D428B4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D428B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D428BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D428C0  3C A5 00 02 */	addis r5, r5, 2
/* 80D428C4  38 C0 00 80 */	li r6, 0x80
/* 80D428C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D428CC  4B 2F 9A 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D428D0  3C 80 00 08 */	lis r4, 8
/* 80D428D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D428D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D428DC  4B 2D 23 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D428E0  90 7D 05 70 */	stw r3, 0x570(r29)
/* 80D428E4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80D428E8  28 00 00 00 */	cmplwi r0, 0
/* 80D428EC  40 82 00 0C */	bne lbl_80D428F8
/* 80D428F0  38 60 00 00 */	li r3, 0
/* 80D428F4  48 00 01 70 */	b lbl_80D42A64
lbl_80D428F8:
/* 80D428F8  88 1D 07 2D */	lbz r0, 0x72d(r29)
/* 80D428FC  28 00 00 00 */	cmplwi r0, 0
/* 80D42900  41 82 00 0C */	beq lbl_80D4290C
/* 80D42904  28 00 00 01 */	cmplwi r0, 1
/* 80D42908  40 82 00 0C */	bne lbl_80D42914
lbl_80D4290C:
/* 80D4290C  38 C0 00 00 */	li r6, 0
/* 80D42910  48 00 00 08 */	b lbl_80D42918
lbl_80D42914:
/* 80D42914  38 C0 00 01 */	li r6, 1
lbl_80D42918:
/* 80D42918  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D4291C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D42920  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D42924  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D42928  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D4292C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D42930  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D42934  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D42938  28 00 00 FF */	cmplwi r0, 0xff
/* 80D4293C  40 82 00 08 */	bne lbl_80D42944
/* 80D42940  38 00 00 00 */	li r0, 0
lbl_80D42944:
/* 80D42944  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D42948  2C 00 00 01 */	cmpwi r0, 1
/* 80D4294C  41 82 00 68 */	beq lbl_80D429B4
/* 80D42950  40 80 00 10 */	bge lbl_80D42960
/* 80D42954  2C 00 00 00 */	cmpwi r0, 0
/* 80D42958  40 80 00 14 */	bge lbl_80D4296C
/* 80D4295C  48 00 00 E4 */	b lbl_80D42A40
lbl_80D42960:
/* 80D42960  2C 00 00 03 */	cmpwi r0, 3
/* 80D42964  40 80 00 DC */	bge lbl_80D42A40
/* 80D42968  48 00 00 94 */	b lbl_80D429FC
lbl_80D4296C:
/* 80D4296C  3B C0 00 02 */	li r30, 2
/* 80D42970  38 00 00 00 */	li r0, 0
/* 80D42974  88 7D 07 2D */	lbz r3, 0x72d(r29)
/* 80D42978  28 03 00 00 */	cmplwi r3, 0
/* 80D4297C  41 82 00 0C */	beq lbl_80D42988
/* 80D42980  28 03 00 02 */	cmplwi r3, 2
/* 80D42984  40 82 00 08 */	bne lbl_80D4298C
lbl_80D42988:
/* 80D42988  38 00 00 01 */	li r0, 1
lbl_80D4298C:
/* 80D4298C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42990  40 82 00 B0 */	bne lbl_80D42A40
/* 80D42994  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80D42998  38 7F 00 00 */	addi r3, r31, 0
/* 80D4299C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D429A0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80D429A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D429A8  EC 02 00 2A */	fadds f0, f2, f0
/* 80D429AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D429B0  48 00 00 90 */	b lbl_80D42A40
lbl_80D429B4:
/* 80D429B4  3B C0 00 01 */	li r30, 1
/* 80D429B8  38 00 00 00 */	li r0, 0
/* 80D429BC  88 7D 07 2D */	lbz r3, 0x72d(r29)
/* 80D429C0  28 03 00 00 */	cmplwi r3, 0
/* 80D429C4  41 82 00 0C */	beq lbl_80D429D0
/* 80D429C8  28 03 00 02 */	cmplwi r3, 2
/* 80D429CC  40 82 00 08 */	bne lbl_80D429D4
lbl_80D429D0:
/* 80D429D0  38 00 00 01 */	li r0, 1
lbl_80D429D4:
/* 80D429D4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D429D8  40 82 00 68 */	bne lbl_80D42A40
/* 80D429DC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80D429E0  38 7F 00 00 */	addi r3, r31, 0
/* 80D429E4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D429E8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80D429EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D429F0  EC 02 00 2A */	fadds f0, f2, f0
/* 80D429F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D429F8  48 00 00 48 */	b lbl_80D42A40
lbl_80D429FC:
/* 80D429FC  3B C0 00 00 */	li r30, 0
/* 80D42A00  38 00 00 00 */	li r0, 0
/* 80D42A04  88 7D 07 2D */	lbz r3, 0x72d(r29)
/* 80D42A08  28 03 00 00 */	cmplwi r3, 0
/* 80D42A0C  41 82 00 0C */	beq lbl_80D42A18
/* 80D42A10  28 03 00 02 */	cmplwi r3, 2
/* 80D42A14  40 82 00 08 */	bne lbl_80D42A1C
lbl_80D42A18:
/* 80D42A18  38 00 00 01 */	li r0, 1
lbl_80D42A1C:
/* 80D42A1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42A20  40 82 00 20 */	bne lbl_80D42A40
/* 80D42A24  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80D42A28  38 7F 00 00 */	addi r3, r31, 0
/* 80D42A2C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D42A30  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80D42A34  EC 01 00 24 */	fdivs f0, f1, f0
/* 80D42A38  EC 02 00 2A */	fadds f0, f2, f0
/* 80D42A3C  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80D42A40:
/* 80D42A40  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D42A44  7C 05 07 74 */	extsb r5, r0
/* 80D42A48  38 7D 07 54 */	addi r3, r29, 0x754
/* 80D42A4C  38 81 00 08 */	addi r4, r1, 8
/* 80D42A50  7F C7 F3 78 */	mr r7, r30
/* 80D42A54  39 00 00 00 */	li r8, 0
/* 80D42A58  48 00 0F 11 */	bl create__20_ZraMark_Hahen_Mng_cFRC4cXyzScScScSc
/* 80D42A5C  30 03 FF FF */	addic r0, r3, -1
/* 80D42A60  7C 60 19 10 */	subfe r3, r0, r3
lbl_80D42A64:
/* 80D42A64  39 61 00 30 */	addi r11, r1, 0x30
/* 80D42A68  4B 61 F7 C1 */	bl _restgpr_29
/* 80D42A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D42A70  7C 08 03 A6 */	mtlr r0
/* 80D42A74  38 21 00 30 */	addi r1, r1, 0x30
/* 80D42A78  4E 80 00 20 */	blr 
