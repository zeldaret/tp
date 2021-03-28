lbl_80C00EFC:
/* 80C00EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C00F00  7C 08 02 A6 */	mflr r0
/* 80C00F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C00F08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C00F0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C00F10  7C 7E 1B 78 */	mr r30, r3
/* 80C00F14  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C00F18  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l
/* 80C00F1C  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 80C00F20  38 80 00 00 */	li r4, 0
/* 80C00F24  B0 83 04 DC */	sth r4, 0x4dc(r3)
/* 80C00F28  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80C00F2C  B0 83 04 E0 */	sth r4, 0x4e0(r3)
/* 80C00F30  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80C00F34  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80C00F38  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80C00F3C  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80C00F40  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80C00F44  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80C00F48  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80C00F4C  B0 03 09 1A */	sth r0, 0x91a(r3)
/* 80C00F50  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80C00F54  B0 03 09 1C */	sth r0, 0x91c(r3)
/* 80C00F58  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80C00F5C  B0 03 09 1E */	sth r0, 0x91e(r3)
/* 80C00F60  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C00F64  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C00F68  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80C00F6C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80C00F70  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80C00F74  38 00 FF FF */	li r0, -1
/* 80C00F78  B0 03 08 9A */	sth r0, 0x89a(r3)
/* 80C00F7C  90 03 0A 9C */	stw r0, 0xa9c(r3)
/* 80C00F80  90 83 0A A0 */	stw r4, 0xaa0(r3)
/* 80C00F84  38 00 00 01 */	li r0, 1
/* 80C00F88  98 03 0A 8C */	stb r0, 0xa8c(r3)
/* 80C00F8C  88 03 08 44 */	lbz r0, 0x844(r3)
/* 80C00F90  28 00 00 00 */	cmplwi r0, 0
/* 80C00F94  41 82 00 10 */	beq lbl_80C00FA4
/* 80C00F98  38 80 00 00 */	li r4, 0
/* 80C00F9C  48 00 1B 39 */	bl setLookMode__11daObj_GrA_cFi
/* 80C00FA0  48 00 00 0C */	b lbl_80C00FAC
lbl_80C00FA4:
/* 80C00FA4  38 80 00 01 */	li r4, 1
/* 80C00FA8  48 00 1B 2D */	bl setLookMode__11daObj_GrA_cFi
lbl_80C00FAC:
/* 80C00FAC  3C 60 80 C1 */	lis r3, lit_4591@ha
/* 80C00FB0  38 83 00 5C */	addi r4, r3, lit_4591@l
/* 80C00FB4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C00FB8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C00FBC  90 61 00 08 */	stw r3, 8(r1)
/* 80C00FC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C00FC4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C00FC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C00FCC  7F C3 F3 78 */	mr r3, r30
/* 80C00FD0  38 81 00 08 */	addi r4, r1, 8
/* 80C00FD4  48 00 09 21 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C00FD8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C00FDC  D0 1E 0A 94 */	stfs f0, 0xa94(r30)
/* 80C00FE0  D0 1E 0A 98 */	stfs f0, 0xa98(r30)
/* 80C00FE4  38 7F 00 00 */	addi r3, r31, 0
/* 80C00FE8  A8 03 00 10 */	lha r0, 0x10(r3)
/* 80C00FEC  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80C00FF0  7F C3 F3 78 */	mr r3, r30
/* 80C00FF4  48 00 1A 75 */	bl ppMoveInit__11daObj_GrA_cFv
/* 80C00FF8  80 1E 10 9C */	lwz r0, 0x109c(r30)
/* 80C00FFC  7C 00 00 F8 */	nor r0, r0, r0
/* 80C01000  90 1E 1F BC */	stw r0, 0x1fbc(r30)
/* 80C01004  38 80 00 00 */	li r4, 0
/* 80C01008  90 9E 0A AC */	stw r4, 0xaac(r30)
/* 80C0100C  98 9E 1F E9 */	stb r4, 0x1fe9(r30)
/* 80C01010  90 9E 1F EC */	stw r4, 0x1fec(r30)
/* 80C01014  38 60 FF FF */	li r3, -1
/* 80C01018  90 7E 1F E4 */	stw r3, 0x1fe4(r30)
/* 80C0101C  90 9E 1F F0 */	stw r4, 0x1ff0(r30)
/* 80C01020  98 9E 1F F4 */	stb r4, 0x1ff4(r30)
/* 80C01024  90 7E 20 00 */	stw r3, 0x2000(r30)
/* 80C01028  B0 9E 20 54 */	sth r4, 0x2054(r30)
/* 80C0102C  B0 9E 20 56 */	sth r4, 0x2056(r30)
/* 80C01030  98 9E 20 04 */	stb r4, 0x2004(r30)
/* 80C01034  98 9E 20 05 */	stb r4, 0x2005(r30)
/* 80C01038  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0103C  D0 1E 20 08 */	stfs f0, 0x2008(r30)
/* 80C01040  98 9E 1F C4 */	stb r4, 0x1fc4(r30)
/* 80C01044  B0 9E 1F D8 */	sth r4, 0x1fd8(r30)
/* 80C01048  98 9E 20 31 */	stb r4, 0x2031(r30)
/* 80C0104C  90 9E 15 20 */	stw r4, 0x1520(r30)
/* 80C01050  38 00 00 03 */	li r0, 3
/* 80C01054  7C 09 03 A6 */	mtctr r0
lbl_80C01058:
/* 80C01058  38 04 20 20 */	addi r0, r4, 0x2020
/* 80C0105C  7C 7E 01 2E */	stwx r3, r30, r0
/* 80C01060  38 84 00 04 */	addi r4, r4, 4
/* 80C01064  42 00 FF F4 */	bdnz lbl_80C01058
/* 80C01068  38 00 00 00 */	li r0, 0
/* 80C0106C  98 1E 20 1D */	stb r0, 0x201d(r30)
/* 80C01070  98 1E 20 1C */	stb r0, 0x201c(r30)
/* 80C01074  98 1E 20 14 */	stb r0, 0x2014(r30)
/* 80C01078  90 1E 1F DC */	stw r0, 0x1fdc(r30)
/* 80C0107C  98 1E 20 32 */	stb r0, 0x2032(r30)
/* 80C01080  B0 1E 20 48 */	sth r0, 0x2048(r30)
/* 80C01084  7F C3 F3 78 */	mr r3, r30
/* 80C01088  38 80 00 00 */	li r4, 0
/* 80C0108C  38 BF 00 00 */	addi r5, r31, 0
/* 80C01090  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C01094  48 00 06 F9 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C01098  7F C3 F3 78 */	mr r3, r30
/* 80C0109C  38 80 00 00 */	li r4, 0
/* 80C010A0  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C010A4  48 00 07 09 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C010A8  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80C010AC  38 80 00 00 */	li r4, 0
/* 80C010B0  4B 54 C7 6C */	b entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C010B4  38 00 00 00 */	li r0, 0
/* 80C010B8  90 1E 20 9C */	stw r0, 0x209c(r30)
/* 80C010BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C010C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C010C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C010C8  7C 08 03 A6 */	mtlr r0
/* 80C010CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C010D0  4E 80 00 20 */	blr 
