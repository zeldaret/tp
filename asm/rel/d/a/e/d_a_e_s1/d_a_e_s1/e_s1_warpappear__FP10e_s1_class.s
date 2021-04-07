lbl_8077D6A0:
/* 8077D6A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8077D6A4  7C 08 02 A6 */	mflr r0
/* 8077D6A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077D6AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8077D6B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8077D6B4  7C 7E 1B 78 */	mr r30, r3
/* 8077D6B8  3C 80 80 78 */	lis r4, lit_3903@ha /* 0x80780DC4@ha */
/* 8077D6BC  3B E4 0D C4 */	addi r31, r4, lit_3903@l /* 0x80780DC4@l */
/* 8077D6C0  38 00 00 14 */	li r0, 0x14
/* 8077D6C4  B0 03 06 A8 */	sth r0, 0x6a8(r3)
/* 8077D6C8  A8 03 06 98 */	lha r0, 0x698(r3)
/* 8077D6CC  28 00 00 14 */	cmplwi r0, 0x14
/* 8077D6D0  41 81 01 C0 */	bgt lbl_8077D890
/* 8077D6D4  3C 80 80 78 */	lis r4, lit_5100@ha /* 0x80781060@ha */
/* 8077D6D8  38 84 10 60 */	addi r4, r4, lit_5100@l /* 0x80781060@l */
/* 8077D6DC  54 00 10 3A */	slwi r0, r0, 2
/* 8077D6E0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8077D6E4  7C 09 03 A6 */	mtctr r0
/* 8077D6E8  4E 80 04 20 */	bctr 
lbl_8077D6EC:
/* 8077D6EC  38 80 00 13 */	li r4, 0x13
/* 8077D6F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077D6F4  38 A0 00 00 */	li r5, 0
/* 8077D6F8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8077D6FC  4B FF D4 FD */	bl anm_init__FP10e_s1_classifUcf
/* 8077D700  38 00 00 01 */	li r0, 1
/* 8077D704  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077D708:
/* 8077D708  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8077D70C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8077D710  EC 01 00 2A */	fadds f0, f1, f0
/* 8077D714  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8077D718  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077D71C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8077D720  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8077D724  48 00 01 6C */	b lbl_8077D890
lbl_8077D728:
/* 8077D728  38 00 00 0A */	li r0, 0xa
/* 8077D72C  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 8077D730  48 00 01 60 */	b lbl_8077D890
lbl_8077D734:
/* 8077D734  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 8077D738  2C 00 00 00 */	cmpwi r0, 0
/* 8077D73C  40 82 01 54 */	bne lbl_8077D890
/* 8077D740  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8077D744  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8077D748  41 82 01 48 */	beq lbl_8077D890
/* 8077D74C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8077D750  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8077D754  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8077D758  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8077D75C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8077D760  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8077D764  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 8077D768  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8077D76C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 8077D770  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8077D774  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 8077D778  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 8077D77C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8077D780  98 1E 04 E2 */	stb r0, 0x4e2(r30)
/* 8077D784  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 8077D788  98 1E 04 E3 */	stb r0, 0x4e3(r30)
/* 8077D78C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8077D790  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 8077D794  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8077D798  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8077D79C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8077D7A0  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 8077D7A4  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8077D7A8  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 8077D7AC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8077D7B0  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 8077D7B4  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8077D7B8  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 8077D7BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8077D7C0  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 8077D7C4  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 8077D7C8  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 8077D7CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8077D7D0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8077D7D4  38 00 00 0B */	li r0, 0xb
/* 8077D7D8  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077D7DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007000F@ha */
/* 8077D7E0  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0007000F@l */
/* 8077D7E4  90 01 00 08 */	stw r0, 8(r1)
/* 8077D7E8  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 8077D7EC  38 81 00 08 */	addi r4, r1, 8
/* 8077D7F0  38 A0 00 00 */	li r5, 0
/* 8077D7F4  38 C0 FF FF */	li r6, -1
/* 8077D7F8  81 9E 05 E0 */	lwz r12, 0x5e0(r30)
/* 8077D7FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077D800  7D 89 03 A6 */	mtctr r12
/* 8077D804  4E 80 04 21 */	bctrl 
lbl_8077D808:
/* 8077D808  38 00 00 0C */	li r0, 0xc
/* 8077D80C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077D810  7F C3 F3 78 */	mr r3, r30
/* 8077D814  38 80 00 13 */	li r4, 0x13
/* 8077D818  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8077D81C  38 A0 00 00 */	li r5, 0
/* 8077D820  FC 40 08 90 */	fmr f2, f1
/* 8077D824  4B FF D3 D5 */	bl anm_init__FP10e_s1_classifUcf
/* 8077D828  48 00 00 68 */	b lbl_8077D890
lbl_8077D82C:
/* 8077D82C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8077D830  38 80 00 01 */	li r4, 1
/* 8077D834  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8077D838  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8077D83C  40 82 00 18 */	bne lbl_8077D854
/* 8077D840  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8077D844  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8077D848  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8077D84C  41 82 00 08 */	beq lbl_8077D854
/* 8077D850  38 80 00 00 */	li r4, 0
lbl_8077D854:
/* 8077D854  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8077D858  41 82 00 38 */	beq lbl_8077D890
/* 8077D85C  7F C3 F3 78 */	mr r3, r30
/* 8077D860  38 80 00 1E */	li r4, 0x1e
/* 8077D864  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8077D868  38 A0 00 02 */	li r5, 2
/* 8077D86C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8077D870  4B FF D3 89 */	bl anm_init__FP10e_s1_classifUcf
/* 8077D874  38 00 00 0D */	li r0, 0xd
/* 8077D878  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 8077D87C  48 00 00 14 */	b lbl_8077D890
lbl_8077D880:
/* 8077D880  38 00 00 00 */	li r0, 0
/* 8077D884  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8077D888  38 00 00 02 */	li r0, 2
/* 8077D88C  B0 1E 06 98 */	sth r0, 0x698(r30)
lbl_8077D890:
/* 8077D890  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8077D894  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8077D898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077D89C  7C 08 03 A6 */	mtlr r0
/* 8077D8A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8077D8A4  4E 80 00 20 */	blr 
