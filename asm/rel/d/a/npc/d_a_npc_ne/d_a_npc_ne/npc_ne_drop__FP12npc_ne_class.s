lbl_80A8EA78:
/* 80A8EA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A8EA7C  7C 08 02 A6 */	mflr r0
/* 80A8EA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8EA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A8EA88  93 C1 00 08 */	stw r30, 8(r1)
/* 80A8EA8C  7C 7E 1B 78 */	mr r30, r3
/* 80A8EA90  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8EA94  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8EA98  A8 83 06 46 */	lha r4, 0x646(r3)
/* 80A8EA9C  2C 04 00 01 */	cmpwi r4, 1
/* 80A8EAA0  41 82 00 44 */	beq lbl_80A8EAE4
/* 80A8EAA4  40 80 00 10 */	bge lbl_80A8EAB4
/* 80A8EAA8  2C 04 00 00 */	cmpwi r4, 0
/* 80A8EAAC  40 80 00 14 */	bge lbl_80A8EAC0
/* 80A8EAB0  48 00 00 98 */	b lbl_80A8EB48
lbl_80A8EAB4:
/* 80A8EAB4  2C 04 00 03 */	cmpwi r4, 3
/* 80A8EAB8  40 80 00 90 */	bge lbl_80A8EB48
/* 80A8EABC  48 00 00 6C */	b lbl_80A8EB28
lbl_80A8EAC0:
/* 80A8EAC0  38 04 00 01 */	addi r0, r4, 1
/* 80A8EAC4  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EAC8  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80A8EACC  D0 5E 05 2C */	stfs f2, 0x52c(r30)
/* 80A8EAD0  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 80A8EAD4  38 80 00 0C */	li r4, 0xc
/* 80A8EAD8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8EADC  38 A0 00 00 */	li r5, 0
/* 80A8EAE0  4B FF A2 35 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8EAE4:
/* 80A8EAE4  38 00 30 00 */	li r0, 0x3000
/* 80A8EAE8  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A8EAEC  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 80A8EAF0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A8EAF4  41 82 00 54 */	beq lbl_80A8EB48
/* 80A8EAF8  38 00 00 00 */	li r0, 0
/* 80A8EAFC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80A8EB00  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A8EB04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A8EB08  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A8EB0C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A8EB10  38 00 00 0A */	li r0, 0xa
/* 80A8EB14  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8EB18  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8EB1C  38 03 00 01 */	addi r0, r3, 1
/* 80A8EB20  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EB24  48 00 00 24 */	b lbl_80A8EB48
lbl_80A8EB28:
/* 80A8EB28  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8EB2C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8EB30  40 82 00 18 */	bne lbl_80A8EB48
/* 80A8EB34  38 00 00 00 */	li r0, 0
/* 80A8EB38  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8EB3C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8EB40  38 00 00 01 */	li r0, 1
/* 80A8EB44  98 1E 07 00 */	stb r0, 0x700(r30)
lbl_80A8EB48:
/* 80A8EB48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A8EB4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A8EB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8EB54  7C 08 03 A6 */	mtlr r0
/* 80A8EB58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8EB5C  4E 80 00 20 */	blr 
