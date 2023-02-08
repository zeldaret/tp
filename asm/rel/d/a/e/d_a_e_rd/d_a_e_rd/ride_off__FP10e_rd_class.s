lbl_80505F50:
/* 80505F50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80505F54  7C 08 02 A6 */	mflr r0
/* 80505F58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80505F5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80505F60  4B E5 C2 7D */	bl _savegpr_29
/* 80505F64  7C 7D 1B 78 */	mr r29, r3
/* 80505F68  3C 60 80 52 */	lis r3, lit_4208@ha /* 0x80518584@ha */
/* 80505F6C  3B C3 85 84 */	addi r30, r3, lit_4208@l /* 0x80518584@l */
/* 80505F70  80 1D 09 8C */	lwz r0, 0x98c(r29)
/* 80505F74  90 01 00 08 */	stw r0, 8(r1)
/* 80505F78  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80505F7C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80505F80  38 81 00 08 */	addi r4, r1, 8
/* 80505F84  4B B1 38 75 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80505F88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80505F8C  41 82 00 F0 */	beq lbl_8050607C
/* 80505F90  A0 7F 06 BE */	lhz r3, 0x6be(r31)
/* 80505F94  88 1D 09 BE */	lbz r0, 0x9be(r29)
/* 80505F98  7C 00 07 74 */	extsb r0, r0
/* 80505F9C  7C 60 00 78 */	andc r0, r3, r0
/* 80505FA0  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80505FA4  38 60 00 00 */	li r3, 0
/* 80505FA8  98 7D 09 BE */	stb r3, 0x9be(r29)
/* 80505FAC  A8 9F 06 90 */	lha r4, 0x690(r31)
/* 80505FB0  2C 04 00 16 */	cmpwi r4, 0x16
/* 80505FB4  41 82 00 B8 */	beq lbl_8050606C
/* 80505FB8  2C 04 00 17 */	cmpwi r4, 0x17
/* 80505FBC  41 82 00 B0 */	beq lbl_8050606C
/* 80505FC0  2C 04 00 18 */	cmpwi r4, 0x18
/* 80505FC4  41 82 00 A8 */	beq lbl_8050606C
/* 80505FC8  2C 04 00 01 */	cmpwi r4, 1
/* 80505FCC  40 82 00 2C */	bne lbl_80505FF8
/* 80505FD0  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 80505FD4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80505FD8  41 82 00 10 */	beq lbl_80505FE8
/* 80505FDC  38 00 00 06 */	li r0, 6
/* 80505FE0  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 80505FE4  48 00 00 08 */	b lbl_80505FEC
lbl_80505FE8:
/* 80505FE8  B0 7F 06 90 */	sth r3, 0x690(r31)
lbl_80505FEC:
/* 80505FEC  38 00 00 00 */	li r0, 0
/* 80505FF0  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80505FF4  48 00 00 78 */	b lbl_8050606C
lbl_80505FF8:
/* 80505FF8  2C 04 00 15 */	cmpwi r4, 0x15
/* 80505FFC  40 82 00 0C */	bne lbl_80506008
/* 80506000  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 80506004  48 00 00 68 */	b lbl_8050606C
lbl_80506008:
/* 80506008  A0 1F 06 BE */	lhz r0, 0x6be(r31)
/* 8050600C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80506010  40 82 00 5C */	bne lbl_8050606C
/* 80506014  2C 04 00 06 */	cmpwi r4, 6
/* 80506018  40 82 00 24 */	bne lbl_8050603C
/* 8050601C  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 80506020  2C 00 00 02 */	cmpwi r0, 2
/* 80506024  41 82 00 0C */	beq lbl_80506030
/* 80506028  2C 00 00 03 */	cmpwi r0, 3
/* 8050602C  40 82 00 10 */	bne lbl_8050603C
lbl_80506030:
/* 80506030  38 00 00 01 */	li r0, 1
/* 80506034  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80506038  48 00 00 0C */	b lbl_80506044
lbl_8050603C:
/* 8050603C  38 00 00 00 */	li r0, 0
/* 80506040  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_80506044:
/* 80506044  38 00 00 07 */	li r0, 7
/* 80506048  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 8050604C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80506050  4B D6 19 05 */	bl cM_rndF__Ff
/* 80506054  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80506058  EC 00 08 2A */	fadds f0, f0, f1
/* 8050605C  FC 00 00 1E */	fctiwz f0, f0
/* 80506060  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80506064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506068  B0 1F 06 9A */	sth r0, 0x69a(r31)
lbl_8050606C:
/* 8050606C  38 00 00 00 */	li r0, 0
/* 80506070  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80506074  38 00 FF FF */	li r0, -1
/* 80506078  90 1D 09 8C */	stw r0, 0x98c(r29)
lbl_8050607C:
/* 8050607C  38 00 00 00 */	li r0, 0
/* 80506080  98 1D 09 BC */	stb r0, 0x9bc(r29)
/* 80506084  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 80506088  28 00 00 00 */	cmplwi r0, 0
/* 8050608C  41 82 00 50 */	beq lbl_805060DC
/* 80506090  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 80506094  38 80 00 0A */	li r4, 0xa
/* 80506098  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050609C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805060A0  3C A5 00 02 */	addis r5, r5, 2
/* 805060A4  38 C0 00 80 */	li r6, 0x80
/* 805060A8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805060AC  4B B3 62 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805060B0  7C 64 1B 78 */	mr r4, r3
/* 805060B4  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 805060B8  38 A0 00 00 */	li r5, 0
/* 805060BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805060C0  FC 40 08 90 */	fmr f2, f1
/* 805060C4  C0 7E 00 04 */	lfs f3, 4(r30)
/* 805060C8  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 805060CC  4B B0 AD A5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805060D0  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 805060D4  80 7D 06 98 */	lwz r3, 0x698(r29)
/* 805060D8  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_805060DC:
/* 805060DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805060E0  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 805060E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805060E8  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 805060EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805060F0  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 805060F4  39 61 00 30 */	addi r11, r1, 0x30
/* 805060F8  4B E5 C1 31 */	bl _restgpr_29
/* 805060FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80506100  7C 08 03 A6 */	mtlr r0
/* 80506104  38 21 00 30 */	addi r1, r1, 0x30
/* 80506108  4E 80 00 20 */	blr 
