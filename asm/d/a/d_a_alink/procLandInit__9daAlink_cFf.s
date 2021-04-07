lbl_800C6F18:
/* 800C6F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C6F1C  7C 08 02 A6 */	mflr r0
/* 800C6F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C6F24  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800C6F28  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800C6F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C6F30  7C 7F 1B 78 */	mr r31, r3
/* 800C6F34  FF E0 08 90 */	fmr f31, f1
/* 800C6F38  38 80 00 19 */	li r4, 0x19
/* 800C6F3C  4B FF B0 31 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C6F40  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C6F44  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C6F48  7F E3 FB 78 */	mr r3, r31
/* 800C6F4C  38 80 00 33 */	li r4, 0x33
/* 800C6F50  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6F54  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6F58  38 A5 00 14 */	addi r5, r5, 0x14
/* 800C6F5C  4B FE 61 99 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C6F60  7F E3 FB 78 */	mr r3, r31
/* 800C6F64  48 01 CF BD */	bl checkGrabRooster__9daAlink_cFv
/* 800C6F68  2C 03 00 00 */	cmpwi r3, 0
/* 800C6F6C  41 82 00 10 */	beq lbl_800C6F7C
/* 800C6F70  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800C6F74  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 800C6F78  48 00 00 20 */	b lbl_800C6F98
lbl_800C6F7C:
/* 800C6F7C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800C6F80  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C6F84  41 82 00 14 */	beq lbl_800C6F98
/* 800C6F88  C0 22 95 F0 */	lfs f1, lit_28286(r2)
/* 800C6F8C  C0 1F 1F DC */	lfs f0, 0x1fdc(r31)
/* 800C6F90  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C6F94  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
lbl_800C6F98:
/* 800C6F98  38 00 00 04 */	li r0, 4
/* 800C6F9C  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C6FA0  7F E3 FB 78 */	mr r3, r31
/* 800C6FA4  38 80 00 04 */	li r4, 4
/* 800C6FA8  48 05 A2 19 */	bl setFootEffectProcType__9daAlink_cFi
/* 800C6FAC  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800C6FB0  60 00 00 30 */	ori r0, r0, 0x30
/* 800C6FB4  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800C6FB8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C6FBC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C6FC0  D3 FF 34 78 */	stfs f31, 0x3478(r31)
/* 800C6FC4  38 60 00 01 */	li r3, 1
/* 800C6FC8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800C6FCC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800C6FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C6FD8  7C 08 03 A6 */	mtlr r0
/* 800C6FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 800C6FE0  4E 80 00 20 */	blr 
