lbl_800D3DD8:
/* 800D3DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D3DDC  7C 08 02 A6 */	mflr r0
/* 800D3DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D3DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D3DE8  7C 7F 1B 78 */	mr r31, r3
/* 800D3DEC  38 80 00 24 */	li r4, 0x24
/* 800D3DF0  4B FE E1 7D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D3DF4  7F E3 FB 78 */	mr r3, r31
/* 800D3DF8  48 00 31 E9 */	bl checkCutLandDamage__9daAlink_cFv
/* 800D3DFC  7F E3 FB 78 */	mr r3, r31
/* 800D3E00  38 80 00 6E */	li r4, 0x6e
/* 800D3E04  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutFnJU_c0@ha
/* 800D3E08  38 A5 DA EC */	addi r5, r5, m__21daAlinkHIO_cutFnJU_c0@l
/* 800D3E0C  38 A5 00 14 */	addi r5, r5, 0x14
/* 800D3E10  4B FD 92 E5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D3E14  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D3E18  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D3E1C  7F E3 FB 78 */	mr r3, r31
/* 800D3E20  38 80 00 1E */	li r4, 0x1e
/* 800D3E24  4B FF D7 09 */	bl setCutType__9daAlink_cFUc
/* 800D3E28  38 00 00 04 */	li r0, 4
/* 800D3E2C  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800D3E30  7F E3 FB 78 */	mr r3, r31
/* 800D3E34  38 80 00 02 */	li r4, 2
/* 800D3E38  48 04 D3 89 */	bl setFootEffectProcType__9daAlink_cFi
/* 800D3E3C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800D3E40  60 00 00 30 */	ori r0, r0, 0x30
/* 800D3E44  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800D3E48  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 800D3E4C  28 00 00 03 */	cmplwi r0, 3
/* 800D3E50  40 82 00 20 */	bne lbl_800D3E70
/* 800D3E54  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutFnJU_c0@ha
/* 800D3E58  38 63 DA EC */	addi r3, r3, m__21daAlinkHIO_cutFnJU_c0@l
/* 800D3E5C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800D3E60  D0 1F 34 84 */	stfs f0, 0x3484(r31)
/* 800D3E64  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 800D3E68  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800D3E6C  48 00 00 1C */	b lbl_800D3E88
lbl_800D3E70:
/* 800D3E70  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutFnJU_c0@ha
/* 800D3E74  38 63 DA EC */	addi r3, r3, m__21daAlinkHIO_cutFnJU_c0@l
/* 800D3E78  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800D3E7C  D0 1F 34 84 */	stfs f0, 0x3484(r31)
/* 800D3E80  A8 03 00 28 */	lha r0, 0x28(r3)
/* 800D3E84  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800D3E88:
/* 800D3E88  38 00 00 00 */	li r0, 0
/* 800D3E8C  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800D3E90  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 800D3E94  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)
/* 800D3E98  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800D3E9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D3EA0  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800D3EA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D3EA8  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800D3EAC  7F E3 FB 78 */	mr r3, r31
/* 800D3EB0  4B FF ED 4D */	bl initCutAtnActorSearch__9daAlink_cFv
/* 800D3EB4  38 60 00 01 */	li r3, 1
/* 800D3EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D3EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D3EC0  7C 08 03 A6 */	mtlr r0
/* 800D3EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D3EC8  4E 80 00 20 */	blr 
