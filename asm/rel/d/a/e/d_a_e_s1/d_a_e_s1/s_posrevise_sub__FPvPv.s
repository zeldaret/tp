lbl_8077CB68:
/* 8077CB68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077CB6C  7C 08 02 A6 */	mflr r0
/* 8077CB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077CB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077CB78  93 C1 00 08 */	stw r30, 8(r1)
/* 8077CB7C  7C 7F 1B 78 */	mr r31, r3
/* 8077CB80  7C 9E 23 78 */	mr r30, r4
/* 8077CB84  4B 89 C1 5D */	bl fopAc_IsActor__FPv
/* 8077CB88  2C 03 00 00 */	cmpwi r3, 0
/* 8077CB8C  41 82 00 AC */	beq lbl_8077CC38
/* 8077CB90  A8 1F 00 08 */	lha r0, 8(r31)
/* 8077CB94  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 8077CB98  40 82 00 A0 */	bne lbl_8077CC38
/* 8077CB9C  7C 1F F0 40 */	cmplw r31, r30
/* 8077CBA0  41 82 00 98 */	beq lbl_8077CC38
/* 8077CBA4  3C 60 80 78 */	lis r3, s_check@ha /* 0x807814C0@ha */
/* 8077CBA8  38 83 14 C0 */	addi r4, r3, s_check@l /* 0x807814C0@l */
/* 8077CBAC  80 04 00 00 */	lwz r0, 0(r4)
/* 8077CBB0  2C 00 00 01 */	cmpwi r0, 1
/* 8077CBB4  41 81 00 84 */	bgt lbl_8077CC38
/* 8077CBB8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8077CBBC  3C 60 80 78 */	lis r3, s_p@ha /* 0x807814DC@ha */
/* 8077CBC0  38 63 14 DC */	addi r3, r3, s_p@l /* 0x807814DC@l */
/* 8077CBC4  7C A3 02 14 */	add r5, r3, r0
/* 8077CBC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8077CBCC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8077CBD0  C0 05 00 04 */	lfs f0, 4(r5)
/* 8077CBD4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8077CBD8  C0 05 00 08 */	lfs f0, 8(r5)
/* 8077CBDC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8077CBE0  80 04 00 00 */	lwz r0, 0(r4)
/* 8077CBE4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8077CBE8  7C 63 02 14 */	add r3, r3, r0
/* 8077CBEC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8077CBF0  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8077CBF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8077CBF8  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8077CBFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8077CC00  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8077CC04  80 04 00 00 */	lwz r0, 0(r4)
/* 8077CC08  54 00 08 3C */	slwi r0, r0, 1
/* 8077CC0C  3C 60 80 78 */	lis r3, s_ya@ha /* 0x80780FE0@ha */
/* 8077CC10  38 63 0F E0 */	addi r3, r3, s_ya@l /* 0x80780FE0@l */
/* 8077CC14  7C 03 02 AE */	lhax r0, r3, r0
/* 8077CC18  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8077CC1C  80 04 00 00 */	lwz r0, 0(r4)
/* 8077CC20  54 00 08 3C */	slwi r0, r0, 1
/* 8077CC24  7C 03 02 AE */	lhax r0, r3, r0
/* 8077CC28  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8077CC2C  80 64 00 00 */	lwz r3, 0(r4)
/* 8077CC30  38 03 00 01 */	addi r0, r3, 1
/* 8077CC34  90 04 00 00 */	stw r0, 0(r4)
lbl_8077CC38:
/* 8077CC38  38 60 00 00 */	li r3, 0
/* 8077CC3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8077CC40  83 C1 00 08 */	lwz r30, 8(r1)
/* 8077CC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077CC48  7C 08 03 A6 */	mtlr r0
/* 8077CC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8077CC50  4E 80 00 20 */	blr 
