lbl_800A87F8:
/* 800A87F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A87FC  7C 08 02 A6 */	mflr r0
/* 800A8800  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A8804  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800A8808  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800A880C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A8810  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A8814  7C 7F 1B 78 */	mr r31, r3
/* 800A8818  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800A881C  38 83 D6 58 */	addi r4, r3, lit_3757@l /* 0x8038D658@l */
/* 800A8820  A0 BF 2F E8 */	lhz r5, 0x2fe8(r31)
/* 800A8824  28 05 01 4D */	cmplwi r5, 0x14d
/* 800A8828  40 82 00 20 */	bne lbl_800A8848
/* 800A882C  C0 1F 34 E0 */	lfs f0, 0x34e0(r31)
/* 800A8830  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8834  C0 1F 34 E4 */	lfs f0, 0x34e4(r31)
/* 800A8838  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A883C  C0 1F 34 E8 */	lfs f0, 0x34e8(r31)
/* 800A8840  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8844  48 00 04 60 */	b lbl_800A8CA4
lbl_800A8848:
/* 800A8848  80 DF 31 A0 */	lwz r6, 0x31a0(r31)
/* 800A884C  54 C0 05 6B */	rlwinm. r0, r6, 0, 0x15, 0x15
/* 800A8850  41 82 01 90 */	beq lbl_800A89E0
/* 800A8854  83 DF 28 18 */	lwz r30, 0x2818(r31)
/* 800A8858  28 05 00 8C */	cmplwi r5, 0x8c
/* 800A885C  41 82 00 20 */	beq lbl_800A887C
/* 800A8860  28 05 00 8E */	cmplwi r5, 0x8e
/* 800A8864  41 82 00 18 */	beq lbl_800A887C
/* 800A8868  28 05 00 8F */	cmplwi r5, 0x8f
/* 800A886C  40 82 00 2C */	bne lbl_800A8898
/* 800A8870  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800A8874  2C 00 00 00 */	cmpwi r0, 0
/* 800A8878  41 82 00 20 */	beq lbl_800A8898
lbl_800A887C:
/* 800A887C  C0 1F 34 E0 */	lfs f0, 0x34e0(r31)
/* 800A8880  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8884  C0 1F 34 E4 */	lfs f0, 0x34e4(r31)
/* 800A8888  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A888C  C0 1F 34 E8 */	lfs f0, 0x34e8(r31)
/* 800A8890  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8894  48 00 04 10 */	b lbl_800A8CA4
lbl_800A8898:
/* 800A8898  7F E3 FB 78 */	mr r3, r31
/* 800A889C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A88A0  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800A88A4  7D 89 03 A6 */	mtctr r12
/* 800A88A8  4E 80 04 21 */	bctrl 
/* 800A88AC  28 03 00 00 */	cmplwi r3, 0
/* 800A88B0  40 82 00 20 */	bne lbl_800A88D0
/* 800A88B4  7F E3 FB 78 */	mr r3, r31
/* 800A88B8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A88BC  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800A88C0  7D 89 03 A6 */	mtctr r12
/* 800A88C4  4E 80 04 21 */	bctrl 
/* 800A88C8  28 03 00 00 */	cmplwi r3, 0
/* 800A88CC  41 82 00 28 */	beq lbl_800A88F4
lbl_800A88D0:
/* 800A88D0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800A88D4  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800A88D8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A88DC  EC 21 00 2A */	fadds f1, f1, f0
/* 800A88E0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A88E4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A88E8  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 800A88EC  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 800A88F0  48 00 03 B4 */	b lbl_800A8CA4
lbl_800A88F4:
/* 800A88F4  28 1E 00 00 */	cmplwi r30, 0
/* 800A88F8  41 82 00 C4 */	beq lbl_800A89BC
/* 800A88FC  7F E3 FB 78 */	mr r3, r31
/* 800A8900  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A8904  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800A8908  7D 89 03 A6 */	mtctr r12
/* 800A890C  4E 80 04 21 */	bctrl 
/* 800A8910  28 03 00 00 */	cmplwi r3, 0
/* 800A8914  41 82 00 84 */	beq lbl_800A8998
/* 800A8918  3C 60 80 42 */	lis r3, l_canoeBaseAnime@ha /* 0x804255EC@ha */
/* 800A891C  38 63 55 EC */	addi r3, r3, l_canoeBaseAnime@l /* 0x804255EC@l */
/* 800A8920  C0 83 00 08 */	lfs f4, 8(r3)
/* 800A8924  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 800A8928  28 00 00 02 */	cmplwi r0, 2
/* 800A892C  40 82 00 0C */	bne lbl_800A8938
/* 800A8930  C0 02 95 18 */	lfs f0, lit_20824(r2)
/* 800A8934  EC 84 00 2A */	fadds f4, f4, f0
lbl_800A8938:
/* 800A8938  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A893C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A8940  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800A8944  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A8948  7C 64 02 14 */	add r3, r4, r0
/* 800A894C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A8950  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800A8954  EC 04 00 32 */	fmuls f0, f4, f0
/* 800A8958  EC 61 00 2A */	fadds f3, f1, f0
/* 800A895C  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800A8960  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800A8964  3C 60 80 42 */	lis r3, l_canoeBaseAnime@ha /* 0x804255EC@ha */
/* 800A8968  38 63 55 EC */	addi r3, r3, l_canoeBaseAnime@l /* 0x804255EC@l */
/* 800A896C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A8970  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8974  EC 42 00 2A */	fadds f2, f2, f0
/* 800A8978  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A897C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800A8980  EC 04 00 32 */	fmuls f0, f4, f0
/* 800A8984  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8988  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A898C  D0 5F 05 54 */	stfs f2, 0x554(r31)
/* 800A8990  D0 7F 05 58 */	stfs f3, 0x558(r31)
/* 800A8994  48 00 03 10 */	b lbl_800A8CA4
lbl_800A8998:
/* 800A8998  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800A899C  C0 22 98 34 */	lfs f1, lit_58631(r2)
/* 800A89A0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800A89A4  EC 21 00 2A */	fadds f1, f1, f0
/* 800A89A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800A89AC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A89B0  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 800A89B4  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 800A89B8  48 00 02 EC */	b lbl_800A8CA4
lbl_800A89BC:
/* 800A89BC  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800A89C0  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800A89C4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A89C8  EC 21 00 2A */	fadds f1, f1, f0
/* 800A89CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A89D0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A89D4  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 800A89D8  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 800A89DC  48 00 02 C8 */	b lbl_800A8CA4
lbl_800A89E0:
/* 800A89E0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A89E4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A89E8  41 82 00 A4 */	beq lbl_800A8A8C
/* 800A89EC  54 C0 00 C7 */	rlwinm. r0, r6, 0, 3, 3
/* 800A89F0  41 82 00 20 */	beq lbl_800A8A10
/* 800A89F4  C0 1F 34 E0 */	lfs f0, 0x34e0(r31)
/* 800A89F8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A89FC  C0 1F 34 E4 */	lfs f0, 0x34e4(r31)
/* 800A8A00  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8A04  C0 1F 34 E8 */	lfs f0, 0x34e8(r31)
/* 800A8A08  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8A0C  48 00 02 98 */	b lbl_800A8CA4
lbl_800A8A10:
/* 800A8A10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A8A14  D0 01 00 08 */	stfs f0, 8(r1)
/* 800A8A18  C0 02 93 10 */	lfs f0, lit_7306(r2)
/* 800A8A1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A8A20  54 C0 03 5B */	rlwinm. r0, r6, 0, 0xd, 0xd
/* 800A8A24  40 82 00 0C */	bne lbl_800A8A30
/* 800A8A28  28 05 01 55 */	cmplwi r5, 0x155
/* 800A8A2C  40 82 00 10 */	bne lbl_800A8A3C
lbl_800A8A30:
/* 800A8A30  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800A8A34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800A8A38  48 00 00 20 */	b lbl_800A8A58
lbl_800A8A3C:
/* 800A8A3C  54 C0 01 CF */	rlwinm. r0, r6, 0, 7, 7
/* 800A8A40  41 82 00 10 */	beq lbl_800A8A50
/* 800A8A44  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800A8A48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800A8A4C  48 00 00 0C */	b lbl_800A8A58
lbl_800A8A50:
/* 800A8A50  C0 02 93 B0 */	lfs f0, lit_10039(r2)
/* 800A8A54  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_800A8A58:
/* 800A8A58  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A8A5C  38 63 00 24 */	addi r3, r3, 0x24
/* 800A8A60  38 81 00 08 */	addi r4, r1, 8
/* 800A8A64  38 BF 05 50 */	addi r5, r31, 0x550
/* 800A8A68  48 29 E3 05 */	bl PSMTXMultVec
/* 800A8A6C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A8A70  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A8A74  41 82 02 30 */	beq lbl_800A8CA4
/* 800A8A78  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800A8A7C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800A8A80  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8A84  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8A88  48 00 02 1C */	b lbl_800A8CA4
lbl_800A8A8C:
/* 800A8A8C  28 05 00 C6 */	cmplwi r5, 0xc6
/* 800A8A90  40 82 00 20 */	bne lbl_800A8AB0
/* 800A8A94  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 800A8A98  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8A9C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 800A8AA0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8AA4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 800A8AA8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8AAC  48 00 01 F8 */	b lbl_800A8CA4
lbl_800A8AB0:
/* 800A8AB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A8AB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A8AB8  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 800A8ABC  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800A8AC0  41 82 00 58 */	beq lbl_800A8B18
/* 800A8AC4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A8AC8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A8ACC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800A8AD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A8AD4  7C 64 02 14 */	add r3, r4, r0
/* 800A8AD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A8ADC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800A8AE0  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800A8AE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A8AE8  EC 81 00 2A */	fadds f4, f1, f0
/* 800A8AEC  C0 22 93 CC */	lfs f1, lit_10532(r2)
/* 800A8AF0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A8AF4  EC 61 00 2A */	fadds f3, f1, f0
/* 800A8AF8  7C 04 04 2E */	lfsx f0, r4, r0
/* 800A8AFC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A8B00  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A8B04  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8B08  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8B0C  D0 7F 05 54 */	stfs f3, 0x554(r31)
/* 800A8B10  D0 9F 05 58 */	stfs f4, 0x558(r31)
/* 800A8B14  48 00 01 90 */	b lbl_800A8CA4
lbl_800A8B18:
/* 800A8B18  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 800A8B1C  41 82 00 28 */	beq lbl_800A8B44
/* 800A8B20  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800A8B24  C0 22 94 A0 */	lfs f1, lit_16568(r2)
/* 800A8B28  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A8B2C  EC 21 00 2A */	fadds f1, f1, f0
/* 800A8B30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A8B34  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8B38  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 800A8B3C  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 800A8B40  48 00 01 64 */	b lbl_800A8CA4
lbl_800A8B44:
/* 800A8B44  54 C0 05 29 */	rlwinm. r0, r6, 0, 0x14, 0x14
/* 800A8B48  41 82 00 20 */	beq lbl_800A8B68
/* 800A8B4C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A8B50  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8B54  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800A8B58  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8B5C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800A8B60  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8B64  48 00 01 40 */	b lbl_800A8CA4
lbl_800A8B68:
/* 800A8B68  54 C0 06 73 */	rlwinm. r0, r6, 0, 0x19, 0x19
/* 800A8B6C  40 82 00 0C */	bne lbl_800A8B78
/* 800A8B70  28 05 00 DC */	cmplwi r5, 0xdc
/* 800A8B74  40 82 00 24 */	bne lbl_800A8B98
lbl_800A8B78:
/* 800A8B78  80 7F 06 58 */	lwz r3, 0x658(r31)
/* 800A8B7C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800A8B80  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8B84  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800A8B88  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8B8C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800A8B90  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8B94  48 00 01 10 */	b lbl_800A8CA4
lbl_800A8B98:
/* 800A8B98  28 05 00 17 */	cmplwi r5, 0x17
/* 800A8B9C  40 82 00 34 */	bne lbl_800A8BD0
/* 800A8BA0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A8BA4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800A8BA8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8BAC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 800A8BB0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8BB4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800A8BB8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8BBC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 800A8BC0  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800A8BC4  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8BC8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8BCC  48 00 00 D8 */	b lbl_800A8CA4
lbl_800A8BD0:
/* 800A8BD0  54 C0 02 11 */	rlwinm. r0, r6, 0, 8, 8
/* 800A8BD4  41 82 00 10 */	beq lbl_800A8BE4
/* 800A8BD8  38 84 49 88 */	addi r4, r4, 0x4988
/* 800A8BDC  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 800A8BE0  48 00 00 44 */	b lbl_800A8C24
lbl_800A8BE4:
/* 800A8BE4  54 C0 03 5B */	rlwinm. r0, r6, 0, 0xd, 0xd
/* 800A8BE8  41 82 00 10 */	beq lbl_800A8BF8
/* 800A8BEC  38 84 49 94 */	addi r4, r4, 0x4994
/* 800A8BF0  C3 FF 04 D4 */	lfs f31, 0x4d4(r31)
/* 800A8BF4  48 00 00 30 */	b lbl_800A8C24
lbl_800A8BF8:
/* 800A8BF8  28 05 01 55 */	cmplwi r5, 0x155
/* 800A8BFC  40 82 00 0C */	bne lbl_800A8C08
/* 800A8C00  38 84 49 94 */	addi r4, r4, 0x4994
/* 800A8C04  48 00 00 18 */	b lbl_800A8C1C
lbl_800A8C08:
/* 800A8C08  54 C0 01 CF */	rlwinm. r0, r6, 0, 7, 7
/* 800A8C0C  41 82 00 0C */	beq lbl_800A8C18
/* 800A8C10  38 84 49 7C */	addi r4, r4, 0x497c
/* 800A8C14  48 00 00 08 */	b lbl_800A8C1C
lbl_800A8C18:
/* 800A8C18  38 84 49 70 */	addi r4, r4, 0x4970
lbl_800A8C1C:
/* 800A8C1C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A8C20  C3 E3 00 40 */	lfs f31, 0x40(r3)
lbl_800A8C24:
/* 800A8C24  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A8C28  38 63 00 24 */	addi r3, r3, 0x24
/* 800A8C2C  38 BF 05 50 */	addi r5, r31, 0x550
/* 800A8C30  48 29 E2 1D */	bl PSMTXMultVecSR
/* 800A8C34  C0 3F 05 50 */	lfs f1, 0x550(r31)
/* 800A8C38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800A8C3C  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8C40  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 800A8C44  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 800A8C48  EC 00 F8 2A */	fadds f0, f0, f31
/* 800A8C4C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8C50  C0 3F 05 58 */	lfs f1, 0x558(r31)
/* 800A8C54  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800A8C58  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8C5C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 800A8C60  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A8C64  28 00 00 83 */	cmplwi r0, 0x83
/* 800A8C68  40 82 00 10 */	bne lbl_800A8C78
/* 800A8C6C  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 800A8C70  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 800A8C74  48 00 00 30 */	b lbl_800A8CA4
lbl_800A8C78:
/* 800A8C78  28 00 00 7C */	cmplwi r0, 0x7c
/* 800A8C7C  40 82 00 28 */	bne lbl_800A8CA4
/* 800A8C80  C0 7F 34 78 */	lfs f3, 0x3478(r31)
/* 800A8C84  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 800A8C88  EC 43 00 32 */	fmuls f2, f3, f0
/* 800A8C8C  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 800A8C90  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A8C94  EC 00 18 28 */	fsubs f0, f0, f3
/* 800A8C98  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A8C9C  EC 02 00 2A */	fadds f0, f2, f0
/* 800A8CA0  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_800A8CA4:
/* 800A8CA4  C0 1F 2B A8 */	lfs f0, 0x2ba8(r31)
/* 800A8CA8  C0 5F 34 58 */	lfs f2, 0x3458(r31)
/* 800A8CAC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800A8CB0  40 80 00 14 */	bge lbl_800A8CC4
/* 800A8CB4  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 800A8CB8  EC 02 00 28 */	fsubs f0, f2, f0
/* 800A8CBC  EC 01 00 2A */	fadds f0, f1, f0
/* 800A8CC0  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_800A8CC4:
/* 800A8CC4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800A8CC8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800A8CCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A8CD0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A8CD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A8CD8  7C 08 03 A6 */	mtlr r0
/* 800A8CDC  38 21 00 30 */	addi r1, r1, 0x30
/* 800A8CE0  4E 80 00 20 */	blr 
