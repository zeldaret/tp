lbl_8083DEEC:
/* 8083DEEC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8083DEF0  7C 08 02 A6 */	mflr r0
/* 8083DEF4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8083DEF8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8083DEFC  4B B2 42 C1 */	bl _savegpr_21
/* 8083DF00  7C 7D 1B 78 */	mr r29, r3
/* 8083DF04  3C 80 80 84 */	lis r4, lit_1109@ha /* 0x80845BB8@ha */
/* 8083DF08  3B C4 5B B8 */	addi r30, r4, lit_1109@l /* 0x80845BB8@l */
/* 8083DF0C  3C 80 80 84 */	lis r4, lit_3894@ha /* 0x808454AC@ha */
/* 8083DF10  3B E4 54 AC */	addi r31, r4, lit_3894@l /* 0x808454AC@l */
/* 8083DF14  80 03 17 4C */	lwz r0, 0x174c(r3)
/* 8083DF18  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8083DF1C  41 82 00 28 */	beq lbl_8083DF44
/* 8083DF20  88 1D 16 BD */	lbz r0, 0x16bd(r29)
/* 8083DF24  54 04 10 3A */	slwi r4, r0, 2
/* 8083DF28  38 84 17 38 */	addi r4, r4, 0x1738
/* 8083DF2C  7C 9D 22 14 */	add r4, r29, r4
/* 8083DF30  4B FF FD 29 */	bl setDashEffect__9daHorse_cFPUl
/* 8083DF34  8B 3D 16 BD */	lbz r25, 0x16bd(r29)
/* 8083DF38  6B 20 00 01 */	xori r0, r25, 1
/* 8083DF3C  98 1D 16 BD */	stb r0, 0x16bd(r29)
/* 8083DF40  48 00 00 08 */	b lbl_8083DF48
lbl_8083DF44:
/* 8083DF44  3B 20 FF FF */	li r25, -1
lbl_8083DF48:
/* 8083DF48  C0 5F 02 60 */	lfs f2, 0x260(r31)
/* 8083DF4C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8083DF50  C0 1D 17 8C */	lfs f0, 0x178c(r29)
/* 8083DF54  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083DF58  EC 22 00 32 */	fmuls f1, f2, f0
/* 8083DF5C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083DF60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083DF64  40 81 00 08 */	ble lbl_8083DF6C
/* 8083DF68  FC 20 00 90 */	fmr f1, f0
lbl_8083DF6C:
/* 8083DF6C  C0 1F 02 64 */	lfs f0, 0x264(r31)
/* 8083DF70  EC 00 00 72 */	fmuls f0, f0, f1
/* 8083DF74  FC 00 00 1E */	fctiwz f0, f0
/* 8083DF78  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8083DF7C  83 41 00 7C */	lwz r26, 0x7c(r1)
/* 8083DF80  3B 00 00 00 */	li r24, 0
/* 8083DF84  3A C0 00 00 */	li r22, 0
/* 8083DF88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083DF8C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_8083DF90:
/* 8083DF90  7C 18 C8 00 */	cmpw r24, r25
/* 8083DF94  41 82 00 6C */	beq lbl_8083E000
/* 8083DF98  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8083DF9C  38 63 02 10 */	addi r3, r3, 0x210
/* 8083DFA0  7E FD B2 14 */	add r23, r29, r22
/* 8083DFA4  80 97 17 38 */	lwz r4, 0x1738(r23)
/* 8083DFA8  4B 80 D9 71 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 8083DFAC  7C 7B 1B 79 */	or. r27, r3, r3
/* 8083DFB0  41 82 00 50 */	beq lbl_8083E000
/* 8083DFB4  38 80 00 00 */	li r4, 0
/* 8083DFB8  80 1B 00 F4 */	lwz r0, 0xf4(r27)
/* 8083DFBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8083DFC0  41 82 00 18 */	beq lbl_8083DFD8
/* 8083DFC4  80 7B 00 D0 */	lwz r3, 0xd0(r27)
/* 8083DFC8  80 1B 00 DC */	lwz r0, 0xdc(r27)
/* 8083DFCC  7C 03 02 15 */	add. r0, r3, r0
/* 8083DFD0  40 82 00 08 */	bne lbl_8083DFD8
/* 8083DFD4  38 80 00 01 */	li r4, 1
lbl_8083DFD8:
/* 8083DFD8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8083DFDC  40 82 00 24 */	bne lbl_8083E000
/* 8083DFE0  7F A3 EB 78 */	mr r3, r29
/* 8083DFE4  38 97 17 38 */	addi r4, r23, 0x1738
/* 8083DFE8  4B FF FC 71 */	bl setDashEffect__9daHorse_cFPUl
/* 8083DFEC  88 7B 00 BB */	lbz r3, 0xbb(r27)
/* 8083DFF0  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8083DFF4  7C 03 00 40 */	cmplw r3, r0
/* 8083DFF8  40 81 00 08 */	ble lbl_8083E000
/* 8083DFFC  9B 5B 00 BB */	stb r26, 0xbb(r27)
lbl_8083E000:
/* 8083E000  3B 18 00 01 */	addi r24, r24, 1
/* 8083E004  2C 18 00 02 */	cmpwi r24, 2
/* 8083E008  3A D6 00 04 */	addi r22, r22, 4
/* 8083E00C  41 80 FF 84 */	blt lbl_8083DF90
/* 8083E010  38 C0 00 00 */	li r6, 0
/* 8083E014  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E018  28 00 00 02 */	cmplwi r0, 2
/* 8083E01C  40 82 00 08 */	bne lbl_8083E024
/* 8083E020  60 C6 00 03 */	ori r6, r6, 3
lbl_8083E024:
/* 8083E024  38 E0 00 00 */	li r7, 0
/* 8083E028  88 1D 16 B8 */	lbz r0, 0x16b8(r29)
/* 8083E02C  28 00 00 01 */	cmplwi r0, 1
/* 8083E030  40 82 00 08 */	bne lbl_8083E038
/* 8083E034  64 E7 00 02 */	oris r7, r7, 2
lbl_8083E038:
/* 8083E038  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 8083E03C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8083E040  41 82 00 9C */	beq lbl_8083E0DC
/* 8083E044  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8083E048  7C 03 07 74 */	extsb r3, r0
/* 8083E04C  89 3D 16 B6 */	lbz r9, 0x16b6(r29)
/* 8083E050  55 20 07 39 */	rlwinm. r0, r9, 0, 0x1c, 0x1c
/* 8083E054  41 82 00 0C */	beq lbl_8083E060
/* 8083E058  38 9D 15 DC */	addi r4, r29, 0x15dc
/* 8083E05C  48 00 00 08 */	b lbl_8083E064
lbl_8083E060:
/* 8083E060  38 80 00 00 */	li r4, 0
lbl_8083E064:
/* 8083E064  55 20 07 7B */	rlwinm. r0, r9, 0, 0x1d, 0x1d
/* 8083E068  41 82 00 0C */	beq lbl_8083E074
/* 8083E06C  38 BD 14 F8 */	addi r5, r29, 0x14f8
/* 8083E070  48 00 00 08 */	b lbl_8083E078
lbl_8083E074:
/* 8083E074  38 A0 00 00 */	li r5, 0
lbl_8083E078:
/* 8083E078  55 20 07 BD */	rlwinm. r0, r9, 0, 0x1e, 0x1e
/* 8083E07C  41 82 00 0C */	beq lbl_8083E088
/* 8083E080  39 5D 14 14 */	addi r10, r29, 0x1414
/* 8083E084  48 00 00 08 */	b lbl_8083E08C
lbl_8083E088:
/* 8083E088  39 40 00 00 */	li r10, 0
lbl_8083E08C:
/* 8083E08C  90 A1 00 08 */	stw r5, 8(r1)
/* 8083E090  90 81 00 0C */	stw r4, 0xc(r1)
/* 8083E094  38 1D 04 DC */	addi r0, r29, 0x4dc
/* 8083E098  90 01 00 10 */	stw r0, 0x10(r1)
/* 8083E09C  38 00 00 00 */	li r0, 0
/* 8083E0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083E0A4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8083E0A8  38 7D 17 DC */	addi r3, r29, 0x17dc
/* 8083E0AC  38 9D 01 0C */	addi r4, r29, 0x10c
/* 8083E0B0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8083E0B4  39 00 00 00 */	li r8, 0
/* 8083E0B8  55 20 07 FF */	clrlwi. r0, r9, 0x1f
/* 8083E0BC  41 82 00 0C */	beq lbl_8083E0C8
/* 8083E0C0  39 3D 13 30 */	addi r9, r29, 0x1330
/* 8083E0C4  48 00 00 08 */	b lbl_8083E0CC
lbl_8083E0C8:
/* 8083E0C8  39 20 00 00 */	li r9, 0
lbl_8083E0CC:
/* 8083E0CC  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083E0D0  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 8083E0D4  4B 81 32 15 */	bl setEffectFour__8dPaPoF_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
/* 8083E0D8  48 00 00 4C */	b lbl_8083E124
lbl_8083E0DC:
/* 8083E0DC  38 60 00 00 */	li r3, 0
/* 8083E0E0  90 61 00 08 */	stw r3, 8(r1)
/* 8083E0E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8083E0E8  38 1D 04 DC */	addi r0, r29, 0x4dc
/* 8083E0EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8083E0F0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8083E0F4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8083E0F8  7C 00 07 74 */	extsb r0, r0
/* 8083E0FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8083E100  38 7D 17 DC */	addi r3, r29, 0x17dc
/* 8083E104  38 9D 01 0C */	addi r4, r29, 0x10c
/* 8083E108  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8083E10C  39 00 00 00 */	li r8, 0
/* 8083E110  39 20 00 00 */	li r9, 0
/* 8083E114  39 40 00 00 */	li r10, 0
/* 8083E118  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083E11C  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 8083E120  4B 81 31 C9 */	bl setEffectFour__8dPaPoF_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
lbl_8083E124:
/* 8083E124  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 8083E128  7C 00 07 75 */	extsb. r0, r0
/* 8083E12C  40 82 00 30 */	bne lbl_8083E15C
/* 8083E130  C0 1F 02 60 */	lfs f0, 0x260(r31)
/* 8083E134  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 8083E138  38 7E 00 9C */	addi r3, r30, 0x9c
/* 8083E13C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083E140  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083E144  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083E148  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083E14C  38 BE 00 8C */	addi r5, r30, 0x8c
/* 8083E150  4B FF 9D 69 */	bl __register_global_object
/* 8083E154  38 00 00 01 */	li r0, 1
/* 8083E158  98 1E 00 98 */	stb r0, 0x98(r30)
lbl_8083E15C:
/* 8083E15C  88 1E 00 B4 */	lbz r0, 0xb4(r30)
/* 8083E160  7C 00 07 75 */	extsb. r0, r0
/* 8083E164  40 82 00 30 */	bne lbl_8083E194
/* 8083E168  C0 1F 02 68 */	lfs f0, 0x268(r31)
/* 8083E16C  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 8083E170  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 8083E174  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083E178  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083E17C  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083E180  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083E184  38 BE 00 A8 */	addi r5, r30, 0xa8
/* 8083E188  4B FF 9D 31 */	bl __register_global_object
/* 8083E18C  38 00 00 01 */	li r0, 1
/* 8083E190  98 1E 00 B4 */	stb r0, 0xb4(r30)
lbl_8083E194:
/* 8083E194  88 1E 00 D0 */	lbz r0, 0xd0(r30)
/* 8083E198  7C 00 07 75 */	extsb. r0, r0
/* 8083E19C  40 82 00 30 */	bne lbl_8083E1CC
/* 8083E1A0  C0 1F 02 6C */	lfs f0, 0x26c(r31)
/* 8083E1A4  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 8083E1A8  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8083E1AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083E1B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083E1B4  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083E1B8  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083E1BC  38 BE 00 C4 */	addi r5, r30, 0xc4
/* 8083E1C0  4B FF 9C F9 */	bl __register_global_object
/* 8083E1C4  38 00 00 01 */	li r0, 1
/* 8083E1C8  98 1E 00 D0 */	stb r0, 0xd0(r30)
lbl_8083E1CC:
/* 8083E1CC  88 1E 00 EC */	lbz r0, 0xec(r30)
/* 8083E1D0  7C 00 07 75 */	extsb. r0, r0
/* 8083E1D4  40 82 00 38 */	bne lbl_8083E20C
/* 8083E1D8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083E1DC  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 8083E1E0  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083E1E4  38 7E 00 F0 */	addi r3, r30, 0xf0
/* 8083E1E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083E1EC  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 8083E1F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083E1F4  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083E1F8  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083E1FC  38 BE 00 E0 */	addi r5, r30, 0xe0
/* 8083E200  4B FF 9C B9 */	bl __register_global_object
/* 8083E204  38 00 00 01 */	li r0, 1
/* 8083E208  98 1E 00 EC */	stb r0, 0xec(r30)
lbl_8083E20C:
/* 8083E20C  3A E0 00 00 */	li r23, 0
/* 8083E210  3A C0 00 00 */	li r22, 0
/* 8083E214  3C 60 80 3B */	lis r3, m_typeFourData__8dPaPoF_c@ha /* 0x803A86D0@ha */
/* 8083E218  3B 63 86 D0 */	addi r27, r3, m_typeFourData__8dPaPoF_c@l /* 0x803A86D0@l */
/* 8083E21C  3C 60 80 3B */	lis r3, m_emitterFourData__8dPaPoF_c@ha /* 0x803A8748@ha */
/* 8083E220  3B 83 87 48 */	addi r28, r3, m_emitterFourData__8dPaPoF_c@l /* 0x803A8748@l */
lbl_8083E224:
/* 8083E224  3B 00 00 00 */	li r24, 0
/* 8083E228  7F 5B B2 14 */	add r26, r27, r22
/* 8083E22C  7F 3C B2 14 */	add r25, r28, r22
lbl_8083E230:
/* 8083E230  38 7D 17 DC */	addi r3, r29, 0x17dc
/* 8083E234  7F 04 C3 78 */	mr r4, r24
/* 8083E238  7F 4C D3 78 */	mr r12, r26
/* 8083E23C  4B B2 3E 49 */	bl __ptmf_scall
/* 8083E240  60 00 00 00 */	nop 
/* 8083E244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083E248  40 82 00 B8 */	bne lbl_8083E300
/* 8083E24C  38 7D 17 DC */	addi r3, r29, 0x17dc
/* 8083E250  7F 04 C3 78 */	mr r4, r24
/* 8083E254  38 A0 00 00 */	li r5, 0
/* 8083E258  7F 2C CB 78 */	mr r12, r25
/* 8083E25C  4B B2 3E 29 */	bl __ptmf_scall
/* 8083E260  60 00 00 00 */	nop 
/* 8083E264  28 03 00 00 */	cmplwi r3, 0
/* 8083E268  41 82 02 3C */	beq lbl_8083E4A4
/* 8083E26C  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E270  28 00 00 02 */	cmplwi r0, 2
/* 8083E274  40 82 00 38 */	bne lbl_8083E2AC
/* 8083E278  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 8083E27C  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8083E280  C0 44 00 08 */	lfs f2, 8(r4)
/* 8083E284  F0 01 00 68 */	psq_st f0, 104(r1), 0, 0 /* qr0 */
/* 8083E288  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8083E28C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8083E290  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8083E294  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8083E298  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8083E29C  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8083E2A0  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8083E2A4  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8083E2A8  48 00 01 FC */	b lbl_8083E4A4
lbl_8083E2AC:
/* 8083E2AC  38 9E 00 9C */	addi r4, r30, 0x9c
/* 8083E2B0  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8083E2B4  C0 44 00 08 */	lfs f2, 8(r4)
/* 8083E2B8  F0 01 00 5C */	psq_st f0, 92(r1), 0, 0 /* qr0 */
/* 8083E2BC  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8083E2C0  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8083E2C4  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8083E2C8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8083E2CC  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8083E2D0  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8083E2D4  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8083E2D8  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8083E2DC  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E2E0  28 00 00 00 */	cmplwi r0, 0
/* 8083E2E4  40 82 00 10 */	bne lbl_8083E2F4
/* 8083E2E8  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 8083E2EC  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8083E2F0  48 00 01 B4 */	b lbl_8083E4A4
lbl_8083E2F4:
/* 8083E2F4  C0 1F 02 74 */	lfs f0, 0x274(r31)
/* 8083E2F8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8083E2FC  48 00 01 A8 */	b lbl_8083E4A4
lbl_8083E300:
/* 8083E300  28 00 00 01 */	cmplwi r0, 1
/* 8083E304  40 82 00 B8 */	bne lbl_8083E3BC
/* 8083E308  38 7D 17 DC */	addi r3, r29, 0x17dc
/* 8083E30C  7F 04 C3 78 */	mr r4, r24
/* 8083E310  38 A0 00 00 */	li r5, 0
/* 8083E314  7F 2C CB 78 */	mr r12, r25
/* 8083E318  4B B2 3D 6D */	bl __ptmf_scall
/* 8083E31C  60 00 00 00 */	nop 
/* 8083E320  28 03 00 00 */	cmplwi r3, 0
/* 8083E324  41 82 01 80 */	beq lbl_8083E4A4
/* 8083E328  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E32C  28 00 00 02 */	cmplwi r0, 2
/* 8083E330  40 82 00 38 */	bne lbl_8083E368
/* 8083E334  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 8083E338  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8083E33C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8083E340  F0 01 00 50 */	psq_st f0, 80(r1), 0, 0 /* qr0 */
/* 8083E344  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8083E348  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8083E34C  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8083E350  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8083E354  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8083E358  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8083E35C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8083E360  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8083E364  48 00 01 40 */	b lbl_8083E4A4
lbl_8083E368:
/* 8083E368  38 9E 00 D4 */	addi r4, r30, 0xd4
/* 8083E36C  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8083E370  C0 44 00 08 */	lfs f2, 8(r4)
/* 8083E374  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 8083E378  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8083E37C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8083E380  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8083E384  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8083E388  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8083E38C  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8083E390  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8083E394  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8083E398  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E39C  28 00 00 00 */	cmplwi r0, 0
/* 8083E3A0  40 82 00 10 */	bne lbl_8083E3B0
/* 8083E3A4  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 8083E3A8  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8083E3AC  48 00 00 F8 */	b lbl_8083E4A4
lbl_8083E3B0:
/* 8083E3B0  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8083E3B4  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8083E3B8  48 00 00 EC */	b lbl_8083E4A4
lbl_8083E3BC:
/* 8083E3BC  28 00 00 02 */	cmplwi r0, 2
/* 8083E3C0  40 82 00 E4 */	bne lbl_8083E4A4
/* 8083E3C4  3A A0 00 00 */	li r21, 0
lbl_8083E3C8:
/* 8083E3C8  38 7D 17 DC */	addi r3, r29, 0x17dc
/* 8083E3CC  7F 04 C3 78 */	mr r4, r24
/* 8083E3D0  7E A5 AB 78 */	mr r5, r21
/* 8083E3D4  7F 2C CB 78 */	mr r12, r25
/* 8083E3D8  4B B2 3C AD */	bl __ptmf_scall
/* 8083E3DC  60 00 00 00 */	nop 
/* 8083E3E0  28 03 00 00 */	cmplwi r3, 0
/* 8083E3E4  41 82 00 B4 */	beq lbl_8083E498
/* 8083E3E8  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E3EC  28 00 00 02 */	cmplwi r0, 2
/* 8083E3F0  40 82 00 38 */	bne lbl_8083E428
/* 8083E3F4  38 9E 00 B8 */	addi r4, r30, 0xb8
/* 8083E3F8  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8083E3FC  C0 44 00 08 */	lfs f2, 8(r4)
/* 8083E400  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 8083E404  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8083E408  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8083E40C  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8083E410  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8083E414  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8083E418  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8083E41C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8083E420  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8083E424  48 00 00 74 */	b lbl_8083E498
lbl_8083E428:
/* 8083E428  E0 1D 04 EC */	psq_l f0, 1260(r29), 0, 0 /* qr0 */
/* 8083E42C  C0 5D 04 F4 */	lfs f2, 0x4f4(r29)
/* 8083E430  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 8083E434  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8083E438  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8083E43C  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 8083E440  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8083E444  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 8083E448  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 8083E44C  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 8083E450  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 8083E454  88 1D 16 B7 */	lbz r0, 0x16b7(r29)
/* 8083E458  28 00 00 01 */	cmplwi r0, 1
/* 8083E45C  40 82 00 0C */	bne lbl_8083E468
/* 8083E460  38 00 00 03 */	li r0, 3
/* 8083E464  98 03 00 56 */	stb r0, 0x56(r3)
lbl_8083E468:
/* 8083E468  2C 15 00 00 */	cmpwi r21, 0
/* 8083E46C  41 82 00 2C */	beq lbl_8083E498
/* 8083E470  38 9E 00 F0 */	addi r4, r30, 0xf0
/* 8083E474  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 8083E478  C0 24 00 08 */	lfs f1, 8(r4)
/* 8083E47C  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 8083E480  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8083E484  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8083E488  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8083E48C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8083E490  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8083E494  D0 23 00 20 */	stfs f1, 0x20(r3)
lbl_8083E498:
/* 8083E498  3A B5 00 01 */	addi r21, r21, 1
/* 8083E49C  2C 15 00 04 */	cmpwi r21, 4
/* 8083E4A0  41 80 FF 28 */	blt lbl_8083E3C8
lbl_8083E4A4:
/* 8083E4A4  3B 18 00 01 */	addi r24, r24, 1
/* 8083E4A8  2C 18 00 02 */	cmpwi r24, 2
/* 8083E4AC  41 80 FD 84 */	blt lbl_8083E230
/* 8083E4B0  3A F7 00 01 */	addi r23, r23, 1
/* 8083E4B4  2C 17 00 05 */	cmpwi r23, 5
/* 8083E4B8  3A D6 00 0C */	addi r22, r22, 0xc
/* 8083E4BC  41 80 FD 68 */	blt lbl_8083E224
/* 8083E4C0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8083E4C4  4B B2 3D 45 */	bl _restgpr_21
/* 8083E4C8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8083E4CC  7C 08 03 A6 */	mtlr r0
/* 8083E4D0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8083E4D4  4E 80 00 20 */	blr 
