lbl_80D4C958:
/* 80D4C958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4C95C  7C 08 02 A6 */	mflr r0
/* 80D4C960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4C964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4C968  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4C96C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4C970  7C 9F 23 78 */	mr r31, r4
/* 80D4C974  41 82 00 6C */	beq lbl_80D4C9E0
/* 80D4C978  3C 60 80 D5 */	lis r3, __vt__11daPPolamp_c@ha
/* 80D4C97C  38 03 D3 30 */	addi r0, r3, __vt__11daPPolamp_c@l
/* 80D4C980  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80D4C984  7F C3 F3 78 */	mr r3, r30
/* 80D4C988  41 82 00 08 */	beq lbl_80D4C990
/* 80D4C98C  38 63 05 68 */	addi r3, r3, 0x568
lbl_80D4C990:
/* 80D4C990  3C 80 80 D5 */	lis r4, l_arcName@ha
/* 80D4C994  38 84 D2 D0 */	addi r4, r4, l_arcName@l
/* 80D4C998  80 84 00 00 */	lwz r4, 0(r4)
/* 80D4C99C  4B 2E 06 6C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D4C9A0  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80D4C9A4  41 82 00 20 */	beq lbl_80D4C9C4
/* 80D4C9A8  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80D4C9AC  41 82 00 18 */	beq lbl_80D4C9C4
/* 80D4C9B0  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80D4C9B4  41 82 00 10 */	beq lbl_80D4C9C4
/* 80D4C9B8  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D4C9BC  38 03 D3 24 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D4C9C0  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_80D4C9C4:
/* 80D4C9C4  7F C3 F3 78 */	mr r3, r30
/* 80D4C9C8  38 80 00 00 */	li r4, 0
/* 80D4C9CC  4B 2C C2 C0 */	b __dt__10fopAc_ac_cFv
/* 80D4C9D0  7F E0 07 35 */	extsh. r0, r31
/* 80D4C9D4  40 81 00 0C */	ble lbl_80D4C9E0
/* 80D4C9D8  7F C3 F3 78 */	mr r3, r30
/* 80D4C9DC  4B 58 23 60 */	b __dl__FPv
lbl_80D4C9E0:
/* 80D4C9E0  7F C3 F3 78 */	mr r3, r30
/* 80D4C9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4C9E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4C9EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4C9F0  7C 08 03 A6 */	mtlr r0
/* 80D4C9F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4C9F8  4E 80 00 20 */	blr 
