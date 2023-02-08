lbl_806B67E0:
/* 806B67E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806B67E4  7C 08 02 A6 */	mflr r0
/* 806B67E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806B67EC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806B67F0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806B67F4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 806B67F8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 806B67FC  39 61 00 20 */	addi r11, r1, 0x20
/* 806B6800  4B CA B9 DD */	bl _savegpr_29
/* 806B6804  7C 7D 1B 78 */	mr r29, r3
/* 806B6808  7C 9E 23 78 */	mr r30, r4
/* 806B680C  7C BF 2B 78 */	mr r31, r5
/* 806B6810  FF C0 08 90 */	fmr f30, f1
/* 806B6814  FF E0 10 90 */	fmr f31, f2
/* 806B6818  3C 60 80 6C */	lis r3, d_a_e_fb__stringBase0@ha /* 0x806B9028@ha */
/* 806B681C  38 63 90 28 */	addi r3, r3, d_a_e_fb__stringBase0@l /* 0x806B9028@l */
/* 806B6820  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B6824  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B6828  3C A5 00 02 */	addis r5, r5, 2
/* 806B682C  38 C0 00 80 */	li r6, 0x80
/* 806B6830  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806B6834  4B 98 5A B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B6838  7C 64 1B 78 */	mr r4, r3
/* 806B683C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806B6840  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 806B6844  FC 20 F0 90 */	fmr f1, f30
/* 806B6848  FC 40 F8 90 */	fmr f2, f31
/* 806B684C  3C C0 80 6C */	lis r6, lit_3750@ha /* 0x806B8F9C@ha */
/* 806B6850  C0 66 8F 9C */	lfs f3, lit_3750@l(r6)  /* 0x806B8F9C@l */
/* 806B6854  3C C0 80 6C */	lis r6, lit_3764@ha /* 0x806B8FA4@ha */
/* 806B6858  C0 86 8F A4 */	lfs f4, lit_3764@l(r6)  /* 0x806B8FA4@l */
/* 806B685C  4B 95 A6 15 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806B6860  93 DD 06 70 */	stw r30, 0x670(r29)
/* 806B6864  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806B6868  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806B686C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 806B6870  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 806B6874  39 61 00 20 */	addi r11, r1, 0x20
/* 806B6878  4B CA B9 B1 */	bl _restgpr_29
/* 806B687C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806B6880  7C 08 03 A6 */	mtlr r0
/* 806B6884  38 21 00 40 */	addi r1, r1, 0x40
/* 806B6888  4E 80 00 20 */	blr 
