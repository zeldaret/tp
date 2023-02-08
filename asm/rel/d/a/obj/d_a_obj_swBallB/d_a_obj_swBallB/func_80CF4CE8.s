lbl_80CF4CE8:
/* 80CF4CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4CEC  7C 08 02 A6 */	mflr r0
/* 80CF4CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF4CF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF4CFC  7C 7F 1B 78 */	mr r31, r3
/* 80CF4D00  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CF4D04  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CF4D08  40 82 00 48 */	bne lbl_80CF4D50
/* 80CF4D0C  28 1F 00 00 */	cmplwi r31, 0
/* 80CF4D10  41 82 00 34 */	beq lbl_80CF4D44
/* 80CF4D14  4B 32 3E 51 */	bl __ct__10fopAc_ac_cFv
/* 80CF4D18  3C 60 80 CF */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80CF5AE8@ha */
/* 80CF4D1C  38 03 5A E8 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80CF5AE8@l */
/* 80CF4D20  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80CF4D24  93 FF 05 6C */	stw r31, 0x56c(r31)
/* 80CF4D28  38 00 00 00 */	li r0, 0
/* 80CF4D2C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CF4D30  3C 60 80 CF */	lis r3, __vt__14daObjSwBallB_c@ha /* 0x80CF5AC4@ha */
/* 80CF4D34  38 63 5A C4 */	addi r3, r3, __vt__14daObjSwBallB_c@l /* 0x80CF5AC4@l */
/* 80CF4D38  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80CF4D3C  38 03 00 08 */	addi r0, r3, 8
/* 80CF4D40  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80CF4D44:
/* 80CF4D44  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CF4D48  60 00 00 08 */	ori r0, r0, 8
/* 80CF4D4C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CF4D50:
/* 80CF4D50  88 1F 05 A0 */	lbz r0, 0x5a0(r31)
/* 80CF4D54  28 00 00 00 */	cmplwi r0, 0
/* 80CF4D58  40 82 00 38 */	bne lbl_80CF4D90
/* 80CF4D5C  38 00 00 01 */	li r0, 1
/* 80CF4D60  98 1F 05 A0 */	stb r0, 0x5a0(r31)
/* 80CF4D64  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CF4D68  B0 1F 05 A2 */	sth r0, 0x5a2(r31)
/* 80CF4D6C  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CF4D70  B0 1F 05 A4 */	sth r0, 0x5a4(r31)
/* 80CF4D74  38 00 00 00 */	li r0, 0
/* 80CF4D78  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CF4D7C  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CF4D80  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CF4D84  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CF4D88  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CF4D8C  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
lbl_80CF4D90:
/* 80CF4D90  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80CF4D94  3C 80 80 CF */	lis r4, l_arcName@ha /* 0x80CF5A40@ha */
/* 80CF4D98  38 84 5A 40 */	addi r4, r4, l_arcName@l /* 0x80CF5A40@l */
/* 80CF4D9C  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF4DA0  4B 33 81 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CF4DA4  7C 7E 1B 78 */	mr r30, r3
/* 80CF4DA8  2C 1E 00 04 */	cmpwi r30, 4
/* 80CF4DAC  40 82 00 40 */	bne lbl_80CF4DEC
/* 80CF4DB0  7F E3 FB 78 */	mr r3, r31
/* 80CF4DB4  3C 80 80 CF */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80CF464C@ha */
/* 80CF4DB8  38 84 46 4C */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80CF464C@l */
/* 80CF4DBC  38 A0 09 40 */	li r5, 0x940
/* 80CF4DC0  4B 32 56 F1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CF4DC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CF4DC8  40 82 00 0C */	bne lbl_80CF4DD4
/* 80CF4DCC  38 60 00 05 */	li r3, 5
/* 80CF4DD0  48 00 00 20 */	b lbl_80CF4DF0
lbl_80CF4DD4:
/* 80CF4DD4  7F E3 FB 78 */	mr r3, r31
/* 80CF4DD8  4B FF FC 19 */	bl Create__14daObjSwBallB_cFv
/* 80CF4DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80CF4DE0  40 82 00 0C */	bne lbl_80CF4DEC
/* 80CF4DE4  38 60 00 05 */	li r3, 5
/* 80CF4DE8  48 00 00 08 */	b lbl_80CF4DF0
lbl_80CF4DEC:
/* 80CF4DEC  7F C3 F3 78 */	mr r3, r30
lbl_80CF4DF0:
/* 80CF4DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF4DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF4DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4DFC  7C 08 03 A6 */	mtlr r0
/* 80CF4E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4E04  4E 80 00 20 */	blr 
