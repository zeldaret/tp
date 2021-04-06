lbl_800C692C:
/* 800C692C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C6930  7C 08 02 A6 */	mflr r0
/* 800C6934  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C6938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C693C  7C 7F 1B 78 */	mr r31, r3
/* 800C6940  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800C6944  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C6948  41 82 00 10 */	beq lbl_800C6958
/* 800C694C  38 80 00 00 */	li r4, 0
/* 800C6950  4B FE F3 7D */	bl checkLandAction__9daAlink_cFi
/* 800C6954  48 00 00 E0 */	b lbl_800C6A34
lbl_800C6958:
/* 800C6958  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800C695C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C6960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6964  40 80 00 1C */	bge lbl_800C6980
/* 800C6968  38 80 00 03 */	li r4, 3
/* 800C696C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6970  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6974  C0 25 00 84 */	lfs f1, 0x84(r5)
/* 800C6978  48 00 00 D1 */	bl procFallInit__9daAlink_cFif
/* 800C697C  48 00 00 B4 */	b lbl_800C6A30
lbl_800C6980:
/* 800C6980  A8 BF 04 E4 */	lha r5, 0x4e4(r31)
/* 800C6984  3C 80 80 39 */	lis r4, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6988  38 84 E0 68 */	addi r4, r4, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C698C  A8 04 00 54 */	lha r0, 0x54(r4)
/* 800C6990  7C 05 02 14 */	add r0, r5, r0
/* 800C6994  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 800C6998  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800C699C  7C 00 29 D7 */	mullw. r0, r0, r5
/* 800C69A0  41 81 00 3C */	bgt lbl_800C69DC
/* 800C69A4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C69A8  2C 00 00 00 */	cmpwi r0, 0
/* 800C69AC  41 82 00 28 */	beq lbl_800C69D4
/* 800C69B0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002005C@ha */
/* 800C69B4  38 84 00 5C */	addi r4, r4, 0x005C /* 0x0002005C@l */
/* 800C69B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800C69BC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800C69C0  7D 89 03 A6 */	mtctr r12
/* 800C69C4  4E 80 04 21 */	bctrl 
/* 800C69C8  38 00 00 00 */	li r0, 0
/* 800C69CC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C69D0  48 00 00 0C */	b lbl_800C69DC
lbl_800C69D4:
/* 800C69D4  38 00 00 01 */	li r0, 1
/* 800C69D8  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800C69DC:
/* 800C69DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C69E0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C69E4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C69E8  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800C69EC  7C 03 00 50 */	subf r0, r3, r0
/* 800C69F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C69F4  7C 64 02 14 */	add r3, r4, r0
/* 800C69F8  C0 43 00 04 */	lfs f2, 4(r3)
/* 800C69FC  38 7F 34 7C */	addi r3, r31, 0x347c
/* 800C6A00  3C 80 80 39 */	lis r4, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C6A04  38 84 E0 68 */	addi r4, r4, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C6A08  C0 24 00 88 */	lfs f1, 0x88(r4)
/* 800C6A0C  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 800C6A10  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800C6A14  EC 21 00 32 */	fmuls f1, f1, f0
/* 800C6A18  C0 44 00 8C */	lfs f2, 0x8c(r4)
/* 800C6A1C  48 1A 9D 25 */	bl cLib_chaseF__FPfff
/* 800C6A20  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800C6A24  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 800C6A28  EC 01 00 2A */	fadds f0, f1, f0
/* 800C6A2C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_800C6A30:
/* 800C6A30  38 60 00 01 */	li r3, 1
lbl_800C6A34:
/* 800C6A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6A3C  7C 08 03 A6 */	mtlr r0
/* 800C6A40  38 21 00 10 */	addi r1, r1, 0x10
/* 800C6A44  4E 80 00 20 */	blr 
