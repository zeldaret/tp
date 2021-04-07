lbl_80136C18:
/* 80136C18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80136C1C  7C 08 02 A6 */	mflr r0
/* 80136C20  90 01 00 44 */	stw r0, 0x44(r1)
/* 80136C24  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80136C28  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80136C2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80136C30  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80136C34  7C 7F 1B 78 */	mr r31, r3
/* 80136C38  7C 9E 23 78 */	mr r30, r4
/* 80136C3C  2C 1E 00 02 */	cmpwi r30, 2
/* 80136C40  40 82 00 6C */	bne lbl_80136CAC
/* 80136C44  4B FD EF DD */	bl checkEventRun__9daAlink_cCFv
/* 80136C48  2C 03 00 00 */	cmpwi r3, 0
/* 80136C4C  40 82 00 10 */	bne lbl_80136C5C
/* 80136C50  7F E3 FB 78 */	mr r3, r31
/* 80136C54  38 80 00 08 */	li r4, 8
/* 80136C58  4B FA 08 4D */	bl setLandDamagePoint__9daAlink_cFi
lbl_80136C5C:
/* 80136C5C  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlDamFall_c0@ha /* 0x8038F374@ha */
/* 80136C60  38 63 F3 74 */	addi r3, r3, m__23daAlinkHIO_wlDamFall_c0@l /* 0x8038F374@l */
/* 80136C64  C3 E3 00 08 */	lfs f31, 8(r3)
/* 80136C68  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 80136C6C  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 80136C70  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 80136C74  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80136C78  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136C7C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80136C80  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80136C84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80136C88  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80136C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80136C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80136C94  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80136C98  38 80 00 05 */	li r4, 5
/* 80136C9C  38 A0 00 1F */	li r5, 0x1f
/* 80136CA0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80136CA4  4B F3 8D 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 80136CA8  48 00 00 68 */	b lbl_80136D10
lbl_80136CAC:
/* 80136CAC  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wlDamFall_c0@ha /* 0x8038F374@ha */
/* 80136CB0  38 84 F3 74 */	addi r4, r4, m__23daAlinkHIO_wlDamFall_c0@l /* 0x8038F374@l */
/* 80136CB4  C3 E4 00 34 */	lfs f31, 0x34(r4)
/* 80136CB8  A8 04 00 28 */	lha r0, 0x28(r4)
/* 80136CBC  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80136CC0  2C 1E 00 01 */	cmpwi r30, 1
/* 80136CC4  40 82 00 4C */	bne lbl_80136D10
/* 80136CC8  4B FD EF 59 */	bl checkEventRun__9daAlink_cCFv
/* 80136CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80136CD0  40 82 00 10 */	bne lbl_80136CE0
/* 80136CD4  7F E3 FB 78 */	mr r3, r31
/* 80136CD8  38 80 00 04 */	li r4, 4
/* 80136CDC  4B FA 07 C9 */	bl setLandDamagePoint__9daAlink_cFi
lbl_80136CE0:
/* 80136CE0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136CE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80136CE8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80136CEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80136CF0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80136CF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80136CF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80136CFC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80136D00  38 80 00 04 */	li r4, 4
/* 80136D04  38 A0 00 1F */	li r5, 0x1f
/* 80136D08  38 C1 00 08 */	addi r6, r1, 8
/* 80136D0C  4B F3 8D 19 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80136D10:
/* 80136D10  7F E3 FB 78 */	mr r3, r31
/* 80136D14  38 80 01 09 */	li r4, 0x109
/* 80136D18  4B F8 B2 55 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80136D1C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80136D20  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80136D24  2C 1E 00 00 */	cmpwi r30, 0
/* 80136D28  40 82 00 14 */	bne lbl_80136D3C
/* 80136D2C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80136D30  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80136D34  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 80136D38  48 00 00 3C */	b lbl_80136D74
lbl_80136D3C:
/* 80136D3C  7F E3 FB 78 */	mr r3, r31
/* 80136D40  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020030@ha */
/* 80136D44  38 84 00 30 */	addi r4, r4, 0x0030 /* 0x00020030@l */
/* 80136D48  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80136D4C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80136D50  7D 89 03 A6 */	mtctr r12
/* 80136D54  4E 80 04 21 */	bctrl 
/* 80136D58  7F E3 FB 78 */	mr r3, r31
/* 80136D5C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010040@ha */
/* 80136D60  38 84 00 40 */	addi r4, r4, 0x0040 /* 0x00010040@l */
/* 80136D64  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80136D68  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80136D6C  7D 89 03 A6 */	mtctr r12
/* 80136D70  4E 80 04 21 */	bctrl 
lbl_80136D74:
/* 80136D74  7F E3 FB 78 */	mr r3, r31
/* 80136D78  38 80 00 60 */	li r4, 0x60
/* 80136D7C  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlDamFall_c0@ha /* 0x8038F374@ha */
/* 80136D80  38 C5 F3 74 */	addi r6, r5, m__23daAlinkHIO_wlDamFall_c0@l /* 0x8038F374@l */
/* 80136D84  C0 26 00 04 */	lfs f1, 4(r6)
/* 80136D88  FC 40 F8 90 */	fmr f2, f31
/* 80136D8C  A8 A6 00 00 */	lha r5, 0(r6)
/* 80136D90  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 80136D94  4B FF 29 71 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 80136D98  7F E3 FB 78 */	mr r3, r31
/* 80136D9C  38 80 00 95 */	li r4, 0x95
/* 80136DA0  4B F7 8B 01 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80136DA4  38 00 00 00 */	li r0, 0
/* 80136DA8  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 80136DAC  38 00 00 04 */	li r0, 4
/* 80136DB0  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 80136DB4  7F E3 FB 78 */	mr r3, r31
/* 80136DB8  38 80 00 04 */	li r4, 4
/* 80136DBC  4B FE A4 05 */	bl setFootEffectProcType__9daAlink_cFi
/* 80136DC0  38 60 00 01 */	li r3, 1
/* 80136DC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80136DC8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80136DCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80136DD0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80136DD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80136DD8  7C 08 03 A6 */	mtlr r0
/* 80136DDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80136DE0  4E 80 00 20 */	blr 
