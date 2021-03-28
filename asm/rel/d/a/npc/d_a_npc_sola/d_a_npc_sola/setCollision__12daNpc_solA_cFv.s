lbl_80AED9DC:
/* 80AED9DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AED9E0  7C 08 02 A6 */	mflr r0
/* 80AED9E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AED9E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AED9EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AED9F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AED9F4  7C 7F 1B 78 */	mr r31, r3
/* 80AED9F8  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AED9FC  28 00 00 00 */	cmplwi r0, 0
/* 80AEDA00  40 82 00 78 */	bne lbl_80AEDA78
/* 80AEDA04  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AEDA08  28 00 00 01 */	cmplwi r0, 1
/* 80AEDA0C  38 00 00 79 */	li r0, 0x79
/* 80AEDA10  40 82 00 08 */	bne lbl_80AEDA18
/* 80AEDA14  38 00 00 69 */	li r0, 0x69
lbl_80AEDA18:
/* 80AEDA18  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80AEDA1C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AEDA20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AEDA24  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AEDA28  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AEDA2C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AEDA30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AEDA34  3C 60 80 AF */	lis r3, m__18daNpc_solA_Param_c@ha
/* 80AEDA38  38 83 F1 00 */	addi r4, r3, m__18daNpc_solA_Param_c@l
/* 80AEDA3C  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 80AEDA40  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AEDA44  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80AEDA48  4B 78 17 B0 */	b SetH__8cM3dGCylFf
/* 80AEDA4C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AEDA50  FC 20 F8 90 */	fmr f1, f31
/* 80AEDA54  4B 78 17 AC */	b SetR__8cM3dGCylFf
/* 80AEDA58  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80AEDA5C  38 81 00 08 */	addi r4, r1, 8
/* 80AEDA60  4B 78 17 7C */	b SetC__8cM3dGCylFRC4cXyz
/* 80AEDA64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AEDA68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AEDA6C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AEDA70  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80AEDA74  4B 77 71 34 */	b Set__4cCcSFP8cCcD_Obj
lbl_80AEDA78:
/* 80AEDA78  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AEDA7C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80AEDA80  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AEDA84  7D 89 03 A6 */	mtctr r12
/* 80AEDA88  4E 80 04 21 */	bctrl 
/* 80AEDA8C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80AEDA90  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80AEDA94  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AEDA98  7D 89 03 A6 */	mtctr r12
/* 80AEDA9C  4E 80 04 21 */	bctrl 
/* 80AEDAA0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AEDAA4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AEDAA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEDAAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AEDAB0  7C 08 03 A6 */	mtlr r0
/* 80AEDAB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AEDAB8  4E 80 00 20 */	blr 
