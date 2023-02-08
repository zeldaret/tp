lbl_80D38A68:
/* 80D38A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38A6C  7C 08 02 A6 */	mflr r0
/* 80D38A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D38A78  7C 7F 1B 78 */	mr r31, r3
/* 80D38A7C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D38A80  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 80D38A84  88 03 05 B0 */	lbz r0, 0x5b0(r3)
/* 80D38A88  28 00 00 FF */	cmplwi r0, 0xff
/* 80D38A8C  40 82 00 0C */	bne lbl_80D38A98
/* 80D38A90  38 00 00 00 */	li r0, 0
/* 80D38A94  98 1F 05 B0 */	stb r0, 0x5b0(r31)
lbl_80D38A98:
/* 80D38A98  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D38A9C  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D39284@ha */
/* 80D38AA0  38 84 92 84 */	addi r4, r4, l_arcName@l /* 0x80D39284@l */
/* 80D38AA4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D38AA8  4B 2F 44 15 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D38AAC  7C 60 1B 78 */	mr r0, r3
/* 80D38AB0  2C 00 00 04 */	cmpwi r0, 4
/* 80D38AB4  40 82 00 38 */	bne lbl_80D38AEC
/* 80D38AB8  7F E3 FB 78 */	mr r3, r31
/* 80D38ABC  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D39284@ha */
/* 80D38AC0  38 84 92 84 */	addi r4, r4, l_arcName@l /* 0x80D39284@l */
/* 80D38AC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D38AC8  38 A0 00 0C */	li r5, 0xc
/* 80D38ACC  38 C0 00 00 */	li r6, 0
/* 80D38AD0  38 E0 0E E0 */	li r7, 0xee0
/* 80D38AD4  39 00 00 00 */	li r8, 0
/* 80D38AD8  4B 33 FC E5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D38ADC  7C 60 1B 78 */	mr r0, r3
/* 80D38AE0  2C 00 00 05 */	cmpwi r0, 5
/* 80D38AE4  40 82 00 08 */	bne lbl_80D38AEC
/* 80D38AE8  48 00 00 08 */	b lbl_80D38AF0
lbl_80D38AEC:
/* 80D38AEC  7C 03 03 78 */	mr r3, r0
lbl_80D38AF0:
/* 80D38AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D38AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38AF8  7C 08 03 A6 */	mtlr r0
/* 80D38AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38B00  4E 80 00 20 */	blr 
