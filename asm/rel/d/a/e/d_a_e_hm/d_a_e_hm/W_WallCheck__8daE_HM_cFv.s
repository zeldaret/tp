lbl_806E18A0:
/* 806E18A0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806E18A4  7C 08 02 A6 */	mflr r0
/* 806E18A8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806E18AC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806E18B0  4B C8 09 2C */	b _savegpr_29
/* 806E18B4  7C 7F 1B 78 */	mr r31, r3
/* 806E18B8  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E18BC  38 63 59 20 */	addi r3, r3, lit_3791@l
/* 806E18C0  C0 23 00 04 */	lfs f1, 4(r3)
/* 806E18C4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806E18C8  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 806E18CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E18D0  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 806E18D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E18D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E18DC  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 806E18E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E18E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806E18E8  38 61 00 34 */	addi r3, r1, 0x34
/* 806E18EC  4B 99 63 7C */	b __ct__11dBgS_LinChkFv
/* 806E18F0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E18F4  4B 92 B4 70 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806E18F8  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E18FC  4B 92 B6 48 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E1900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E1904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E1908  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806E190C  4B 92 AB 28 */	b mDoMtx_YrotM__FPA4_fs
/* 806E1910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E1914  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E1918  38 81 00 14 */	addi r4, r1, 0x14
/* 806E191C  7C 85 23 78 */	mr r5, r4
/* 806E1920  4B C6 54 4C */	b PSMTXMultVec
/* 806E1924  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E1928  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E192C  38 81 00 08 */	addi r4, r1, 8
/* 806E1930  7C 85 23 78 */	mr r5, r4
/* 806E1934  4B C6 54 38 */	b PSMTXMultVec
/* 806E1938  38 61 00 34 */	addi r3, r1, 0x34
/* 806E193C  38 81 00 08 */	addi r4, r1, 8
/* 806E1940  38 A1 00 14 */	addi r5, r1, 0x14
/* 806E1944  38 C0 00 00 */	li r6, 0
/* 806E1948  4B 99 64 1C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E194C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E1954  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 806E1958  7F C3 F3 78 */	mr r3, r30
/* 806E195C  38 81 00 34 */	addi r4, r1, 0x34
/* 806E1960  4B 99 2A 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806E1964  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E1968  41 82 00 70 */	beq lbl_806E19D8
/* 806E196C  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1970  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1974  90 01 00 30 */	stw r0, 0x30(r1)
/* 806E1978  7F C3 F3 78 */	mr r3, r30
/* 806E197C  3B A1 00 48 */	addi r29, r1, 0x48
/* 806E1980  7F A4 EB 78 */	mr r4, r29
/* 806E1984  38 A1 00 20 */	addi r5, r1, 0x20
/* 806E1988  4B 99 2D BC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E198C  7F C3 F3 78 */	mr r3, r30
/* 806E1990  7F A4 EB 78 */	mr r4, r29
/* 806E1994  4B 99 33 78 */	b GetMagnetCode__4dBgSFRC13cBgS_PolyInfo
/* 806E1998  2C 03 00 00 */	cmpwi r3, 0
/* 806E199C  40 82 00 30 */	bne lbl_806E19CC
/* 806E19A0  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 806E19A4  38 03 02 00 */	addi r0, r3, 0x200
/* 806E19A8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 806E19AC  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E19B0  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E19B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 806E19B8  38 61 00 34 */	addi r3, r1, 0x34
/* 806E19BC  38 80 FF FF */	li r4, -1
/* 806E19C0  4B 99 63 1C */	b __dt__11dBgS_LinChkFv
/* 806E19C4  38 60 00 01 */	li r3, 1
/* 806E19C8  48 00 00 20 */	b lbl_806E19E8
lbl_806E19CC:
/* 806E19CC  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E19D0  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E19D4  90 01 00 30 */	stw r0, 0x30(r1)
lbl_806E19D8:
/* 806E19D8  38 61 00 34 */	addi r3, r1, 0x34
/* 806E19DC  38 80 FF FF */	li r4, -1
/* 806E19E0  4B 99 62 FC */	b __dt__11dBgS_LinChkFv
/* 806E19E4  38 60 00 00 */	li r3, 0
lbl_806E19E8:
/* 806E19E8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806E19EC  4B C8 08 3C */	b _restgpr_29
/* 806E19F0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806E19F4  7C 08 03 A6 */	mtlr r0
/* 806E19F8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806E19FC  4E 80 00 20 */	blr 
