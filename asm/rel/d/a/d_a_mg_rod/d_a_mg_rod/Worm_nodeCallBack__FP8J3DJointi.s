lbl_804A98F4:
/* 804A98F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A98F8  7C 08 02 A6 */	mflr r0
/* 804A98FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A9900  39 61 00 20 */	addi r11, r1, 0x20
/* 804A9904  4B EB 88 D5 */	bl _savegpr_28
/* 804A9908  2C 04 00 00 */	cmpwi r4, 0
/* 804A990C  40 82 00 B8 */	bne lbl_804A99C4
/* 804A9910  A3 C3 00 14 */	lhz r30, 0x14(r3)
/* 804A9914  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804A9918  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804A991C  83 A3 00 38 */	lwz r29, 0x38(r3)
/* 804A9920  83 9D 00 14 */	lwz r28, 0x14(r29)
/* 804A9924  28 1C 00 00 */	cmplwi r28, 0
/* 804A9928  41 82 00 9C */	beq lbl_804A99C4
/* 804A992C  2C 1E 00 01 */	cmpwi r30, 1
/* 804A9930  41 80 00 94 */	blt lbl_804A99C4
/* 804A9934  2C 1E 00 09 */	cmpwi r30, 9
/* 804A9938  41 81 00 8C */	bgt lbl_804A99C4
/* 804A993C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 804A9940  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A9944  1F FE 00 30 */	mulli r31, r30, 0x30
/* 804A9948  7C 60 FA 14 */	add r3, r0, r31
/* 804A994C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804A9950  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804A9954  80 84 00 00 */	lwz r4, 0(r4)
/* 804A9958  4B E9 CB 59 */	bl PSMTXCopy
/* 804A995C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A9960  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9964  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9968  57 DE 08 3C */	slwi r30, r30, 1
/* 804A996C  7C 9C F2 14 */	add r4, r28, r30
/* 804A9970  A8 84 10 3A */	lha r4, 0x103a(r4)
/* 804A9974  4B B6 2A C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 804A9978  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A997C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9980  80 63 00 00 */	lwz r3, 0(r3)
/* 804A9984  7C 9C F2 14 */	add r4, r28, r30
/* 804A9988  A8 84 10 4C */	lha r4, 0x104c(r4)
/* 804A998C  4B B6 2B 41 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804A9990  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A9994  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A9998  80 63 00 00 */	lwz r3, 0(r3)
/* 804A999C  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 804A99A0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 804A99A4  7C 80 FA 14 */	add r4, r0, r31
/* 804A99A8  4B E9 CB 09 */	bl PSMTXCopy
/* 804A99AC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A99B0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804A99B4  80 63 00 00 */	lwz r3, 0(r3)
/* 804A99B8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 804A99BC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 804A99C0  4B E9 CA F1 */	bl PSMTXCopy
lbl_804A99C4:
/* 804A99C4  38 60 00 01 */	li r3, 1
/* 804A99C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804A99CC  4B EB 88 59 */	bl _restgpr_28
/* 804A99D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A99D4  7C 08 03 A6 */	mtlr r0
/* 804A99D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804A99DC  4E 80 00 20 */	blr 
