lbl_80773B24:
/* 80773B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80773B28  7C 08 02 A6 */	mflr r0
/* 80773B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80773B30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80773B34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80773B38  7C 7E 1B 78 */	mr r30, r3
/* 80773B3C  3C 60 80 78 */	lis r3, lit_4018@ha /* 0x80779DFC@ha */
/* 80773B40  3B E3 9D FC */	addi r31, r3, lit_4018@l /* 0x80779DFC@l */
/* 80773B44  38 00 00 15 */	li r0, 0x15
/* 80773B48  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80773B4C  38 00 00 00 */	li r0, 0
/* 80773B50  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80773B54  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80773B58  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 80773B5C  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 80773B60  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 80773B64  EC 01 00 2A */	fadds f0, f1, f0
/* 80773B68  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80773B6C  88 1E 0A 8C */	lbz r0, 0xa8c(r30)
/* 80773B70  2C 00 00 02 */	cmpwi r0, 2
/* 80773B74  40 82 00 8C */	bne lbl_80773C00
/* 80773B78  80 1E 0A 5C */	lwz r0, 0xa5c(r30)
/* 80773B7C  90 01 00 08 */	stw r0, 8(r1)
/* 80773B80  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80773B84  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80773B88  38 81 00 08 */	addi r4, r1, 8
/* 80773B8C  4B 8A 5C 6D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80773B90  28 03 00 00 */	cmplwi r3, 0
/* 80773B94  41 82 00 34 */	beq lbl_80773BC8
/* 80773B98  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80773B9C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80773BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80773BA4  4C 41 13 82 */	cror 2, 1, 2
/* 80773BA8  40 82 00 20 */	bne lbl_80773BC8
/* 80773BAC  D0 3E 0A BC */	stfs f1, 0xabc(r30)
/* 80773BB0  C0 3E 0A BC */	lfs f1, 0xabc(r30)
/* 80773BB4  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80773BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80773BBC  40 81 00 20 */	ble lbl_80773BDC
/* 80773BC0  D0 1E 0A BC */	stfs f0, 0xabc(r30)
/* 80773BC4  48 00 00 18 */	b lbl_80773BDC
lbl_80773BC8:
/* 80773BC8  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x8077A884@ha */
/* 80773BCC  38 63 A8 84 */	addi r3, r3, l_HIO@l /* 0x8077A884@l */
/* 80773BD0  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80773BD4  FC 00 00 50 */	fneg f0, f0
/* 80773BD8  D0 1E 0A BC */	stfs f0, 0xabc(r30)
lbl_80773BDC:
/* 80773BDC  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80773BE0  4B AF 3D AD */	bl cM_rndFX__Ff
/* 80773BE4  FC 00 08 1E */	fctiwz f0, f1
/* 80773BE8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80773BEC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80773BF0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80773BF4  7C 00 1A 14 */	add r0, r0, r3
/* 80773BF8  B0 1E 0A DE */	sth r0, 0xade(r30)
/* 80773BFC  48 00 00 18 */	b lbl_80773C14
lbl_80773C00:
/* 80773C00  A8 1E 13 16 */	lha r0, 0x1316(r30)
/* 80773C04  B0 1E 0A DE */	sth r0, 0xade(r30)
/* 80773C08  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80773C0C  FC 00 00 50 */	fneg f0, f0
/* 80773C10  D0 1E 0A BC */	stfs f0, 0xabc(r30)
lbl_80773C14:
/* 80773C14  80 7E 13 1C */	lwz r3, 0x131c(r30)
/* 80773C18  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80773C1C  41 82 00 28 */	beq lbl_80773C44
/* 80773C20  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80773C24  4B AF 3D 69 */	bl cM_rndFX__Ff
/* 80773C28  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80773C2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80773C30  FC 00 00 1E */	fctiwz f0, f0
/* 80773C34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80773C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80773C3C  B0 1E 0A C6 */	sth r0, 0xac6(r30)
/* 80773C40  48 00 00 CC */	b lbl_80773D0C
lbl_80773C44:
/* 80773C44  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 80773C48  41 82 00 2C */	beq lbl_80773C74
/* 80773C4C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80773C50  4B AF 3D 3D */	bl cM_rndFX__Ff
/* 80773C54  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80773C58  EC 00 08 2A */	fadds f0, f0, f1
/* 80773C5C  FC 00 00 50 */	fneg f0, f0
/* 80773C60  FC 00 00 1E */	fctiwz f0, f0
/* 80773C64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80773C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80773C6C  B0 1E 0A C6 */	sth r0, 0xac6(r30)
/* 80773C70  48 00 00 9C */	b lbl_80773D0C
lbl_80773C74:
/* 80773C74  88 1E 0A 8C */	lbz r0, 0xa8c(r30)
/* 80773C78  7C 00 07 75 */	extsb. r0, r0
/* 80773C7C  41 82 00 20 */	beq lbl_80773C9C
/* 80773C80  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80773C84  4B AF 3D 09 */	bl cM_rndFX__Ff
/* 80773C88  FC 00 08 1E */	fctiwz f0, f1
/* 80773C8C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80773C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80773C94  B0 1E 0A C6 */	sth r0, 0xac6(r30)
/* 80773C98  48 00 00 74 */	b lbl_80773D0C
lbl_80773C9C:
/* 80773C9C  80 7E 13 0C */	lwz r3, 0x130c(r30)
/* 80773CA0  A8 03 00 08 */	lha r0, 8(r3)
/* 80773CA4  2C 00 00 EF */	cmpwi r0, 0xef
/* 80773CA8  40 82 00 4C */	bne lbl_80773CF4
/* 80773CAC  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80773CB0  4B AF 3C DD */	bl cM_rndFX__Ff
/* 80773CB4  FC 00 08 1E */	fctiwz f0, f1
/* 80773CB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80773CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80773CC0  B0 1E 0A C6 */	sth r0, 0xac6(r30)
/* 80773CC4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80773CC8  4B AF 3C 8D */	bl cM_rndF__Ff
/* 80773CCC  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80773CD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80773CD4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80773CD8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80773CDC  80 7E 13 0C */	lwz r3, 0x130c(r30)
/* 80773CE0  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 80773CE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80773CE8  FC 00 00 50 */	fneg f0, f0
/* 80773CEC  D0 1E 0A BC */	stfs f0, 0xabc(r30)
/* 80773CF0  48 00 00 1C */	b lbl_80773D0C
lbl_80773CF4:
/* 80773CF4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80773CF8  4B AF 3C 95 */	bl cM_rndFX__Ff
/* 80773CFC  FC 00 08 1E */	fctiwz f0, f1
/* 80773D00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80773D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80773D08  B0 1E 0A C6 */	sth r0, 0xac6(r30)
lbl_80773D0C:
/* 80773D0C  38 00 00 00 */	li r0, 0
/* 80773D10  98 1E 0A C8 */	stb r0, 0xac8(r30)
/* 80773D14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80773D18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80773D1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80773D20  7C 08 03 A6 */	mtlr r0
/* 80773D24  38 21 00 20 */	addi r1, r1, 0x20
/* 80773D28  4E 80 00 20 */	blr 
