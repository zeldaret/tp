lbl_80A2310C:
/* 80A2310C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A23110  7C 08 02 A6 */	mflr r0
/* 80A23114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A23118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2311C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A23120  7C 7F 1B 78 */	mr r31, r3
/* 80A23124  3B C0 00 00 */	li r30, 0
/* 80A23128  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A2312C  54 00 10 3A */	slwi r0, r0, 2
/* 80A23130  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A23134  28 03 00 00 */	cmplwi r3, 0
/* 80A23138  41 82 00 10 */	beq lbl_80A23148
/* 80A2313C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A23140  54 00 10 3A */	slwi r0, r0, 2
/* 80A23144  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80A23148:
/* 80A23148  28 1E 00 00 */	cmplwi r30, 0
/* 80A2314C  41 82 01 18 */	beq lbl_80A23264
/* 80A23150  A8 1F 09 DC */	lha r0, 0x9dc(r31)
/* 80A23154  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80A23158  7C 00 18 00 */	cmpw r0, r3
/* 80A2315C  40 82 00 74 */	bne lbl_80A231D0
/* 80A23160  80 BE 00 08 */	lwz r5, 8(r30)
/* 80A23164  2C 05 00 00 */	cmpwi r5, 0
/* 80A23168  40 81 00 34 */	ble lbl_80A2319C
/* 80A2316C  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80A23170  7C 05 00 00 */	cmpw r5, r0
/* 80A23174  41 81 00 28 */	bgt lbl_80A2319C
/* 80A23178  38 03 00 01 */	addi r0, r3, 1
/* 80A2317C  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80A23180  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A23184  54 00 10 3A */	slwi r0, r0, 2
/* 80A23188  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A2318C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A23190  54 00 10 3A */	slwi r0, r0, 2
/* 80A23194  7F C3 00 2E */	lwzx r30, r3, r0
/* 80A23198  48 00 00 38 */	b lbl_80A231D0
lbl_80A2319C:
/* 80A2319C  2C 05 00 00 */	cmpwi r5, 0
/* 80A231A0  40 82 00 30 */	bne lbl_80A231D0
/* 80A231A4  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80A231A8  28 00 00 01 */	cmplwi r0, 1
/* 80A231AC  41 80 00 24 */	blt lbl_80A231D0
/* 80A231B0  38 00 00 00 */	li r0, 0
/* 80A231B4  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80A231B8  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A231BC  54 00 10 3A */	slwi r0, r0, 2
/* 80A231C0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A231C4  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A231C8  54 00 10 3A */	slwi r0, r0, 2
/* 80A231CC  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80A231D0:
/* 80A231D0  28 1E 00 00 */	cmplwi r30, 0
/* 80A231D4  41 82 00 90 */	beq lbl_80A23264
/* 80A231D8  A8 7F 09 DC */	lha r3, 0x9dc(r31)
/* 80A231DC  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A231E0  7C 03 00 00 */	cmpw r3, r0
/* 80A231E4  41 82 00 80 */	beq lbl_80A23264
/* 80A231E8  7F E3 FB 78 */	mr r3, r31
/* 80A231EC  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80A231F0  3C A0 80 A2 */	lis r5, lit_4449@ha
/* 80A231F4  C0 25 59 5C */	lfs f1, lit_4449@l(r5)
/* 80A231F8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A231FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A23200  7D 89 03 A6 */	mtctr r12
/* 80A23204  4E 80 04 21 */	bctrl 
/* 80A23208  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80A2320C  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A23210  2C 00 00 00 */	cmpwi r0, 0
/* 80A23214  40 82 00 3C */	bne lbl_80A23250
/* 80A23218  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80A2321C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A23220  40 82 00 14 */	bne lbl_80A23234
/* 80A23224  3C 60 80 A2 */	lis r3, m__20daNpcKasiKyu_Param_c@ha
/* 80A23228  38 63 58 B8 */	addi r3, r3, m__20daNpcKasiKyu_Param_c@l
/* 80A2322C  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80A23230  48 00 00 20 */	b lbl_80A23250
lbl_80A23234:
/* 80A23234  3C 60 80 A2 */	lis r3, lit_4449@ha
/* 80A23238  C0 03 59 5C */	lfs f0, lit_4449@l(r3)
/* 80A2323C  C0 5F 09 7C */	lfs f2, 0x97c(r31)
/* 80A23240  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80A23244  4C 40 13 82 */	cror 2, 0, 2
/* 80A23248  40 82 00 08 */	bne lbl_80A23250
/* 80A2324C  FC 20 10 90 */	fmr f1, f2
lbl_80A23250:
/* 80A23250  3C 60 80 A2 */	lis r3, lit_4449@ha
/* 80A23254  C0 03 59 5C */	lfs f0, lit_4449@l(r3)
/* 80A23258  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80A2325C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A23260  4B 5E C9 1C */	b setMorf__13mDoExt_morf_cFf
lbl_80A23264:
/* 80A23264  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80A23268  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80A2326C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A23270  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A23274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A23278  7C 08 03 A6 */	mtlr r0
/* 80A2327C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A23280  4E 80 00 20 */	blr 
