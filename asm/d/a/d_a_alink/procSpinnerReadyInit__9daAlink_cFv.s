lbl_8010DC64:
/* 8010DC64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010DC68  7C 08 02 A6 */	mflr r0
/* 8010DC6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010DC70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010DC74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010DC78  7C 7E 1B 78 */	mr r30, r3
/* 8010DC7C  38 00 00 00 */	li r0, 0
/* 8010DC80  90 01 00 08 */	stw r0, 8(r1)
/* 8010DC84  38 60 00 F2 */	li r3, 0xf2
/* 8010DC88  38 80 00 00 */	li r4, 0
/* 8010DC8C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8010DC90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8010DC94  7C 06 07 74 */	extsb r6, r0
/* 8010DC98  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 8010DC9C  39 00 00 00 */	li r8, 0
/* 8010DCA0  39 20 FF FF */	li r9, -1
/* 8010DCA4  39 40 00 00 */	li r10, 0
/* 8010DCA8  4B F0 C1 5D */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8010DCAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8010DCB0  40 82 00 0C */	bne lbl_8010DCBC
/* 8010DCB4  38 60 00 00 */	li r3, 0
/* 8010DCB8  48 00 00 FC */	b lbl_8010DDB4
lbl_8010DCBC:
/* 8010DCBC  7F C3 F3 78 */	mr r3, r30
/* 8010DCC0  38 80 00 A4 */	li r4, 0xa4
/* 8010DCC4  4B FB 42 A9 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010DCC8  38 7E 28 14 */	addi r3, r30, 0x2814
/* 8010DCCC  7F E4 FB 78 */	mr r4, r31
/* 8010DCD0  48 05 0F E9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8010DCD4  7F C3 F3 78 */	mr r3, r30
/* 8010DCD8  38 80 00 D7 */	li r4, 0xd7
/* 8010DCDC  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha
/* 8010DCE0  38 C5 E1 1C */	addi r6, r5, m__23daAlinkHIO_smallJump_c0@l
/* 8010DCE4  C0 26 00 04 */	lfs f1, 4(r6)
/* 8010DCE8  C0 42 93 44 */	lfs f2, lit_7977(r2)
/* 8010DCEC  A8 A6 00 00 */	lha r5, 0(r6)
/* 8010DCF0  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8010DCF4  4B F9 F3 19 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 8010DCF8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010DCFC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010DD00  7F C3 F3 78 */	mr r3, r30
/* 8010DD04  38 80 00 00 */	li r4, 0
/* 8010DD08  4B FD 48 79 */	bl setHeavyBoots__9daAlink_cFi
/* 8010DD0C  C0 02 93 28 */	lfs f0, lit_7451(r2)
/* 8010DD10  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8010DD14  7F C3 F3 78 */	mr r3, r30
/* 8010DD18  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010005@ha */
/* 8010DD1C  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00010005@l */
/* 8010DD20  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010DD24  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8010DD28  7D 89 03 A6 */	mtctr r12
/* 8010DD2C  4E 80 04 21 */	bctrl 
/* 8010DD30  7F C3 F3 78 */	mr r3, r30
/* 8010DD34  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020076@ha */
/* 8010DD38  38 84 00 76 */	addi r4, r4, 0x0076 /* 0x00020076@l */
/* 8010DD3C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010DD40  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8010DD44  7D 89 03 A6 */	mtctr r12
/* 8010DD48  4E 80 04 21 */	bctrl 
/* 8010DD4C  38 00 00 0F */	li r0, 0xf
/* 8010DD50  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8010DD54  7F C3 F3 78 */	mr r3, r30
/* 8010DD58  38 80 00 01 */	li r4, 1
/* 8010DD5C  38 A0 00 01 */	li r5, 1
/* 8010DD60  4B FB 35 7D */	bl deleteEquipItem__9daAlink_cFii
/* 8010DD64  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010DD68  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8010DD6C  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8010DD70  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8010DD74  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 8010DD78  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010DD7C  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 8010DD80  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010DD84  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 8010DD88  C0 1E 35 8C */	lfs f0, 0x358c(r30)
/* 8010DD8C  D0 1E 33 B0 */	stfs f0, 0x33b0(r30)
/* 8010DD90  C0 03 00 00 */	lfs f0, 0(r3)
/* 8010DD94  D0 1E 34 D4 */	stfs f0, 0x34d4(r30)
/* 8010DD98  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010DD9C  D0 1E 34 D8 */	stfs f0, 0x34d8(r30)
/* 8010DDA0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010DDA4  D0 1E 34 DC */	stfs f0, 0x34dc(r30)
/* 8010DDA8  38 00 00 08 */	li r0, 8
/* 8010DDAC  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8010DDB0  38 60 00 01 */	li r3, 1
lbl_8010DDB4:
/* 8010DDB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010DDB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010DDBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010DDC0  7C 08 03 A6 */	mtlr r0
/* 8010DDC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8010DDC8  4E 80 00 20 */	blr 
