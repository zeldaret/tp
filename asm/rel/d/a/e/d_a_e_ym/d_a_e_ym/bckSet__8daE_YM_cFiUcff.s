lbl_808081E0:
/* 808081E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808081E4  7C 08 02 A6 */	mflr r0
/* 808081E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 808081EC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 808081F0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 808081F4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 808081F8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 808081FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80808200  4B B5 9F DD */	bl _savegpr_29
/* 80808204  7C 7D 1B 78 */	mr r29, r3
/* 80808208  7C BE 2B 78 */	mr r30, r5
/* 8080820C  FF C0 08 90 */	fmr f30, f1
/* 80808210  FF E0 10 90 */	fmr f31, f2
/* 80808214  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 80808218  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 8080821C  88 1D 06 CA */	lbz r0, 0x6ca(r29)
/* 80808220  28 00 00 01 */	cmplwi r0, 1
/* 80808224  40 82 00 98 */	bne lbl_808082BC
/* 80808228  2C 04 00 0E */	cmpwi r4, 0xe
/* 8080822C  41 82 00 40 */	beq lbl_8080826C
/* 80808230  40 80 00 10 */	bge lbl_80808240
/* 80808234  2C 04 00 06 */	cmpwi r4, 6
/* 80808238  41 82 00 18 */	beq lbl_80808250
/* 8080823C  48 00 00 38 */	b lbl_80808274
lbl_80808240:
/* 80808240  2C 04 00 10 */	cmpwi r4, 0x10
/* 80808244  41 82 00 1C */	beq lbl_80808260
/* 80808248  40 80 00 2C */	bge lbl_80808274
/* 8080824C  48 00 00 0C */	b lbl_80808258
lbl_80808250:
/* 80808250  38 80 00 08 */	li r4, 8
/* 80808254  48 00 00 24 */	b lbl_80808278
lbl_80808258:
/* 80808258  38 80 00 09 */	li r4, 9
/* 8080825C  48 00 00 1C */	b lbl_80808278
lbl_80808260:
/* 80808260  C3 FF 00 48 */	lfs f31, 0x48(r31)
/* 80808264  38 80 00 0A */	li r4, 0xa
/* 80808268  48 00 00 10 */	b lbl_80808278
lbl_8080826C:
/* 8080826C  38 80 00 0A */	li r4, 0xa
/* 80808270  48 00 00 08 */	b lbl_80808278
lbl_80808274:
/* 80808274  38 80 00 09 */	li r4, 9
lbl_80808278:
/* 80808278  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 8080827C  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80808280  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80808284  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80808288  3C A5 00 02 */	addis r5, r5, 2
/* 8080828C  38 C0 00 80 */	li r6, 0x80
/* 80808290  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80808294  4B 83 40 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80808298  7C 64 1B 78 */	mr r4, r3
/* 8080829C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808082A0  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 808082A4  FC 20 F0 90 */	fmr f1, f30
/* 808082A8  FC 40 F8 90 */	fmr f2, f31
/* 808082AC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 808082B0  C0 9F 00 4C */	lfs f4, 0x4c(r31)
/* 808082B4  4B 80 8B BD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 808082B8  48 00 00 48 */	b lbl_80808300
lbl_808082BC:
/* 808082BC  3C 60 80 81 */	lis r3, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 808082C0  38 63 5A EC */	addi r3, r3, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 808082C4  38 63 00 05 */	addi r3, r3, 5
/* 808082C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808082CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808082D0  3C A5 00 02 */	addis r5, r5, 2
/* 808082D4  38 C0 00 80 */	li r6, 0x80
/* 808082D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808082DC  4B 83 40 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808082E0  7C 64 1B 78 */	mr r4, r3
/* 808082E4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 808082E8  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 808082EC  FC 20 F0 90 */	fmr f1, f30
/* 808082F0  FC 40 F8 90 */	fmr f2, f31
/* 808082F4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 808082F8  C0 9F 00 4C */	lfs f4, 0x4c(r31)
/* 808082FC  4B 80 8B 75 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80808300:
/* 80808300  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80808304  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80808308  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8080830C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80808310  39 61 00 20 */	addi r11, r1, 0x20
/* 80808314  4B B5 9F 15 */	bl _restgpr_29
/* 80808318  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8080831C  7C 08 03 A6 */	mtlr r0
/* 80808320  38 21 00 40 */	addi r1, r1, 0x40
/* 80808324  4E 80 00 20 */	blr 
