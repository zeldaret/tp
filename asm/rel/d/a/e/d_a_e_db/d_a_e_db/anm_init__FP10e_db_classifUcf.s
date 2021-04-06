lbl_8069AB34:
/* 8069AB34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8069AB38  7C 08 02 A6 */	mflr r0
/* 8069AB3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8069AB40  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8069AB44  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8069AB48  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8069AB4C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8069AB50  39 61 00 20 */	addi r11, r1, 0x20
/* 8069AB54  4B CC 76 89 */	bl _savegpr_29
/* 8069AB58  7C 7D 1B 78 */	mr r29, r3
/* 8069AB5C  7C 9E 23 78 */	mr r30, r4
/* 8069AB60  FF C0 08 90 */	fmr f30, f1
/* 8069AB64  7C BF 2B 78 */	mr r31, r5
/* 8069AB68  FF E0 10 90 */	fmr f31, f2
/* 8069AB6C  3C 60 80 6A */	lis r3, d_a_e_db__stringBase0@ha /* 0x806A1A6C@ha */
/* 8069AB70  38 63 1A 6C */	addi r3, r3, d_a_e_db__stringBase0@l /* 0x806A1A6C@l */
/* 8069AB74  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069AB78  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069AB7C  3C A5 00 02 */	addis r5, r5, 2
/* 8069AB80  38 C0 00 80 */	li r6, 0x80
/* 8069AB84  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8069AB88  4B 9A 17 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8069AB8C  7C 64 1B 78 */	mr r4, r3
/* 8069AB90  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8069AB94  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8069AB98  FC 20 F0 90 */	fmr f1, f30
/* 8069AB9C  FC 40 F8 90 */	fmr f2, f31
/* 8069ABA0  3C C0 80 6A */	lis r6, lit_3903@ha /* 0x806A1910@ha */
/* 8069ABA4  C0 66 19 10 */	lfs f3, lit_3903@l(r6)  /* 0x806A1910@l */
/* 8069ABA8  3C C0 80 6A */	lis r6, lit_3938@ha /* 0x806A1940@ha */
/* 8069ABAC  C0 86 19 40 */	lfs f4, lit_3938@l(r6)  /* 0x806A1940@l */
/* 8069ABB0  4B 97 62 C1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8069ABB4  93 DD 06 60 */	stw r30, 0x660(r29)
/* 8069ABB8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8069ABBC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8069ABC0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8069ABC4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8069ABC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8069ABCC  4B CC 76 5D */	bl _restgpr_29
/* 8069ABD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8069ABD4  7C 08 03 A6 */	mtlr r0
/* 8069ABD8  38 21 00 40 */	addi r1, r1, 0x40
/* 8069ABDC  4E 80 00 20 */	blr 
