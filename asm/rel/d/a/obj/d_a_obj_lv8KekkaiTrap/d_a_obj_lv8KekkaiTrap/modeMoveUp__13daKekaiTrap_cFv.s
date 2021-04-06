lbl_80C88138:
/* 80C88138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8813C  7C 08 02 A6 */	mflr r0
/* 80C88140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88148  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8814C  7C 7E 1B 78 */	mr r30, r3
/* 80C88150  3C 60 80 C9 */	lis r3, lit_3651@ha /* 0x80C884E4@ha */
/* 80C88154  3B E3 84 E4 */	addi r31, r3, lit_3651@l /* 0x80C884E4@l */
/* 80C88158  88 7E 05 B0 */	lbz r3, 0x5b0(r30)
/* 80C8815C  28 03 00 00 */	cmplwi r3, 0
/* 80C88160  41 82 00 10 */	beq lbl_80C88170
/* 80C88164  38 03 FF FF */	addi r0, r3, -1
/* 80C88168  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80C8816C  48 00 00 6C */	b lbl_80C881D8
lbl_80C88170:
/* 80C88170  3C 60 80 C9 */	lis r3, l_HIO@ha /* 0x80C8861C@ha */
/* 80C88174  38 63 86 1C */	addi r3, r3, l_HIO@l /* 0x80C8861C@l */
/* 80C88178  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C8817C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C88180  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C88184  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C88188  4B 5E 85 B9 */	bl cLib_chaseF__FPfff
/* 80C8818C  38 7E 04 F0 */	addi r3, r30, 0x4f0
/* 80C88190  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C88194  FC 40 08 90 */	fmr f2, f1
/* 80C88198  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C8819C  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80C881A0  4B 5E 77 DD */	bl cLib_addCalc__FPfffff
/* 80C881A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C881A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C881AC  40 82 00 2C */	bne lbl_80C881D8
/* 80C881B0  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C881B4  28 04 00 00 */	cmplwi r4, 0
/* 80C881B8  41 82 00 18 */	beq lbl_80C881D0
/* 80C881BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C881C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C881C4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C881C8  7F C5 F3 78 */	mr r5, r30
/* 80C881CC  4B 3E C8 3D */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_80C881D0:
/* 80C881D0  7F C3 F3 78 */	mr r3, r30
/* 80C881D4  4B FF FF 31 */	bl init_modeWait__13daKekaiTrap_cFv
lbl_80C881D8:
/* 80C881D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C881DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C881E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C881E4  7C 08 03 A6 */	mtlr r0
/* 80C881E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C881EC  4E 80 00 20 */	blr 
