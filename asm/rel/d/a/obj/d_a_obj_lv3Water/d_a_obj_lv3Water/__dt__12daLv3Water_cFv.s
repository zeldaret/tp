lbl_80C59D80:
/* 80C59D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C59D84  7C 08 02 A6 */	mflr r0
/* 80C59D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C59D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C59D90  93 C1 00 08 */	stw r30, 8(r1)
/* 80C59D94  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C59D98  7C 9F 23 78 */	mr r31, r4
/* 80C59D9C  41 82 00 A4 */	beq lbl_80C59E40
/* 80C59DA0  3C 60 80 C6 */	lis r3, __vt__12daLv3Water_c@ha
/* 80C59DA4  38 63 A2 9C */	addi r3, r3, __vt__12daLv3Water_c@l
/* 80C59DA8  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C59DAC  38 03 00 28 */	addi r0, r3, 0x28
/* 80C59DB0  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C59DB4  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80C59DB8  41 82 00 20 */	beq lbl_80C59DD8
/* 80C59DBC  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80C59DC0  41 82 00 18 */	beq lbl_80C59DD8
/* 80C59DC4  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80C59DC8  41 82 00 10 */	beq lbl_80C59DD8
/* 80C59DCC  3C 60 80 C6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C59DD0  38 03 A2 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C59DD4  90 1E 05 E0 */	stw r0, 0x5e0(r30)
lbl_80C59DD8:
/* 80C59DD8  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C59DDC  41 82 00 20 */	beq lbl_80C59DFC
/* 80C59DE0  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C59DE4  41 82 00 18 */	beq lbl_80C59DFC
/* 80C59DE8  34 1E 05 C8 */	addic. r0, r30, 0x5c8
/* 80C59DEC  41 82 00 10 */	beq lbl_80C59DFC
/* 80C59DF0  3C 60 80 C6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C59DF4  38 03 A2 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C59DF8  90 1E 05 C8 */	stw r0, 0x5c8(r30)
lbl_80C59DFC:
/* 80C59DFC  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C59E00  41 82 00 10 */	beq lbl_80C59E10
/* 80C59E04  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C59E08  38 03 A2 84 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C59E0C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C59E10:
/* 80C59E10  28 1E 00 00 */	cmplwi r30, 0
/* 80C59E14  41 82 00 1C */	beq lbl_80C59E30
/* 80C59E18  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C59E1C  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C59E20  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C59E24  7F C3 F3 78 */	mr r3, r30
/* 80C59E28  38 80 00 00 */	li r4, 0
/* 80C59E2C  4B 3B EE 60 */	b __dt__10fopAc_ac_cFv
lbl_80C59E30:
/* 80C59E30  7F E0 07 35 */	extsh. r0, r31
/* 80C59E34  40 81 00 0C */	ble lbl_80C59E40
/* 80C59E38  7F C3 F3 78 */	mr r3, r30
/* 80C59E3C  4B 67 4F 00 */	b __dl__FPv
lbl_80C59E40:
/* 80C59E40  7F C3 F3 78 */	mr r3, r30
/* 80C59E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C59E48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C59E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C59E50  7C 08 03 A6 */	mtlr r0
/* 80C59E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C59E58  4E 80 00 20 */	blr 
