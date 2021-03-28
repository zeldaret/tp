lbl_800C47AC:
/* 800C47AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C47B0  7C 08 02 A6 */	mflr r0
/* 800C47B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C47B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C47BC  93 C1 00 08 */	stw r30, 8(r1)
/* 800C47C0  7C 7E 1B 78 */	mr r30, r3
/* 800C47C4  7C 9F 23 78 */	mr r31, r4
/* 800C47C8  38 80 00 0D */	li r4, 0xd
/* 800C47CC  4B FF D7 A1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C47D0  2C 1F 00 00 */	cmpwi r31, 0
/* 800C47D4  41 82 00 5C */	beq lbl_800C4830
/* 800C47D8  7F C3 F3 78 */	mr r3, r30
/* 800C47DC  38 80 00 BF */	li r4, 0xbf
/* 800C47E0  3C A0 80 39 */	lis r5, m__19daAlinkHIO_slide_c0@ha
/* 800C47E4  38 A5 D8 CC */	addi r5, r5, m__19daAlinkHIO_slide_c0@l
/* 800C47E8  38 A5 00 28 */	addi r5, r5, 0x28
/* 800C47EC  4B FE 89 09 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C47F0  3C 60 80 39 */	lis r3, m__19daAlinkHIO_slide_c0@ha
/* 800C47F4  38 63 D8 CC */	addi r3, r3, m__19daAlinkHIO_slide_c0@l
/* 800C47F8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800C47FC  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800C4800  38 00 00 01 */	li r0, 1
/* 800C4804  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800C4808  38 00 00 04 */	li r0, 4
/* 800C480C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800C4810  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800C4814  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 800C4818  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800C481C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C4820  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800C4824  C0 03 00 08 */	lfs f0, 8(r3)
/* 800C4828  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800C482C  48 00 00 34 */	b lbl_800C4860
lbl_800C4830:
/* 800C4830  7F C3 F3 78 */	mr r3, r30
/* 800C4834  38 80 00 C0 */	li r4, 0xc0
/* 800C4838  3C A0 80 39 */	lis r5, m__19daAlinkHIO_slide_c0@ha
/* 800C483C  38 A5 D8 CC */	addi r5, r5, m__19daAlinkHIO_slide_c0@l
/* 800C4840  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800C4844  4B FE 88 B1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C4848  3C 60 80 39 */	lis r3, m__19daAlinkHIO_slide_c0@ha
/* 800C484C  38 63 D8 CC */	addi r3, r3, m__19daAlinkHIO_slide_c0@l
/* 800C4850  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800C4854  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800C4858  38 00 00 00 */	li r0, 0
/* 800C485C  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_800C4860:
/* 800C4860  38 00 00 FF */	li r0, 0xff
/* 800C4864  98 1E 08 28 */	stb r0, 0x828(r30)
/* 800C4868  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800C486C  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800C4870  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C4874  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C4878  38 60 00 01 */	li r3, 1
/* 800C487C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4880  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C4884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C4888  7C 08 03 A6 */	mtlr r0
/* 800C488C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4890  4E 80 00 20 */	blr 
