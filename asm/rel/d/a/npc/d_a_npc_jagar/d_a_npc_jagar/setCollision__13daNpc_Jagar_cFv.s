lbl_80A1607C:
/* 80A1607C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A16080  7C 08 02 A6 */	mflr r0
/* 80A16084  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A16088  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A1608C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A16090  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A16094  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A16098  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1609C  7C 7F 1B 78 */	mr r31, r3
/* 80A160A0  3C 60 80 A2 */	lis r3, m__19daNpc_Jagar_Param_c@ha
/* 80A160A4  38 83 A3 30 */	addi r4, r3, m__19daNpc_Jagar_Param_c@l
/* 80A160A8  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80A160AC  28 00 00 00 */	cmplwi r0, 0
/* 80A160B0  40 82 00 F0 */	bne lbl_80A161A0
/* 80A160B4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A160B8  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A160BC  38 A0 00 1F */	li r5, 0x1f
/* 80A160C0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A160C4  28 00 00 00 */	cmplwi r0, 0
/* 80A160C8  41 82 00 10 */	beq lbl_80A160D8
/* 80A160CC  38 60 00 00 */	li r3, 0
/* 80A160D0  38 A0 00 00 */	li r5, 0
/* 80A160D4  48 00 00 18 */	b lbl_80A160EC
lbl_80A160D8:
/* 80A160D8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A160DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A160E0  41 82 00 0C */	beq lbl_80A160EC
/* 80A160E4  38 60 00 00 */	li r3, 0
/* 80A160E8  38 A0 00 00 */	li r5, 0
lbl_80A160EC:
/* 80A160EC  38 00 00 79 */	li r0, 0x79
/* 80A160F0  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80A160F4  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 80A160F8  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80A160FC  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80A16100  60 00 00 04 */	ori r0, r0, 4
/* 80A16104  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80A16108  C0 04 00 C0 */	lfs f0, 0xc0(r4)
/* 80A1610C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A16110  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A16114  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A16118  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80A1611C  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80A16120  88 1F 10 04 */	lbz r0, 0x1004(r31)
/* 80A16124  28 00 00 02 */	cmplwi r0, 2
/* 80A16128  40 82 00 0C */	bne lbl_80A16134
/* 80A1612C  C3 E4 01 18 */	lfs f31, 0x118(r4)
/* 80A16130  C3 C4 01 1C */	lfs f30, 0x11c(r4)
lbl_80A16134:
/* 80A16134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A16138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A1613C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80A16140  4B 5F 62 9C */	b mDoMtx_YrotS__FPA4_fs
/* 80A16144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A16148  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A1614C  38 81 00 08 */	addi r4, r1, 8
/* 80A16150  7C 85 23 78 */	mr r5, r4
/* 80A16154  4B 93 0C 18 */	b PSMTXMultVec
/* 80A16158  38 61 00 08 */	addi r3, r1, 8
/* 80A1615C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A16160  7C 65 1B 78 */	mr r5, r3
/* 80A16164  4B 93 0F 2C */	b PSVECAdd
/* 80A16168  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A1616C  FC 20 F8 90 */	fmr f1, f31
/* 80A16170  4B 85 90 88 */	b SetH__8cM3dGCylFf
/* 80A16174  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A16178  FC 20 F0 90 */	fmr f1, f30
/* 80A1617C  4B 85 90 84 */	b SetR__8cM3dGCylFf
/* 80A16180  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A16184  38 81 00 08 */	addi r4, r1, 8
/* 80A16188  4B 85 90 54 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A1618C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A16190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A16194  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A16198  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A1619C  4B 84 EA 0C */	b Set__4cCcSFP8cCcD_Obj
lbl_80A161A0:
/* 80A161A0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A161A4  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A161A8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A161AC  7D 89 03 A6 */	mtctr r12
/* 80A161B0  4E 80 04 21 */	bctrl 
/* 80A161B4  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A161B8  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A161BC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A161C0  7D 89 03 A6 */	mtctr r12
/* 80A161C4  4E 80 04 21 */	bctrl 
/* 80A161C8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A161CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A161D0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A161D4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A161D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A161DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A161E0  7C 08 03 A6 */	mtlr r0
/* 80A161E4  38 21 00 40 */	addi r1, r1, 0x40
/* 80A161E8  4E 80 00 20 */	blr 
