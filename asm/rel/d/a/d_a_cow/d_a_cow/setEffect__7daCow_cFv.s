lbl_80658830:
/* 80658830  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80658834  7C 08 02 A6 */	mflr r0
/* 80658838  90 01 00 84 */	stw r0, 0x84(r1)
/* 8065883C  39 61 00 80 */	addi r11, r1, 0x80
/* 80658840  4B D0 99 88 */	b _savegpr_24
/* 80658844  7C 7D 1B 78 */	mr r29, r3
/* 80658848  3C 60 80 66 */	lis r3, lit_1109@ha
/* 8065884C  3B C3 34 60 */	addi r30, r3, lit_1109@l
/* 80658850  3C 60 80 66 */	lis r3, lit_3987@ha
/* 80658854  3B E3 2D B0 */	addi r31, r3, lit_3987@l
/* 80658858  88 1D 0C B5 */	lbz r0, 0xcb5(r29)
/* 8065885C  28 00 00 00 */	cmplwi r0, 0
/* 80658860  41 82 01 F0 */	beq lbl_80658A50
/* 80658864  28 00 00 01 */	cmplwi r0, 1
/* 80658868  40 82 01 C0 */	bne lbl_80658A28
/* 8065886C  88 1D 0C 68 */	lbz r0, 0xc68(r29)
/* 80658870  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80658874  41 82 00 74 */	beq lbl_806588E8
/* 80658878  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065887C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80658880  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80658884  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80658888  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8065888C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80658890  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80658894  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80658898  38 61 00 30 */	addi r3, r1, 0x30
/* 8065889C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806588A0  A8 BD 0C 34 */	lha r5, 0xc34(r29)
/* 806588A4  38 C1 00 24 */	addi r6, r1, 0x24
/* 806588A8  4B C1 85 18 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806588AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806588B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806588B4  38 61 00 48 */	addi r3, r1, 0x48
/* 806588B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806588BC  A8 BD 0C 34 */	lha r5, 0xc34(r29)
/* 806588C0  38 C1 00 24 */	addi r6, r1, 0x24
/* 806588C4  4B C1 84 FC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806588C8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806588CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806588D0  38 61 00 48 */	addi r3, r1, 0x48
/* 806588D4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806588D8  A8 BD 0C 34 */	lha r5, 0xc34(r29)
/* 806588DC  38 C1 00 24 */	addi r6, r1, 0x24
/* 806588E0  4B C1 84 E0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806588E4  48 00 00 0C */	b lbl_806588F0
lbl_806588E8:
/* 806588E8  38 00 00 00 */	li r0, 0
/* 806588EC  98 1D 0C B5 */	stb r0, 0xcb5(r29)
lbl_806588F0:
/* 806588F0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806588F4  7C 04 07 74 */	extsb r4, r0
/* 806588F8  89 1D 0C B5 */	lbz r8, 0xcb5(r29)
/* 806588FC  20 08 00 00 */	subfic r0, r8, 0
/* 80658900  7C 60 01 10 */	subfe r3, r0, r0
/* 80658904  38 01 00 3C */	addi r0, r1, 0x3c
/* 80658908  7C 0A 18 38 */	and r10, r0, r3
/* 8065890C  20 08 00 00 */	subfic r0, r8, 0
/* 80658910  7C 60 01 10 */	subfe r3, r0, r0
/* 80658914  38 01 00 48 */	addi r0, r1, 0x48
/* 80658918  7C 09 18 38 */	and r9, r0, r3
/* 8065891C  38 1D 0C 32 */	addi r0, r29, 0xc32
/* 80658920  90 01 00 08 */	stw r0, 8(r1)
/* 80658924  38 00 00 00 */	li r0, 0
/* 80658928  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065892C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80658930  38 7D 0C B8 */	addi r3, r29, 0xcb8
/* 80658934  38 9D 01 0C */	addi r4, r29, 0x10c
/* 80658938  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8065893C  38 C0 00 00 */	li r6, 0
/* 80658940  38 E0 00 00 */	li r7, 0
/* 80658944  20 08 00 00 */	subfic r0, r8, 0
/* 80658948  7D 00 01 10 */	subfe r8, r0, r0
/* 8065894C  38 01 00 30 */	addi r0, r1, 0x30
/* 80658950  7C 08 40 38 */	and r8, r0, r8
/* 80658954  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80658958  C0 5D 05 2C */	lfs f2, 0x52c(r29)
/* 8065895C  4B 9F 88 00 */	b setEffectTwo__8dPaPoT_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
/* 80658960  88 1E 00 84 */	lbz r0, 0x84(r30)
/* 80658964  7C 00 07 75 */	extsb. r0, r0
/* 80658968  40 82 00 30 */	bne lbl_80658998
/* 8065896C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80658970  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 80658974  38 7E 00 88 */	addi r3, r30, 0x88
/* 80658978  D0 03 00 04 */	stfs f0, 4(r3)
/* 8065897C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80658980  3C 80 80 66 */	lis r4, __dt__4cXyzFv@ha
/* 80658984  38 84 8A 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80658988  38 BE 00 78 */	addi r5, r30, 0x78
/* 8065898C  4B FF FB CD */	bl __register_global_object
/* 80658990  38 00 00 01 */	li r0, 1
/* 80658994  98 1E 00 84 */	stb r0, 0x84(r30)
lbl_80658998:
/* 80658998  3B 00 00 00 */	li r24, 0
/* 8065899C  3B 80 00 00 */	li r28, 0
/* 806589A0  3C 60 80 3B */	lis r3, m_emitterTwoData__8dPaPoT_c@ha
/* 806589A4  3B 63 86 70 */	addi r27, r3, m_emitterTwoData__8dPaPoT_c@l
lbl_806589A8:
/* 806589A8  3B 20 00 00 */	li r25, 0
/* 806589AC  7F 5B E2 14 */	add r26, r27, r28
lbl_806589B0:
/* 806589B0  38 7D 0C B8 */	addi r3, r29, 0xcb8
/* 806589B4  7F 24 CB 78 */	mr r4, r25
/* 806589B8  38 A0 00 00 */	li r5, 0
/* 806589BC  7F 4C D3 78 */	mr r12, r26
/* 806589C0  4B D0 96 C4 */	b __ptmf_scall
/* 806589C4  60 00 00 00 */	nop 
/* 806589C8  28 03 00 00 */	cmplwi r3, 0
/* 806589CC  41 82 00 3C */	beq lbl_80658A08
/* 806589D0  38 9E 00 88 */	addi r4, r30, 0x88
/* 806589D4  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 806589D8  C0 44 00 08 */	lfs f2, 8(r4)
/* 806589DC  F0 01 00 18 */	psq_st f0, 24(r1), 0, 0 /* qr0 */
/* 806589E0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 806589E4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 806589E8  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 806589EC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806589F0  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 806589F4  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 806589F8  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 806589FC  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80658A00  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80658A04  D0 03 00 28 */	stfs f0, 0x28(r3)
lbl_80658A08:
/* 80658A08  3B 39 00 01 */	addi r25, r25, 1
/* 80658A0C  2C 19 00 02 */	cmpwi r25, 2
/* 80658A10  41 80 FF A0 */	blt lbl_806589B0
/* 80658A14  3B 18 00 01 */	addi r24, r24, 1
/* 80658A18  2C 18 00 03 */	cmpwi r24, 3
/* 80658A1C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80658A20  41 80 FF 88 */	blt lbl_806589A8
/* 80658A24  48 00 00 24 */	b lbl_80658A48
lbl_80658A28:
/* 80658A28  38 7D 0D 38 */	addi r3, r29, 0xd38
/* 80658A2C  38 9D 0D 3C */	addi r4, r29, 0xd3c
/* 80658A30  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80658A34  38 C0 00 00 */	li r6, 0
/* 80658A38  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80658A3C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80658A40  39 00 00 01 */	li r8, 1
/* 80658A44  4B 9C 45 DC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80658A48:
/* 80658A48  38 00 00 00 */	li r0, 0
/* 80658A4C  98 1D 0C B5 */	stb r0, 0xcb5(r29)
lbl_80658A50:
/* 80658A50  39 61 00 80 */	addi r11, r1, 0x80
/* 80658A54  4B D0 97 C0 */	b _restgpr_24
/* 80658A58  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80658A5C  7C 08 03 A6 */	mtlr r0
/* 80658A60  38 21 00 80 */	addi r1, r1, 0x80
/* 80658A64  4E 80 00 20 */	blr 
