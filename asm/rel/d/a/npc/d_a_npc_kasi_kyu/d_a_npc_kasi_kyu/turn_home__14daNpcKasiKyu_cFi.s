lbl_80A2428C:
/* 80A2428C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A24290  7C 08 02 A6 */	mflr r0
/* 80A24294  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A24298  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A2429C  7C 7F 1B 78 */	mr r31, r3
/* 80A242A0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A242A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A242A8  41 82 00 18 */	beq lbl_80A242C0
/* 80A242AC  40 80 00 08 */	bge lbl_80A242B4
/* 80A242B0  48 00 00 A8 */	b lbl_80A24358
lbl_80A242B4:
/* 80A242B4  2C 00 00 02 */	cmpwi r0, 2
/* 80A242B8  40 80 00 A0 */	bge lbl_80A24358
/* 80A242BC  48 00 00 48 */	b lbl_80A24304
lbl_80A242C0:
/* 80A242C0  38 80 00 00 */	li r4, 0
/* 80A242C4  4B FF F0 69 */	bl setLookMode__14daNpcKasiKyu_cFi
/* 80A242C8  7F E3 FB 78 */	mr r3, r31
/* 80A242CC  38 80 00 04 */	li r4, 4
/* 80A242D0  3C A0 80 A2 */	lis r5, lit_4249@ha /* 0x80A25944@ha */
/* 80A242D4  C0 25 59 44 */	lfs f1, lit_4249@l(r5)  /* 0x80A25944@l */
/* 80A242D8  38 A0 00 00 */	li r5, 0
/* 80A242DC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A242E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A242E4  7D 89 03 A6 */	mtctr r12
/* 80A242E8  4E 80 04 21 */	bctrl 
/* 80A242EC  3C 60 80 A2 */	lis r3, lit_4449@ha /* 0x80A2595C@ha */
/* 80A242F0  C0 03 59 5C */	lfs f0, lit_4449@l(r3)  /* 0x80A2595C@l */
/* 80A242F4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A242F8  38 00 00 01 */	li r0, 1
/* 80A242FC  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A24300  48 00 00 58 */	b lbl_80A24358
lbl_80A24304:
/* 80A24304  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80A24308  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A2430C  38 A0 10 00 */	li r5, 0x1000
/* 80A24310  4B 84 C8 81 */	bl cLib_chaseAngleS__FPsss
/* 80A24314  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A24318  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A2431C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A24320  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A24324  2C 03 00 00 */	cmpwi r3, 0
/* 80A24328  41 82 00 30 */	beq lbl_80A24358
/* 80A2432C  3C 60 80 A2 */	lis r3, lit_5134@ha /* 0x80A25E88@ha */
/* 80A24330  38 83 5E 88 */	addi r4, r3, lit_5134@l /* 0x80A25E88@l */
/* 80A24334  80 64 00 00 */	lwz r3, 0(r4)
/* 80A24338  80 04 00 04 */	lwz r0, 4(r4)
/* 80A2433C  90 61 00 08 */	stw r3, 8(r1)
/* 80A24340  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A24344  80 04 00 08 */	lwz r0, 8(r4)
/* 80A24348  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2434C  7F E3 FB 78 */	mr r3, r31
/* 80A24350  38 81 00 08 */	addi r4, r1, 8
/* 80A24354  4B FF EF 31 */	bl setAction__14daNpcKasiKyu_cFM14daNpcKasiKyu_cFPCvPvi_i
lbl_80A24358:
/* 80A24358  38 60 00 01 */	li r3, 1
/* 80A2435C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A24360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A24364  7C 08 03 A6 */	mtlr r0
/* 80A24368  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2436C  4E 80 00 20 */	blr 
