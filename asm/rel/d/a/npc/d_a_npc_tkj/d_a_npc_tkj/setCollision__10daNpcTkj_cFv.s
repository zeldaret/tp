lbl_80574770:
/* 80574770  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80574774  7C 08 02 A6 */	mflr r0
/* 80574778  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057477C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80574780  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80574784  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80574788  7C 7F 1B 78 */	mr r31, r3
/* 8057478C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80574790  28 00 00 00 */	cmplwi r0, 0
/* 80574794  40 82 00 78 */	bne lbl_8057480C
/* 80574798  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 8057479C  28 00 00 01 */	cmplwi r0, 1
/* 805747A0  38 00 00 79 */	li r0, 0x79
/* 805747A4  40 82 00 08 */	bne lbl_805747AC
/* 805747A8  38 00 00 69 */	li r0, 0x69
lbl_805747AC:
/* 805747AC  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 805747B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805747B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805747B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805747BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805747C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805747C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805747C8  3C 60 80 57 */	lis r3, m__17daNpc_Tkj_Param_c@ha
/* 805747CC  38 83 65 98 */	addi r4, r3, m__17daNpc_Tkj_Param_c@l
/* 805747D0  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 805747D4  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 805747D8  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 805747DC  4B CF AA 1C */	b SetH__8cM3dGCylFf
/* 805747E0  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 805747E4  FC 20 F8 90 */	fmr f1, f31
/* 805747E8  4B CF AA 18 */	b SetR__8cM3dGCylFf
/* 805747EC  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 805747F0  38 81 00 08 */	addi r4, r1, 8
/* 805747F4  4B CF A9 E8 */	b SetC__8cM3dGCylFRC4cXyz
/* 805747F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805747FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80574800  38 63 23 3C */	addi r3, r3, 0x233c
/* 80574804  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80574808  4B CF 03 A0 */	b Set__4cCcSFP8cCcD_Obj
lbl_8057480C:
/* 8057480C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80574810  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80574814  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80574818  7D 89 03 A6 */	mtctr r12
/* 8057481C  4E 80 04 21 */	bctrl 
/* 80574820  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80574824  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80574828  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8057482C  7D 89 03 A6 */	mtctr r12
/* 80574830  4E 80 04 21 */	bctrl 
/* 80574834  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80574838  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8057483C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80574840  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80574844  7C 08 03 A6 */	mtlr r0
/* 80574848  38 21 00 30 */	addi r1, r1, 0x30
/* 8057484C  4E 80 00 20 */	blr 
