lbl_807650F0:
/* 807650F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807650F4  7C 08 02 A6 */	mflr r0
/* 807650F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 807650FC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80765100  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80765104  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80765108  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8076510C  39 61 00 20 */	addi r11, r1, 0x20
/* 80765110  4B BF D0 CC */	b _savegpr_29
/* 80765114  7C 7D 1B 78 */	mr r29, r3
/* 80765118  7C 9E 23 78 */	mr r30, r4
/* 8076511C  FF C0 08 90 */	fmr f30, f1
/* 80765120  7C BF 2B 78 */	mr r31, r5
/* 80765124  FF E0 10 90 */	fmr f31, f2
/* 80765128  3C 60 80 77 */	lis r3, stringBase0@ha
/* 8076512C  38 63 B6 C4 */	addi r3, r3, stringBase0@l
/* 80765130  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80765134  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80765138  3C A5 00 02 */	addis r5, r5, 2
/* 8076513C  38 C0 00 80 */	li r6, 0x80
/* 80765140  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80765144  4B 8D 71 A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80765148  7C 64 1B 78 */	mr r4, r3
/* 8076514C  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80765150  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80765154  FC 20 F0 90 */	fmr f1, f30
/* 80765158  FC 40 F8 90 */	fmr f2, f31
/* 8076515C  3C C0 80 77 */	lis r6, lit_4008@ha
/* 80765160  C0 66 B4 60 */	lfs f3, lit_4008@l(r6)
/* 80765164  3C C0 80 77 */	lis r6, lit_4042@ha
/* 80765168  C0 86 B4 8C */	lfs f4, lit_4042@l(r6)
/* 8076516C  4B 8A BD 04 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80765170  93 DD 06 74 */	stw r30, 0x674(r29)
/* 80765174  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80765178  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8076517C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80765180  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80765184  39 61 00 20 */	addi r11, r1, 0x20
/* 80765188  4B BF D0 A0 */	b _restgpr_29
/* 8076518C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80765190  7C 08 03 A6 */	mtlr r0
/* 80765194  38 21 00 40 */	addi r1, r1, 0x40
/* 80765198  4E 80 00 20 */	blr 
