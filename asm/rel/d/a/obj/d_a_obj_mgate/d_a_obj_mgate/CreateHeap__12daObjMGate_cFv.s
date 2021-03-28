lbl_805937AC:
/* 805937AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805937B0  7C 08 02 A6 */	mflr r0
/* 805937B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805937B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805937BC  4B DC EA 20 */	b _savegpr_29
/* 805937C0  7C 7D 1B 78 */	mr r29, r3
/* 805937C4  3C 60 80 59 */	lis r3, cNullVec__6Z2Calc@ha
/* 805937C8  3B E3 3F 68 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 805937CC  88 1D 05 B9 */	lbz r0, 0x5b9(r29)
/* 805937D0  54 00 10 3A */	slwi r0, r0, 2
/* 805937D4  38 7F 00 20 */	addi r3, r31, 0x20
/* 805937D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 805937DC  38 9F 00 28 */	addi r4, r31, 0x28
/* 805937E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805937E4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805937E8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805937EC  3F C5 00 02 */	addis r30, r5, 2
/* 805937F0  3B DE C2 F8 */	addi r30, r30, -15624
/* 805937F4  7F C5 F3 78 */	mr r5, r30
/* 805937F8  38 C0 00 80 */	li r6, 0x80
/* 805937FC  4B AA 8B 80 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80593800  3C 80 00 08 */	lis r4, 8
/* 80593804  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80593808  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8059380C  4B A8 14 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80593810  90 7D 05 B0 */	stw r3, 0x5b0(r29)
/* 80593814  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 80593818  28 00 00 00 */	cmplwi r0, 0
/* 8059381C  40 82 00 0C */	bne lbl_80593828
/* 80593820  38 60 00 00 */	li r3, 0
/* 80593824  48 00 00 50 */	b lbl_80593874
lbl_80593828:
/* 80593828  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8059382C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80593830  40 82 00 40 */	bne lbl_80593870
/* 80593834  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80593838  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 8059383C  7F C5 F3 78 */	mr r5, r30
/* 80593840  38 C0 00 80 */	li r6, 0x80
/* 80593844  4B AA 8B 38 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80593848  3C 80 00 08 */	lis r4, 8
/* 8059384C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80593850  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80593854  4B A8 14 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80593858  90 7D 05 B4 */	stw r3, 0x5b4(r29)
/* 8059385C  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 80593860  28 00 00 00 */	cmplwi r0, 0
/* 80593864  40 82 00 0C */	bne lbl_80593870
/* 80593868  38 60 00 00 */	li r3, 0
/* 8059386C  48 00 00 08 */	b lbl_80593874
lbl_80593870:
/* 80593870  38 60 00 01 */	li r3, 1
lbl_80593874:
/* 80593874  39 61 00 20 */	addi r11, r1, 0x20
/* 80593878  4B DC E9 B0 */	b _restgpr_29
/* 8059387C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593880  7C 08 03 A6 */	mtlr r0
/* 80593884  38 21 00 20 */	addi r1, r1, 0x20
/* 80593888  4E 80 00 20 */	blr 
