lbl_80085F28:
/* 80085F28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80085F2C  7C 08 02 A6 */	mflr r0
/* 80085F30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80085F34  39 61 00 50 */	addi r11, r1, 0x50
/* 80085F38  48 2D C2 91 */	bl _savegpr_24
/* 80085F3C  7C 78 1B 78 */	mr r24, r3
/* 80085F40  7C 99 23 78 */	mr r25, r4
/* 80085F44  7C BA 2B 78 */	mr r26, r5
/* 80085F48  7C DB 33 78 */	mr r27, r6
/* 80085F4C  7C FC 3B 78 */	mr r28, r7
/* 80085F50  7F 23 CB 78 */	mr r3, r25
/* 80085F54  81 99 00 3C */	lwz r12, 0x3c(r25)
/* 80085F58  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80085F5C  7D 89 03 A6 */	mtctr r12
/* 80085F60  4E 80 04 21 */	bctrl 
/* 80085F64  7C 7D 1B 79 */	or. r29, r3, r3
/* 80085F68  40 82 00 0C */	bne lbl_80085F74
/* 80085F6C  38 60 00 00 */	li r3, 0
/* 80085F70  48 00 01 70 */	b lbl_800860E0
lbl_80085F74:
/* 80085F74  7F 43 D3 78 */	mr r3, r26
/* 80085F78  81 9A 00 3C */	lwz r12, 0x3c(r26)
/* 80085F7C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80085F80  7D 89 03 A6 */	mtctr r12
/* 80085F84  4E 80 04 21 */	bctrl 
/* 80085F88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80085F8C  40 82 00 0C */	bne lbl_80085F98
/* 80085F90  38 60 00 00 */	li r3, 0
/* 80085F94  48 00 01 4C */	b lbl_800860E0
lbl_80085F98:
/* 80085F98  48 1D DA B1 */	bl GetAc__8cCcD_ObjFv
/* 80085F9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80085FA0  40 82 00 0C */	bne lbl_80085FAC
/* 80085FA4  38 60 00 00 */	li r3, 0
/* 80085FA8  48 00 01 38 */	b lbl_800860E0
lbl_80085FAC:
/* 80085FAC  7F 03 C3 78 */	mr r3, r24
/* 80085FB0  7F A4 EB 78 */	mr r4, r29
/* 80085FB4  80 B9 00 44 */	lwz r5, 0x44(r25)
/* 80085FB8  80 DA 00 44 */	lwz r6, 0x44(r26)
/* 80085FBC  38 E1 00 10 */	addi r7, r1, 0x10
/* 80085FC0  81 98 28 48 */	lwz r12, 0x2848(r24)
/* 80085FC4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80085FC8  7D 89 03 A6 */	mtctr r12
/* 80085FCC  4E 80 04 21 */	bctrl 
/* 80085FD0  2C 1B 00 00 */	cmpwi r27, 0
/* 80085FD4  41 82 00 B4 */	beq lbl_80086088
/* 80085FD8  83 BF 05 28 */	lwz r29, 0x528(r31)
/* 80085FDC  28 1D 00 00 */	cmplwi r29, 0
/* 80085FE0  41 82 00 A8 */	beq lbl_80086088
/* 80085FE4  7F A3 EB 78 */	mr r3, r29
/* 80085FE8  7F 84 E3 78 */	mr r4, r28
/* 80085FEC  38 A1 00 10 */	addi r5, r1, 0x10
/* 80085FF0  38 C1 00 24 */	addi r6, r1, 0x24
/* 80085FF4  38 E1 00 08 */	addi r7, r1, 8
/* 80085FF8  39 00 00 00 */	li r8, 0
/* 80085FFC  4B FB 0C 49 */	bl getHitmarkPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP5csXyzi
/* 80086000  2C 03 00 00 */	cmpwi r3, 0
/* 80086004  41 80 00 7C */	blt lbl_80086080
/* 80086008  80 9D 00 00 */	lwz r4, 0(r29)
/* 8008600C  1C 03 00 0C */	mulli r0, r3, 0xc
/* 80086010  7C 64 02 14 */	add r3, r4, r0
/* 80086014  88 03 00 01 */	lbz r0, 1(r3)
/* 80086018  2C 00 00 03 */	cmpwi r0, 3
/* 8008601C  40 82 00 64 */	bne lbl_80086080
/* 80086020  38 61 00 10 */	addi r3, r1, 0x10
/* 80086024  4B F8 6E E9 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80086028  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8008602C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80086030  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 80086034  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 80086038  38 A1 00 18 */	addi r5, r1, 0x18
/* 8008603C  48 2C 0E 11 */	bl PSMTXMultVecSR
/* 80086040  38 61 00 08 */	addi r3, r1, 8
/* 80086044  4B F8 6E C9 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80086048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8008604C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80086050  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 80086054  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 80086058  38 A1 00 24 */	addi r5, r1, 0x24
/* 8008605C  48 2C 0D F1 */	bl PSMTXMultVecSR
/* 80086060  38 61 00 24 */	addi r3, r1, 0x24
/* 80086064  38 81 00 18 */	addi r4, r1, 0x18
/* 80086068  48 2C 11 2D */	bl PSVECDotProduct
/* 8008606C  C0 02 8D 78 */	lfs f0, lit_3705(r2)
/* 80086070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80086074  7C 00 00 26 */	mfcr r0
/* 80086078  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8008607C  48 00 00 64 */	b lbl_800860E0
lbl_80086080:
/* 80086080  38 60 00 00 */	li r3, 0
/* 80086084  48 00 00 5C */	b lbl_800860E0
lbl_80086088:
/* 80086088  80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 8008608C  28 03 00 00 */	cmplwi r3, 0
/* 80086090  41 82 00 0C */	beq lbl_8008609C
/* 80086094  A8 83 00 00 */	lha r4, 0(r3)
/* 80086098  48 00 00 08 */	b lbl_800860A0
lbl_8008609C:
/* 8008609C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
lbl_800860A0:
/* 800860A0  AB BE 00 E4 */	lha r29, 0xe4(r30)
/* 800860A4  2C 1B 00 00 */	cmpwi r27, 0
/* 800860A8  41 82 00 0C */	beq lbl_800860B4
/* 800860AC  7F A0 0E 70 */	srawi r0, r29, 1
/* 800860B0  7C 1D 07 34 */	extsh r29, r0
lbl_800860B4:
/* 800860B4  A8 61 00 12 */	lha r3, 0x12(r1)
/* 800860B8  3C 63 00 01 */	addis r3, r3, 1
/* 800860BC  38 03 80 00 */	addi r0, r3, -32768
/* 800860C0  7C 03 07 34 */	extsh r3, r0
/* 800860C4  48 1E AD 61 */	bl cLib_distanceAngleS__Fss
/* 800860C8  7F A0 07 34 */	extsh r0, r29
/* 800860CC  7C 03 00 00 */	cmpw r3, r0
/* 800860D0  40 81 00 0C */	ble lbl_800860DC
/* 800860D4  38 60 00 00 */	li r3, 0
/* 800860D8  48 00 00 08 */	b lbl_800860E0
lbl_800860DC:
/* 800860DC  38 60 00 01 */	li r3, 1
lbl_800860E0:
/* 800860E0  39 61 00 50 */	addi r11, r1, 0x50
/* 800860E4  48 2D C1 31 */	bl _restgpr_24
/* 800860E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800860EC  7C 08 03 A6 */	mtlr r0
/* 800860F0  38 21 00 50 */	addi r1, r1, 0x50
/* 800860F4  4E 80 00 20 */	blr 
