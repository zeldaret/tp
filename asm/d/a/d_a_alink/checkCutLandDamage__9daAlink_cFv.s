lbl_800D6FE0:
/* 800D6FE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D6FE4  7C 08 02 A6 */	mflr r0
/* 800D6FE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D6FEC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800D6FF0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800D6FF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6FF8  7C 7F 1B 78 */	mr r31, r3
/* 800D6FFC  48 03 EC 25 */	bl checkEventRun__9daAlink_cCFv
/* 800D7000  2C 03 00 00 */	cmpwi r3, 0
/* 800D7004  40 82 00 80 */	bne lbl_800D7084
/* 800D7008  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 800D700C  C0 3F 33 C4 */	lfs f1, 0x33c4(r31)
/* 800D7010  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800D7014  EC 01 00 28 */	fsubs f0, f1, f0
/* 800D7018  EF E2 00 32 */	fmuls f31, f2, f0
/* 800D701C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800D7020  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800D7024  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800D7028  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800D702C  4C 41 13 82 */	cror 2, 1, 2
/* 800D7030  40 82 00 54 */	bne lbl_800D7084
/* 800D7034  7F E3 FB 78 */	mr r3, r31
/* 800D7038  4B FF FE F5 */	bl checkNoLandDamageSlidePolygon__9daAlink_cFv
/* 800D703C  2C 03 00 00 */	cmpwi r3, 0
/* 800D7040  40 82 00 44 */	bne lbl_800D7084
/* 800D7044  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha /* 0x8038E454@ha */
/* 800D7048  38 63 E4 54 */	addi r3, r3, m__21daAlinkHIO_damFall_c0@l /* 0x8038E454@l */
/* 800D704C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D7050  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800D7054  4C 41 13 82 */	cror 2, 1, 2
/* 800D7058  40 82 00 14 */	bne lbl_800D706C
/* 800D705C  7F E3 FB 78 */	mr r3, r31
/* 800D7060  38 80 00 08 */	li r4, 8
/* 800D7064  48 00 04 41 */	bl setLandDamagePoint__9daAlink_cFi
/* 800D7068  48 00 00 10 */	b lbl_800D7078
lbl_800D706C:
/* 800D706C  7F E3 FB 78 */	mr r3, r31
/* 800D7070  38 80 00 04 */	li r4, 4
/* 800D7074  48 00 04 31 */	bl setLandDamagePoint__9daAlink_cFi
lbl_800D7078:
/* 800D7078  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D707C  60 00 00 08 */	ori r0, r0, 8
/* 800D7080  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800D7084:
/* 800D7084  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800D7088  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 800D708C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D7090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D7094  7C 08 03 A6 */	mtlr r0
/* 800D7098  38 21 00 20 */	addi r1, r1, 0x20
/* 800D709C  4E 80 00 20 */	blr 
