lbl_807B6D00:
/* 807B6D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B6D04  7C 08 02 A6 */	mflr r0
/* 807B6D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B6D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B6D10  93 C1 00 08 */	stw r30, 8(r1)
/* 807B6D14  7C 7E 1B 78 */	mr r30, r3
/* 807B6D18  3C 60 80 7B */	lis r3, lit_3746@ha /* 0x807B7EB8@ha */
/* 807B6D1C  3B E3 7E B8 */	addi r31, r3, lit_3746@l /* 0x807B7EB8@l */
/* 807B6D20  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807B6D24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B6D28  FC 40 08 90 */	fmr f2, f1
/* 807B6D2C  4B AB 8D 55 */	bl cLib_addCalc0__FPfff
/* 807B6D30  7F C3 F3 78 */	mr r3, r30
/* 807B6D34  38 80 00 01 */	li r4, 1
/* 807B6D38  4B FF F1 F5 */	bl normal_move__FP15e_th_ball_classSc
/* 807B6D3C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807B6D40  4B 9A 87 B1 */	bl setLookPos__9daPy_py_cFP4cXyz
/* 807B6D44  38 7E 19 40 */	addi r3, r30, 0x1940
/* 807B6D48  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807B6D4C  4B AB 89 BD */	bl SetR__8cM3dGSphFf
/* 807B6D50  88 1E 1A 8D */	lbz r0, 0x1a8d(r30)
/* 807B6D54  7C 00 07 75 */	extsb. r0, r0
/* 807B6D58  40 82 00 58 */	bne lbl_807B6DB0
/* 807B6D5C  7F C3 F3 78 */	mr r3, r30
/* 807B6D60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B6D64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B6D68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807B6D6C  4B 86 3A 75 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807B6D70  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 807B6D74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B6D78  40 80 00 38 */	bge lbl_807B6DB0
/* 807B6D7C  38 00 00 35 */	li r0, 0x35
/* 807B6D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B6D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B6D88  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 807B6D8C  38 00 00 00 */	li r0, 0
/* 807B6D90  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 807B6D94  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 807B6D98  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 807B6D9C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 807B6DA0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 807B6DA4  41 82 00 0C */	beq lbl_807B6DB0
/* 807B6DA8  38 00 00 01 */	li r0, 1
/* 807B6DAC  98 1E 1A 8D */	stb r0, 0x1a8d(r30)
lbl_807B6DB0:
/* 807B6DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B6DB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B6DB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B6DBC  7C 08 03 A6 */	mtlr r0
/* 807B6DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 807B6DC4  4E 80 00 20 */	blr 
