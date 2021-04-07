lbl_80AC18A0:
/* 80AC18A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AC18A4  7C 08 02 A6 */	mflr r0
/* 80AC18A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC18AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80AC18B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80AC18B4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80AC18B8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80AC18BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC18C0  7C 7F 1B 78 */	mr r31, r3
/* 80AC18C4  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AC18C8  28 00 00 00 */	cmplwi r0, 0
/* 80AC18CC  40 82 01 08 */	bne lbl_80AC19D4
/* 80AC18D0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80AC18D4  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80AC18D8  38 A0 00 1F */	li r5, 0x1f
/* 80AC18DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC18E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC18E4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80AC18E8  28 00 00 00 */	cmplwi r0, 0
/* 80AC18EC  41 82 00 10 */	beq lbl_80AC18FC
/* 80AC18F0  38 80 00 00 */	li r4, 0
/* 80AC18F4  38 A0 00 00 */	li r5, 0
/* 80AC18F8  48 00 00 30 */	b lbl_80AC1928
lbl_80AC18FC:
/* 80AC18FC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AC1900  28 00 00 00 */	cmplwi r0, 0
/* 80AC1904  41 82 00 10 */	beq lbl_80AC1914
/* 80AC1908  38 80 00 00 */	li r4, 0
/* 80AC190C  38 A0 00 00 */	li r5, 0
/* 80AC1910  48 00 00 18 */	b lbl_80AC1928
lbl_80AC1914:
/* 80AC1914  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AC1918  2C 00 00 00 */	cmpwi r0, 0
/* 80AC191C  41 82 00 0C */	beq lbl_80AC1928
/* 80AC1920  38 80 00 00 */	li r4, 0
/* 80AC1924  38 A0 00 00 */	li r5, 0
lbl_80AC1928:
/* 80AC1928  38 00 00 79 */	li r0, 0x79
/* 80AC192C  90 1F 0E 78 */	stw r0, 0xe78(r31)
/* 80AC1930  90 9F 0E 74 */	stw r4, 0xe74(r31)
/* 80AC1934  90 BF 0E 64 */	stw r5, 0xe64(r31)
/* 80AC1938  80 1F 0E E8 */	lwz r0, 0xee8(r31)
/* 80AC193C  60 00 00 04 */	ori r0, r0, 4
/* 80AC1940  90 1F 0E E8 */	stw r0, 0xee8(r31)
/* 80AC1944  3C 60 80 AC */	lis r3, lit_4231@ha /* 0x80AC45AC@ha */
/* 80AC1948  C0 03 45 AC */	lfs f0, lit_4231@l(r3)  /* 0x80AC45AC@l */
/* 80AC194C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AC1950  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AC1954  3C 60 80 AC */	lis r3, lit_4876@ha /* 0x80AC4608@ha */
/* 80AC1958  C0 03 46 08 */	lfs f0, lit_4876@l(r3)  /* 0x80AC4608@l */
/* 80AC195C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AC1960  C3 FF 0D EC */	lfs f31, 0xdec(r31)
/* 80AC1964  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80AC1968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AC196C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AC1970  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80AC1974  4B 54 AA 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80AC1978  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AC197C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AC1980  38 81 00 08 */	addi r4, r1, 8
/* 80AC1984  7C 85 23 78 */	mr r5, r4
/* 80AC1988  4B 88 53 E5 */	bl PSMTXMultVec
/* 80AC198C  38 61 00 08 */	addi r3, r1, 8
/* 80AC1990  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AC1994  7C 65 1B 78 */	mr r5, r3
/* 80AC1998  4B 88 56 F9 */	bl PSVECAdd
/* 80AC199C  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80AC19A0  FC 20 F8 90 */	fmr f1, f31
/* 80AC19A4  4B 7A D8 55 */	bl SetH__8cM3dGCylFf
/* 80AC19A8  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80AC19AC  FC 20 F0 90 */	fmr f1, f30
/* 80AC19B0  4B 7A D8 51 */	bl SetR__8cM3dGCylFf
/* 80AC19B4  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80AC19B8  38 81 00 08 */	addi r4, r1, 8
/* 80AC19BC  4B 7A D8 21 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AC19C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC19C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC19C8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AC19CC  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80AC19D0  4B 7A 31 D9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80AC19D4:
/* 80AC19D4  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80AC19D8  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80AC19DC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80AC19E0  7D 89 03 A6 */	mtctr r12
/* 80AC19E4  4E 80 04 21 */	bctrl 
/* 80AC19E8  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80AC19EC  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80AC19F0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AC19F4  7D 89 03 A6 */	mtctr r12
/* 80AC19F8  4E 80 04 21 */	bctrl 
/* 80AC19FC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80AC1A00  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80AC1A04  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80AC1A08  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80AC1A0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC1A10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC1A14  7C 08 03 A6 */	mtlr r0
/* 80AC1A18  38 21 00 40 */	addi r1, r1, 0x40
/* 80AC1A1C  4E 80 00 20 */	blr 
