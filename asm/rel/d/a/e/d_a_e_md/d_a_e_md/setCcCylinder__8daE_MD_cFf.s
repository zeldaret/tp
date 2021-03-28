lbl_80708E70:
/* 80708E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80708E74  7C 08 02 A6 */	mflr r0
/* 80708E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80708E7C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80708E80  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80708E84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80708E88  7C 7F 1B 78 */	mr r31, r3
/* 80708E8C  FF E0 08 90 */	fmr f31, f1
/* 80708E90  38 7F 0A 10 */	addi r3, r31, 0xa10
/* 80708E94  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80708E98  4B B6 63 44 */	b SetC__8cM3dGCylFRC4cXyz
/* 80708E9C  38 7F 0A 10 */	addi r3, r31, 0xa10
/* 80708EA0  3C 80 80 71 */	lis r4, lit_3776@ha
/* 80708EA4  C0 24 A5 30 */	lfs f1, lit_3776@l(r4)
/* 80708EA8  4B B6 63 58 */	b SetR__8cM3dGCylFf
/* 80708EAC  38 7F 0A 10 */	addi r3, r31, 0xa10
/* 80708EB0  FC 20 F8 90 */	fmr f1, f31
/* 80708EB4  4B B6 63 44 */	b SetH__8cM3dGCylFf
/* 80708EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80708EBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80708EC0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80708EC4  38 9F 08 EC */	addi r4, r31, 0x8ec
/* 80708EC8  4B B5 BC E0 */	b Set__4cCcSFP8cCcD_Obj
/* 80708ECC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80708ED0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80708ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80708ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80708EDC  7C 08 03 A6 */	mtlr r0
/* 80708EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80708EE4  4E 80 00 20 */	blr 
