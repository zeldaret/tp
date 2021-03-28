lbl_80096EDC:
/* 80096EDC  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80096EE0  7C 08 02 A6 */	mflr r0
/* 80096EE4  90 01 01 54 */	stw r0, 0x154(r1)
/* 80096EE8  39 61 01 50 */	addi r11, r1, 0x150
/* 80096EEC  48 2C B2 F1 */	bl _savegpr_29
/* 80096EF0  7C 7E 1B 78 */	mr r30, r3
/* 80096EF4  3B FE 03 E8 */	addi r31, r30, 0x3e8
/* 80096EF8  3C 80 80 38 */	lis r4, lit_11437@ha
/* 80096EFC  38 A4 AA E4 */	addi r5, r4, lit_11437@l
/* 80096F00  80 85 00 00 */	lwz r4, 0(r5)
/* 80096F04  80 05 00 04 */	lwz r0, 4(r5)
/* 80096F08  90 81 01 14 */	stw r4, 0x114(r1)
/* 80096F0C  90 01 01 18 */	stw r0, 0x118(r1)
/* 80096F10  80 85 00 08 */	lwz r4, 8(r5)
/* 80096F14  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80096F18  90 81 01 1C */	stw r4, 0x11c(r1)
/* 80096F1C  90 01 01 20 */	stw r0, 0x120(r1)
/* 80096F20  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80096F24  28 00 00 00 */	cmplwi r0, 0
/* 80096F28  40 82 03 30 */	bne lbl_80097258
/* 80096F2C  38 00 00 01 */	li r0, 1
/* 80096F30  98 1E 01 58 */	stb r0, 0x158(r30)
/* 80096F34  7F E4 FB 78 */	mr r4, r31
/* 80096F38  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80096F3C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80096F40  4B FF 1D 71 */	bl getEvIntData__9dCamera_cFPiPc
/* 80096F44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096F48  40 82 00 0C */	bne lbl_80096F54
/* 80096F4C  38 60 00 01 */	li r3, 1
/* 80096F50  48 00 07 2C */	b lbl_8009767C
lbl_80096F54:
/* 80096F54  7F C3 F3 78 */	mr r3, r30
/* 80096F58  38 9F 00 04 */	addi r4, r31, 4
/* 80096F5C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80096F60  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80096F64  38 A5 02 45 */	addi r5, r5, 0x245
/* 80096F68  4B FF 1E F1 */	bl getEvFloatListData__9dCamera_cFPPfPc
/* 80096F6C  7C 64 1B 79 */	or. r4, r3, r3
/* 80096F70  41 82 00 18 */	beq lbl_80096F88
/* 80096F74  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80096F78  80 BF 00 00 */	lwz r5, 0(r31)
/* 80096F7C  38 A5 00 01 */	addi r5, r5, 1
/* 80096F80  48 00 08 F9 */	bl Init__14d2DBSplinePathFll
/* 80096F84  48 00 00 20 */	b lbl_80096FA4
lbl_80096F88:
/* 80096F88  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80096F8C  38 80 00 04 */	li r4, 4
/* 80096F90  80 BF 00 00 */	lwz r5, 0(r31)
/* 80096F94  38 A5 00 01 */	addi r5, r5, 1
/* 80096F98  48 00 08 E1 */	bl Init__14d2DBSplinePathFll
/* 80096F9C  38 01 01 14 */	addi r0, r1, 0x114
/* 80096FA0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80096FA4:
/* 80096FA4  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80096FA8  48 00 09 5D */	bl Step__14d2DBSplinePathFv
/* 80096FAC  38 00 00 00 */	li r0, 0
/* 80096FB0  90 1F 00 08 */	stw r0, 8(r31)
/* 80096FB4  38 61 00 4C */	addi r3, r1, 0x4c
/* 80096FB8  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80096FBC  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l
/* 80096FC0  38 84 02 4A */	addi r4, r4, 0x24a
/* 80096FC4  48 2D 1B 69 */	bl strcpy
/* 80096FC8  7F C3 F3 78 */	mr r3, r30
/* 80096FCC  38 9F 00 08 */	addi r4, r31, 8
/* 80096FD0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80096FD4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80096FD8  38 A5 02 51 */	addi r5, r5, 0x251
/* 80096FDC  4B FF 1E 7D */	bl getEvFloatListData__9dCamera_cFPPfPc
/* 80096FE0  7C 64 1B 79 */	or. r4, r3, r3
/* 80096FE4  41 82 00 38 */	beq lbl_8009701C
/* 80096FE8  38 7F 00 0C */	addi r3, r31, 0xc
/* 80096FEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80096FF0  38 A5 00 01 */	addi r5, r5, 1
/* 80096FF4  48 00 08 85 */	bl Init__14d2DBSplinePathFll
/* 80096FF8  38 7F 00 0C */	addi r3, r31, 0xc
/* 80096FFC  48 00 09 09 */	bl Step__14d2DBSplinePathFv
/* 80097000  7F C3 F3 78 */	mr r3, r30
/* 80097004  38 81 00 4C */	addi r4, r1, 0x4c
/* 80097008  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009700C  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l
/* 80097010  38 A6 02 56 */	addi r5, r6, 0x256
/* 80097014  38 C6 02 5B */	addi r6, r6, 0x25b
/* 80097018  4B FF 23 25 */	bl getEvStringData__9dCamera_cFPcPcPc
lbl_8009701C:
/* 8009701C  38 00 00 00 */	li r0, 0
/* 80097020  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80097024  38 61 00 44 */	addi r3, r1, 0x44
/* 80097028  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 8009702C  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l
/* 80097030  38 84 02 4A */	addi r4, r4, 0x24a
/* 80097034  48 2D 1A F9 */	bl strcpy
/* 80097038  7F C3 F3 78 */	mr r3, r30
/* 8009703C  38 9F 00 40 */	addi r4, r31, 0x40
/* 80097040  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80097044  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80097048  38 A5 02 62 */	addi r5, r5, 0x262
/* 8009704C  4B FF 1E 0D */	bl getEvFloatListData__9dCamera_cFPPfPc
/* 80097050  7C 64 1B 79 */	or. r4, r3, r3
/* 80097054  41 82 00 38 */	beq lbl_8009708C
/* 80097058  38 7F 00 44 */	addi r3, r31, 0x44
/* 8009705C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80097060  38 A5 00 01 */	addi r5, r5, 1
/* 80097064  48 00 08 15 */	bl Init__14d2DBSplinePathFll
/* 80097068  38 7F 00 44 */	addi r3, r31, 0x44
/* 8009706C  48 00 08 99 */	bl Step__14d2DBSplinePathFv
/* 80097070  7F C3 F3 78 */	mr r3, r30
/* 80097074  38 81 00 44 */	addi r4, r1, 0x44
/* 80097078  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009707C  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l
/* 80097080  38 A6 02 67 */	addi r5, r6, 0x267
/* 80097084  38 C6 02 6C */	addi r6, r6, 0x26c
/* 80097088  4B FF 22 B5 */	bl getEvStringData__9dCamera_cFPcPcPc
lbl_8009708C:
/* 8009708C  38 00 FF FF */	li r0, -1
/* 80097090  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80097094  7F C3 F3 78 */	mr r3, r30
/* 80097098  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 8009709C  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l
/* 800970A0  38 84 00 36 */	addi r4, r4, 0x36
/* 800970A4  4B FF 24 21 */	bl getEvActor__9dCamera_cFPc
/* 800970A8  90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 800970AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800970B0  28 00 00 00 */	cmplwi r0, 0
/* 800970B4  41 82 00 3C */	beq lbl_800970F0
/* 800970B8  7F C3 F3 78 */	mr r3, r30
/* 800970BC  38 9F 00 B8 */	addi r4, r31, 0xb8
/* 800970C0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800970C4  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l
/* 800970C8  38 A6 00 28 */	addi r5, r6, 0x28
/* 800970CC  38 C6 00 33 */	addi r6, r6, 0x33
/* 800970D0  4B FF 22 6D */	bl getEvStringData__9dCamera_cFPcPcPc
/* 800970D4  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 800970D8  28 03 00 00 */	cmplwi r3, 0
/* 800970DC  41 82 00 0C */	beq lbl_800970E8
/* 800970E0  80 03 00 04 */	lwz r0, 4(r3)
/* 800970E4  48 00 00 08 */	b lbl_800970EC
lbl_800970E8:
/* 800970E8  38 00 FF FF */	li r0, -1
lbl_800970EC:
/* 800970EC  90 1F 00 B4 */	stw r0, 0xb4(r31)
lbl_800970F0:
/* 800970F0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 800970F4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 800970F8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 800970FC  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80097100  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80097104  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80097108  7F C3 F3 78 */	mr r3, r30
/* 8009710C  38 9F 00 94 */	addi r4, r31, 0x94
/* 80097110  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80097114  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80097118  38 A5 00 0F */	addi r5, r5, 0xf
/* 8009711C  38 C1 00 E4 */	addi r6, r1, 0xe4
/* 80097120  4B FF 21 0D */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80097124  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80097128  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8009712C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80097130  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80097134  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80097138  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8009713C  7F C3 F3 78 */	mr r3, r30
/* 80097140  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 80097144  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80097148  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8009714C  38 A5 00 0B */	addi r5, r5, 0xb
/* 80097150  38 C1 00 D8 */	addi r6, r1, 0xd8
/* 80097154  4B FF 20 D9 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 80097158  7F C3 F3 78 */	mr r3, r30
/* 8009715C  38 9F 00 AC */	addi r4, r31, 0xac
/* 80097160  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80097164  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80097168  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8009716C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80097170  4B FF 1F E5 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80097174  7F C3 F3 78 */	mr r3, r30
/* 80097178  38 9F 00 BC */	addi r4, r31, 0xbc
/* 8009717C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80097180  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80097184  38 A5 01 04 */	addi r5, r5, 0x104
/* 80097188  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8009718C  4B FF 1F C9 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80097190  38 C0 00 00 */	li r6, 0
/* 80097194  38 60 00 00 */	li r3, 0
/* 80097198  38 81 00 4C */	addi r4, r1, 0x4c
/* 8009719C  38 00 00 06 */	li r0, 6
/* 800971A0  7C 09 03 A6 */	mtctr r0
lbl_800971A4:
/* 800971A4  88 04 00 00 */	lbz r0, 0(r4)
/* 800971A8  38 A0 00 00 */	li r5, 0
/* 800971AC  7C 00 07 74 */	extsb r0, r0
/* 800971B0  2C 00 00 2D */	cmpwi r0, 0x2d
/* 800971B4  41 82 00 10 */	beq lbl_800971C4
/* 800971B8  2C 00 00 78 */	cmpwi r0, 0x78
/* 800971BC  41 82 00 08 */	beq lbl_800971C4
/* 800971C0  38 A0 00 01 */	li r5, 1
lbl_800971C4:
/* 800971C4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800971C8  41 82 00 3C */	beq lbl_80097204
/* 800971CC  38 A1 00 44 */	addi r5, r1, 0x44
/* 800971D0  7C 05 30 AE */	lbzx r0, r5, r6
/* 800971D4  38 A0 00 00 */	li r5, 0
/* 800971D8  7C 00 07 74 */	extsb r0, r0
/* 800971DC  2C 00 00 2D */	cmpwi r0, 0x2d
/* 800971E0  41 82 00 10 */	beq lbl_800971F0
/* 800971E4  2C 00 00 78 */	cmpwi r0, 0x78
/* 800971E8  41 82 00 08 */	beq lbl_800971F0
/* 800971EC  38 A0 00 01 */	li r5, 1
lbl_800971F0:
/* 800971F0  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 800971F4  30 05 FF FF */	addic r0, r5, -1
/* 800971F8  7C A0 29 10 */	subfe r5, r0, r5
/* 800971FC  38 A5 00 01 */	addi r5, r5, 1
/* 80097200  48 00 00 08 */	b lbl_80097208
lbl_80097204:
/* 80097204  38 A0 00 00 */	li r5, 0
lbl_80097208:
/* 80097208  38 03 00 C0 */	addi r0, r3, 0xc0
/* 8009720C  7C BF 01 2E */	stwx r5, r31, r0
/* 80097210  38 C6 00 01 */	addi r6, r6, 1
/* 80097214  38 63 00 04 */	addi r3, r3, 4
/* 80097218  38 84 00 01 */	addi r4, r4, 1
/* 8009721C  42 00 FF 88 */	bdnz lbl_800971A4
/* 80097220  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80097224  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80097228  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8009722C  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 80097230  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80097234  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80097238  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8009723C  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80097240  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80097244  D0 1F 00 88 */	stfs f0, 0x88(r31)
/* 80097248  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8009724C  D0 1F 00 8C */	stfs f0, 0x8c(r31)
/* 80097250  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80097254  D0 1F 00 90 */	stfs f0, 0x90(r31)
lbl_80097258:
/* 80097258  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8009725C  28 00 00 00 */	cmplwi r0, 0
/* 80097260  41 82 00 2C */	beq lbl_8009728C
/* 80097264  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 80097268  90 01 00 28 */	stw r0, 0x28(r1)
/* 8009726C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80097270  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80097274  38 81 00 28 */	addi r4, r1, 0x28
/* 80097278  4B F8 25 81 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8009727C  28 03 00 00 */	cmplwi r3, 0
/* 80097280  40 82 00 0C */	bne lbl_8009728C
/* 80097284  38 60 00 01 */	li r3, 1
/* 80097288  48 00 03 F4 */	b lbl_8009767C
lbl_8009728C:
/* 8009728C  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80097290  80 1F 00 00 */	lwz r0, 0(r31)
/* 80097294  7C 03 00 40 */	cmplw r3, r0
/* 80097298  40 80 03 E0 */	bge lbl_80097678
/* 8009729C  80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 800972A0  28 05 00 00 */	cmplwi r5, 0
/* 800972A4  41 82 00 E4 */	beq lbl_80097388
/* 800972A8  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 800972AC  38 60 00 00 */	li r3, 0
/* 800972B0  7C 00 07 74 */	extsb r0, r0
/* 800972B4  2C 00 00 2D */	cmpwi r0, 0x2d
/* 800972B8  41 82 00 10 */	beq lbl_800972C8
/* 800972BC  2C 00 00 78 */	cmpwi r0, 0x78
/* 800972C0  41 82 00 08 */	beq lbl_800972C8
/* 800972C4  38 60 00 01 */	li r3, 1
lbl_800972C8:
/* 800972C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800972CC  41 82 00 30 */	beq lbl_800972FC
/* 800972D0  38 61 00 CC */	addi r3, r1, 0xcc
/* 800972D4  7F C4 F3 78 */	mr r4, r30
/* 800972D8  38 DF 00 94 */	addi r6, r31, 0x94
/* 800972DC  48 0C DA 91 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800972E0  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 800972E4  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 800972E8  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 800972EC  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 800972F0  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 800972F4  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 800972F8  48 00 00 1C */	b lbl_80097314
lbl_800972FC:
/* 800972FC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80097300  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80097304  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80097308  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 8009730C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80097310  D0 01 01 2C */	stfs f0, 0x12c(r1)
lbl_80097314:
/* 80097314  88 1F 00 B9 */	lbz r0, 0xb9(r31)
/* 80097318  38 60 00 00 */	li r3, 0
/* 8009731C  7C 00 07 74 */	extsb r0, r0
/* 80097320  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80097324  41 82 00 10 */	beq lbl_80097334
/* 80097328  2C 00 00 78 */	cmpwi r0, 0x78
/* 8009732C  41 82 00 08 */	beq lbl_80097334
/* 80097330  38 60 00 01 */	li r3, 1
lbl_80097334:
/* 80097334  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80097338  41 82 00 34 */	beq lbl_8009736C
/* 8009733C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80097340  7F C4 F3 78 */	mr r4, r30
/* 80097344  80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 80097348  38 DF 00 A0 */	addi r6, r31, 0xa0
/* 8009734C  48 0C DA 21 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80097350  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80097354  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80097358  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8009735C  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 80097360  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80097364  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80097368  48 00 00 50 */	b lbl_800973B8
lbl_8009736C:
/* 8009736C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80097370  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80097374  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80097378  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8009737C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80097380  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 80097384  48 00 00 34 */	b lbl_800973B8
lbl_80097388:
/* 80097388  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8009738C  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80097390  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80097394  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80097398  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8009739C  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 800973A0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 800973A4  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 800973A8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 800973AC  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 800973B0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 800973B4  D0 01 01 38 */	stfs f0, 0x138(r1)
lbl_800973B8:
/* 800973B8  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 800973BC  48 00 05 49 */	bl Step__14d2DBSplinePathFv
/* 800973C0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 800973C4  80 9F 00 04 */	lwz r4, 4(r31)
/* 800973C8  48 00 07 59 */	bl Calc__14d2DBSplinePathFPf
/* 800973CC  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 800973D0  80 1F 00 08 */	lwz r0, 8(r31)
/* 800973D4  28 00 00 00 */	cmplwi r0, 0
/* 800973D8  41 82 00 1C */	beq lbl_800973F4
/* 800973DC  38 7F 00 0C */	addi r3, r31, 0xc
/* 800973E0  48 00 05 25 */	bl Step__14d2DBSplinePathFv
/* 800973E4  38 7F 00 0C */	addi r3, r31, 0xc
/* 800973E8  80 9F 00 08 */	lwz r4, 8(r31)
/* 800973EC  48 00 07 35 */	bl Calc__14d2DBSplinePathFPf
/* 800973F0  D0 21 00 F4 */	stfs f1, 0xf4(r1)
lbl_800973F4:
/* 800973F4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 800973F8  28 00 00 00 */	cmplwi r0, 0
/* 800973FC  41 82 00 1C */	beq lbl_80097418
/* 80097400  38 7F 00 44 */	addi r3, r31, 0x44
/* 80097404  48 00 05 01 */	bl Step__14d2DBSplinePathFv
/* 80097408  38 7F 00 44 */	addi r3, r31, 0x44
/* 8009740C  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 80097410  48 00 07 11 */	bl Calc__14d2DBSplinePathFPf
/* 80097414  D0 21 00 F8 */	stfs f1, 0xf8(r1)
lbl_80097418:
/* 80097418  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8009741C  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 80097420  EC 00 08 28 */	fsubs f0, f0, f1
/* 80097424  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80097428  54 00 10 3A */	slwi r0, r0, 2
/* 8009742C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80097430  7C 43 04 2E */	lfsx f2, r3, r0
/* 80097434  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80097438  EC 01 00 2A */	fadds f0, f1, f0
/* 8009743C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80097440  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80097444  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 80097448  EC 20 18 28 */	fsubs f1, f0, f3
/* 8009744C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80097450  54 00 10 3A */	slwi r0, r0, 2
/* 80097454  7C 03 04 2E */	lfsx f0, r3, r0
/* 80097458  EC 01 00 32 */	fmuls f0, f1, f0
/* 8009745C  EC 03 00 2A */	fadds f0, f3, f0
/* 80097460  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80097464  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80097468  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 8009746C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80097470  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80097474  EC 01 00 2A */	fadds f0, f1, f0
/* 80097478  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8009747C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80097480  38 81 01 08 */	addi r4, r1, 0x108
/* 80097484  38 BE 00 64 */	addi r5, r30, 0x64
/* 80097488  48 1C F6 AD */	bl __mi__4cXyzCFRC3Vec
/* 8009748C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80097490  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80097494  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80097498  48 1C F6 ED */	bl __ml__4cXyzCFf
/* 8009749C  38 7E 00 64 */	addi r3, r30, 0x64
/* 800974A0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800974A4  7C 65 1B 78 */	mr r5, r3
/* 800974A8  48 2A FB E9 */	bl PSVECAdd
/* 800974AC  38 61 00 9C */	addi r3, r1, 0x9c
/* 800974B0  38 9F 00 84 */	addi r4, r31, 0x84
/* 800974B4  38 BF 00 78 */	addi r5, r31, 0x78
/* 800974B8  48 1C F6 7D */	bl __mi__4cXyzCFRC3Vec
/* 800974BC  38 61 00 3C */	addi r3, r1, 0x3c
/* 800974C0  38 81 00 9C */	addi r4, r1, 0x9c
/* 800974C4  48 1D A3 BD */	bl __ct__7cSGlobeFRC4cXyz
/* 800974C8  38 61 00 90 */	addi r3, r1, 0x90
/* 800974CC  38 81 01 30 */	addi r4, r1, 0x130
/* 800974D0  38 A1 01 24 */	addi r5, r1, 0x124
/* 800974D4  48 1C F6 61 */	bl __mi__4cXyzCFRC3Vec
/* 800974D8  38 61 00 34 */	addi r3, r1, 0x34
/* 800974DC  38 81 00 90 */	addi r4, r1, 0x90
/* 800974E0  48 1D A3 A1 */	bl __ct__7cSGlobeFRC4cXyz
/* 800974E4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 800974E8  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 800974EC  54 00 10 3A */	slwi r0, r0, 2
/* 800974F0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 800974F4  7C 23 04 2E */	lfsx f1, r3, r0
/* 800974F8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800974FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80097500  EC 01 00 32 */	fmuls f0, f1, f0
/* 80097504  EC 02 00 2A */	fadds f0, f2, f0
/* 80097508  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8009750C  38 61 00 24 */	addi r3, r1, 0x24
/* 80097510  38 81 00 38 */	addi r4, r1, 0x38
/* 80097514  3B A1 00 40 */	addi r29, r1, 0x40
/* 80097518  7F A5 EB 78 */	mr r5, r29
/* 8009751C  48 1D 9C 89 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80097520  38 61 00 20 */	addi r3, r1, 0x20
/* 80097524  38 81 00 24 */	addi r4, r1, 0x24
/* 80097528  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8009752C  54 00 10 3A */	slwi r0, r0, 2
/* 80097530  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80097534  7C 25 04 2E */	lfsx f1, r5, r0
/* 80097538  48 1D 9D 2D */	bl __ml__7cSAngleCFf
/* 8009753C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80097540  7F A4 EB 78 */	mr r4, r29
/* 80097544  38 A1 00 20 */	addi r5, r1, 0x20
/* 80097548  48 1D 9C 2D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8009754C  38 61 00 0C */	addi r3, r1, 0xc
/* 80097550  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 80097554  48 1D 9A 45 */	bl __ct__7cSAngleFs
/* 80097558  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8009755C  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80097560  38 61 00 18 */	addi r3, r1, 0x18
/* 80097564  38 81 00 3A */	addi r4, r1, 0x3a
/* 80097568  3B A1 00 42 */	addi r29, r1, 0x42
/* 8009756C  7F A5 EB 78 */	mr r5, r29
/* 80097570  48 1D 9C 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80097574  38 61 00 14 */	addi r3, r1, 0x14
/* 80097578  38 81 00 18 */	addi r4, r1, 0x18
/* 8009757C  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80097580  54 00 10 3A */	slwi r0, r0, 2
/* 80097584  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 80097588  7C 25 04 2E */	lfsx f1, r5, r0
/* 8009758C  48 1D 9C D9 */	bl __ml__7cSAngleCFf
/* 80097590  38 61 00 10 */	addi r3, r1, 0x10
/* 80097594  7F A4 EB 78 */	mr r4, r29
/* 80097598  38 A1 00 14 */	addi r5, r1, 0x14
/* 8009759C  48 1D 9B D9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 800975A0  38 61 00 08 */	addi r3, r1, 8
/* 800975A4  A8 81 00 10 */	lha r4, 0x10(r1)
/* 800975A8  48 1D 99 F1 */	bl __ct__7cSAngleFs
/* 800975AC  A8 01 00 08 */	lha r0, 8(r1)
/* 800975B0  B0 01 00 32 */	sth r0, 0x32(r1)
/* 800975B4  38 61 00 84 */	addi r3, r1, 0x84
/* 800975B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 800975BC  48 1D A4 F9 */	bl Xyz__7cSGlobeCFv
/* 800975C0  38 61 00 78 */	addi r3, r1, 0x78
/* 800975C4  38 9E 00 64 */	addi r4, r30, 0x64
/* 800975C8  38 A1 00 84 */	addi r5, r1, 0x84
/* 800975CC  48 1C F5 19 */	bl __pl__4cXyzCFRC3Vec
/* 800975D0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 800975D4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 800975D8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 800975DC  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 800975E0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 800975E4  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 800975E8  38 61 00 6C */	addi r3, r1, 0x6c
/* 800975EC  38 81 00 FC */	addi r4, r1, 0xfc
/* 800975F0  38 BE 00 70 */	addi r5, r30, 0x70
/* 800975F4  48 1C F5 41 */	bl __mi__4cXyzCFRC3Vec
/* 800975F8  38 61 00 60 */	addi r3, r1, 0x60
/* 800975FC  38 81 00 6C */	addi r4, r1, 0x6c
/* 80097600  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80097604  48 1C F5 81 */	bl __ml__4cXyzCFf
/* 80097608  38 7E 00 70 */	addi r3, r30, 0x70
/* 8009760C  38 81 00 60 */	addi r4, r1, 0x60
/* 80097610  7C 65 1B 78 */	mr r5, r3
/* 80097614  48 2A FA 7D */	bl PSVECAdd
/* 80097618  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 8009761C  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80097620  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 80097624  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80097628  EC 20 20 28 */	fsubs f1, f0, f4
/* 8009762C  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80097630  54 00 10 3A */	slwi r0, r0, 2
/* 80097634  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80097638  7C 03 04 2E */	lfsx f0, r3, r0
/* 8009763C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80097640  EC 04 00 2A */	fadds f0, f4, f0
/* 80097644  EC 00 18 28 */	fsubs f0, f0, f3
/* 80097648  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009764C  EC 03 00 2A */	fadds f0, f3, f0
/* 80097650  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80097654  38 61 00 54 */	addi r3, r1, 0x54
/* 80097658  38 9E 00 70 */	addi r4, r30, 0x70
/* 8009765C  38 BE 00 64 */	addi r5, r30, 0x64
/* 80097660  48 1C F4 D5 */	bl __mi__4cXyzCFRC3Vec
/* 80097664  38 7E 00 5C */	addi r3, r30, 0x5c
/* 80097668  38 81 00 54 */	addi r4, r1, 0x54
/* 8009766C  48 1D A4 05 */	bl Val__7cSGlobeFRC4cXyz
/* 80097670  38 60 00 00 */	li r3, 0
/* 80097674  48 00 00 08 */	b lbl_8009767C
lbl_80097678:
/* 80097678  38 60 00 01 */	li r3, 1
lbl_8009767C:
/* 8009767C  39 61 01 50 */	addi r11, r1, 0x150
/* 80097680  48 2C AB A9 */	bl _restgpr_29
/* 80097684  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80097688  7C 08 03 A6 */	mtlr r0
/* 8009768C  38 21 01 50 */	addi r1, r1, 0x150
/* 80097690  4E 80 00 20 */	blr 
