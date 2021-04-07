lbl_8029A800:
/* 8029A800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A804  7C 08 02 A6 */	mflr r0
/* 8029A808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A810  7C 7F 1B 78 */	mr r31, r3
/* 8029A814  38 00 00 00 */	li r0, 0
/* 8029A818  90 03 00 00 */	stw r0, 0(r3)
/* 8029A81C  90 03 00 08 */	stw r0, 8(r3)
/* 8029A820  90 83 00 0C */	stw r4, 0xc(r3)
/* 8029A824  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8029A828  90 03 00 14 */	stw r0, 0x14(r3)
/* 8029A82C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8029A830  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8029A834  3C 80 80 2A */	lis r4, __ct__13JASOscillatorFv@ha /* 0x8029BE94@ha */
/* 8029A838  38 84 BE 94 */	addi r4, r4, __ct__13JASOscillatorFv@l /* 0x8029BE94@l */
/* 8029A83C  38 A0 00 00 */	li r5, 0
/* 8029A840  38 C0 00 20 */	li r6, 0x20
/* 8029A844  38 E0 00 02 */	li r7, 2
/* 8029A848  48 0C 75 19 */	bl __construct_array
/* 8029A84C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8029A850  48 00 14 C5 */	bl __ct__6JASLfoFv
/* 8029A854  38 7F 00 74 */	addi r3, r31, 0x74
/* 8029A858  48 00 14 BD */	bl __ct__6JASLfoFv
/* 8029A85C  C0 42 BC 80 */	lfs f2, lit_544(r2)
/* 8029A860  D0 5F 00 9C */	stfs f2, 0x9c(r31)
/* 8029A864  D0 5F 00 A0 */	stfs f2, 0xa0(r31)
/* 8029A868  C0 22 BC 84 */	lfs f1, lit_545(r2)
/* 8029A86C  D0 3F 00 A4 */	stfs f1, 0xa4(r31)
/* 8029A870  C0 02 BC 88 */	lfs f0, lit_546(r2)
/* 8029A874  D0 1F 00 A8 */	stfs f0, 0xa8(r31)
/* 8029A878  D0 3F 00 AC */	stfs f1, 0xac(r31)
/* 8029A87C  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
/* 8029A880  D0 5F 00 B4 */	stfs f2, 0xb4(r31)
/* 8029A884  D0 5F 00 BC */	stfs f2, 0xbc(r31)
/* 8029A888  D0 3F 00 B8 */	stfs f1, 0xb8(r31)
/* 8029A88C  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 8029A890  D0 3F 00 C4 */	stfs f1, 0xc4(r31)
/* 8029A894  38 60 00 00 */	li r3, 0
/* 8029A898  B0 7F 00 C8 */	sth r3, 0xc8(r31)
/* 8029A89C  38 00 00 7F */	li r0, 0x7f
/* 8029A8A0  B0 1F 00 CA */	sth r0, 0xca(r31)
/* 8029A8A4  D0 3F 00 CC */	stfs f1, 0xcc(r31)
/* 8029A8A8  D0 3F 00 D0 */	stfs f1, 0xd0(r31)
/* 8029A8AC  90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 8029A8B0  90 7F 00 D8 */	stw r3, 0xd8(r31)
/* 8029A8B4  38 00 00 3C */	li r0, 0x3c
/* 8029A8B8  98 1F 00 E1 */	stb r0, 0xe1(r31)
/* 8029A8BC  38 0D 82 38 */	la r0, one__11JASWaveInfo(r13) /* 804507B8-_SDA_BASE_ */
/* 8029A8C0  90 1F 01 00 */	stw r0, 0x100(r31)
/* 8029A8C4  90 7F 00 DC */	stw r3, 0xdc(r31)
/* 8029A8C8  90 7F 01 04 */	stw r3, 0x104(r31)
/* 8029A8CC  38 00 01 50 */	li r0, 0x150
/* 8029A8D0  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8029A8D4  38 00 02 10 */	li r0, 0x210
/* 8029A8D8  B0 1F 00 8E */	sth r0, 0x8e(r31)
/* 8029A8DC  38 00 03 52 */	li r0, 0x352
/* 8029A8E0  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 8029A8E4  38 00 04 12 */	li r0, 0x412
/* 8029A8E8  B0 1F 00 92 */	sth r0, 0x92(r31)
/* 8029A8EC  B0 7F 00 94 */	sth r3, 0x94(r31)
/* 8029A8F0  B0 7F 00 96 */	sth r3, 0x96(r31)
/* 8029A8F4  38 00 01 3F */	li r0, 0x13f
/* 8029A8F8  B0 1F 00 98 */	sth r0, 0x98(r31)
/* 8029A8FC  98 7F 00 04 */	stb r3, 4(r31)
/* 8029A900  7F E3 FB 78 */	mr r3, r31
/* 8029A904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A90C  7C 08 03 A6 */	mtlr r0
/* 8029A910  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A914  4E 80 00 20 */	blr 
