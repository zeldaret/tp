lbl_800D4EFC:
/* 800D4EFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D4F00  7C 08 02 A6 */	mflr r0
/* 800D4F04  90 01 00 44 */	stw r0, 0x44(r1)
/* 800D4F08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800D4F0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800D4F10  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800D4F14  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 800D4F18  39 61 00 20 */	addi r11, r1, 0x20
/* 800D4F1C  48 28 D2 C1 */	bl _savegpr_29
/* 800D4F20  7C 7F 1B 78 */	mr r31, r3
/* 800D4F24  38 80 00 00 */	li r4, 0
/* 800D4F28  4B FD E8 0D */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 800D4F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D4F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D4F34  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800D4F38  28 00 00 3F */	cmplwi r0, 0x3f
/* 800D4F3C  41 82 00 10 */	beq lbl_800D4F4C
/* 800D4F40  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 800D4F44  4B FD 43 05 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800D4F48  48 00 00 48 */	b lbl_800D4F90
lbl_800D4F4C:
/* 800D4F4C  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 800D4F50  38 03 00 01 */	addi r0, r3, 1
/* 800D4F54  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800D4F58  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800D4F5C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D4F60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D4F64  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D4F68  3C 00 43 30 */	lis r0, 0x4330
/* 800D4F6C  90 01 00 08 */	stw r0, 8(r1)
/* 800D4F70  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D4F74  EC 20 08 28 */	fsubs f1, f0, f1
/* 800D4F78  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800D4F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4F80  4C 41 13 82 */	cror 2, 1, 2
/* 800D4F84  40 82 00 0C */	bne lbl_800D4F90
/* 800D4F88  38 00 00 64 */	li r0, 0x64
/* 800D4F8C  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_800D4F90:
/* 800D4F90  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D4F94  B0 1F 2F E4 */	sth r0, 0x2fe4(r31)
/* 800D4F98  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D4F9C  64 00 10 00 */	oris r0, r0, 0x1000
/* 800D4FA0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800D4FA4  7F E3 FB 78 */	mr r3, r31
/* 800D4FA8  4B FE 4F A9 */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D4FAC  2C 03 00 00 */	cmpwi r3, 0
/* 800D4FB0  41 82 00 0C */	beq lbl_800D4FBC
/* 800D4FB4  38 60 00 01 */	li r3, 1
/* 800D4FB8  48 00 03 E8 */	b lbl_800D53A0
lbl_800D4FBC:
/* 800D4FBC  38 80 00 01 */	li r4, 1
/* 800D4FC0  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 800D4FC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D4FC8  C0 42 93 48 */	lfs f2, lit_8130(r2)
/* 800D4FCC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800D4FD0  4C 41 13 82 */	cror 2, 1, 2
/* 800D4FD4  41 82 00 34 */	beq lbl_800D5008
/* 800D4FD8  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 800D4FDC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D4FE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D4FE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D4FE8  3C 00 43 30 */	lis r0, 0x4330
/* 800D4FEC  90 01 00 08 */	stw r0, 8(r1)
/* 800D4FF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D4FF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D4FF8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800D4FFC  4C 41 13 82 */	cror 2, 1, 2
/* 800D5000  41 82 00 08 */	beq lbl_800D5008
/* 800D5004  38 80 00 00 */	li r4, 0
lbl_800D5008:
/* 800D5008  54 9E 06 3E */	clrlwi r30, r4, 0x18
/* 800D500C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800D5010  2C 00 00 00 */	cmpwi r0, 0
/* 800D5014  41 82 00 64 */	beq lbl_800D5078
/* 800D5018  7F E3 FB 78 */	mr r3, r31
/* 800D501C  4B FF D9 B9 */	bl checkDownAttackState__9daAlink_cFv
/* 800D5020  2C 03 00 00 */	cmpwi r3, 0
/* 800D5024  41 82 00 1C */	beq lbl_800D5040
/* 800D5028  2C 1E 00 00 */	cmpwi r30, 0
/* 800D502C  40 82 00 14 */	bne lbl_800D5040
/* 800D5030  7F E3 FB 78 */	mr r3, r31
/* 800D5034  38 80 00 30 */	li r4, 0x30
/* 800D5038  4B FD E2 31 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800D503C  48 00 00 4C */	b lbl_800D5088
lbl_800D5040:
/* 800D5040  7F E3 FB 78 */	mr r3, r31
/* 800D5044  4B FF D8 B1 */	bl checkCutHeadState__9daAlink_cFv
/* 800D5048  2C 03 00 00 */	cmpwi r3, 0
/* 800D504C  41 82 00 1C */	beq lbl_800D5068
/* 800D5050  2C 1E 00 00 */	cmpwi r30, 0
/* 800D5054  40 82 00 14 */	bne lbl_800D5068
/* 800D5058  7F E3 FB 78 */	mr r3, r31
/* 800D505C  38 80 00 77 */	li r4, 0x77
/* 800D5060  4B FD E2 09 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800D5064  48 00 00 24 */	b lbl_800D5088
lbl_800D5068:
/* 800D5068  7F E3 FB 78 */	mr r3, r31
/* 800D506C  38 80 00 86 */	li r4, 0x86
/* 800D5070  4B FD E1 E1 */	bl setDoStatus__9daAlink_cFUc
/* 800D5074  48 00 00 14 */	b lbl_800D5088
lbl_800D5078:
/* 800D5078  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D507C  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D5080  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800D5084  B0 1F 30 7E */	sth r0, 0x307e(r31)
lbl_800D5088:
/* 800D5088  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800D508C  28 00 00 5B */	cmplwi r0, 0x5b
/* 800D5090  41 82 00 0C */	beq lbl_800D509C
/* 800D5094  28 00 00 5C */	cmplwi r0, 0x5c
/* 800D5098  40 82 00 24 */	bne lbl_800D50BC
lbl_800D509C:
/* 800D509C  2C 1E 00 00 */	cmpwi r30, 0
/* 800D50A0  41 82 02 FC */	beq lbl_800D539C
/* 800D50A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D50A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D50AC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D50B0  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800D50B4  4B F7 30 C9 */	bl cutEnd__16dEvent_manager_cFi
/* 800D50B8  48 00 02 E4 */	b lbl_800D539C
lbl_800D50BC:
/* 800D50BC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800D50C0  2C 00 00 00 */	cmpwi r0, 0
/* 800D50C4  40 82 00 18 */	bne lbl_800D50DC
/* 800D50C8  7F E3 FB 78 */	mr r3, r31
/* 800D50CC  38 80 00 08 */	li r4, 8
/* 800D50D0  4B FD D5 19 */	bl itemButtonCheck__9daAlink_cFUc
/* 800D50D4  2C 03 00 00 */	cmpwi r3, 0
/* 800D50D8  40 82 00 1C */	bne lbl_800D50F4
lbl_800D50DC:
/* 800D50DC  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 800D50E0  7C 60 07 35 */	extsh. r0, r3
/* 800D50E4  41 82 02 6C */	beq lbl_800D5350
/* 800D50E8  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 800D50EC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800D50F0  41 82 02 60 */	beq lbl_800D5350
lbl_800D50F4:
/* 800D50F4  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 800D50F8  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800D50FC  60 00 00 10 */	ori r0, r0, 0x10
/* 800D5100  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800D5104  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800D5108  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800D510C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5110  40 81 01 3C */	ble lbl_800D524C
/* 800D5114  A8 7F 2F E4 */	lha r3, 0x2fe4(r31)
/* 800D5118  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800D511C  7C 03 00 50 */	subf r0, r3, r0
/* 800D5120  7C 03 07 34 */	extsh r3, r0
/* 800D5124  4B FD E3 71 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800D5128  7C 7E 1B 78 */	mr r30, r3
/* 800D512C  3B A0 01 9E */	li r29, 0x19e
/* 800D5130  38 7F 04 DE */	addi r3, r31, 0x4de
/* 800D5134  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 800D5138  38 A0 00 04 */	li r5, 4
/* 800D513C  38 C0 2E E0 */	li r6, 0x2ee0
/* 800D5140  38 E0 20 00 */	li r7, 0x2000
/* 800D5144  48 19 B3 FD */	bl cLib_addCalcAngleS__FPsssss
/* 800D5148  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800D514C  28 00 00 00 */	cmplwi r0, 0
/* 800D5150  41 82 00 0C */	beq lbl_800D515C
/* 800D5154  28 00 00 01 */	cmplwi r0, 1
/* 800D5158  40 82 00 5C */	bne lbl_800D51B4
lbl_800D515C:
/* 800D515C  2C 1E 00 02 */	cmpwi r30, 2
/* 800D5160  41 82 00 0C */	beq lbl_800D516C
/* 800D5164  2C 1E 00 03 */	cmpwi r30, 3
/* 800D5168  40 82 00 28 */	bne lbl_800D5190
lbl_800D516C:
/* 800D516C  3B A0 00 77 */	li r29, 0x77
/* 800D5170  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D5174  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D5178  C3 E3 00 58 */	lfs f31, 0x58(r3)
/* 800D517C  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D5180  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800D5184  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D5188  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D518C  48 00 00 7C */	b lbl_800D5208
lbl_800D5190:
/* 800D5190  7C 00 F0 00 */	cmpw r0, r30
/* 800D5194  41 82 00 74 */	beq lbl_800D5208
/* 800D5198  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D519C  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 800D51A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D51A4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D51A8  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800D51AC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D51B0  48 00 00 58 */	b lbl_800D5208
lbl_800D51B4:
/* 800D51B4  2C 1E 00 00 */	cmpwi r30, 0
/* 800D51B8  41 82 00 0C */	beq lbl_800D51C4
/* 800D51BC  2C 1E 00 01 */	cmpwi r30, 1
/* 800D51C0  40 82 00 28 */	bne lbl_800D51E8
lbl_800D51C4:
/* 800D51C4  3B A0 00 76 */	li r29, 0x76
/* 800D51C8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D51CC  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D51D0  C3 E3 00 50 */	lfs f31, 0x50(r3)
/* 800D51D4  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D51D8  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800D51DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D51E0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D51E4  48 00 00 24 */	b lbl_800D5208
lbl_800D51E8:
/* 800D51E8  7C 00 F0 00 */	cmpw r0, r30
/* 800D51EC  41 82 00 1C */	beq lbl_800D5208
/* 800D51F0  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D51F4  C0 02 93 4C */	lfs f0, lit_8131(r2)
/* 800D51F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D51FC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D5200  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800D5204  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800D5208:
/* 800D5208  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800D520C  7C 00 F0 00 */	cmpw r0, r30
/* 800D5210  40 82 00 1C */	bne lbl_800D522C
/* 800D5214  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D5218  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D521C  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 800D5220  C0 1F 33 AC */	lfs f0, 0x33ac(r31)
/* 800D5224  EF C1 00 32 */	fmuls f30, f1, f0
/* 800D5228  48 00 00 08 */	b lbl_800D5230
lbl_800D522C:
/* 800D522C  9B DF 2F 98 */	stb r30, 0x2f98(r31)
lbl_800D5230:
/* 800D5230  2C 1D 01 9E */	cmpwi r29, 0x19e
/* 800D5234  41 82 00 18 */	beq lbl_800D524C
/* 800D5238  7F E3 FB 78 */	mr r3, r31
/* 800D523C  7F A4 EB 78 */	mr r4, r29
/* 800D5240  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D5244  FC 40 F8 90 */	fmr f2, f31
/* 800D5248  4B FD 7D 99 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800D524C:
/* 800D524C  7F E3 FB 78 */	mr r3, r31
/* 800D5250  FC 20 F0 90 */	fmr f1, f30
/* 800D5254  3C 80 80 39 */	lis r4, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D5258  38 84 DB 84 */	addi r4, r4, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D525C  C0 44 00 64 */	lfs f2, 0x64(r4)
/* 800D5260  4B FD E6 C5 */	bl setNormalSpeedF__9daAlink_cFff
/* 800D5264  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800D5268  28 00 00 00 */	cmplwi r0, 0
/* 800D526C  40 82 00 14 */	bne lbl_800D5280
/* 800D5270  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D5274  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D5278  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 800D527C  48 00 00 48 */	b lbl_800D52C4
lbl_800D5280:
/* 800D5280  28 00 00 01 */	cmplwi r0, 1
/* 800D5284  40 82 00 18 */	bne lbl_800D529C
/* 800D5288  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D528C  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D5290  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800D5294  FF C0 00 50 */	fneg f30, f0
/* 800D5298  48 00 00 2C */	b lbl_800D52C4
lbl_800D529C:
/* 800D529C  28 00 00 03 */	cmplwi r0, 3
/* 800D52A0  40 82 00 18 */	bne lbl_800D52B8
/* 800D52A4  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D52A8  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D52AC  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 800D52B0  FF C0 00 50 */	fneg f30, f0
/* 800D52B4  48 00 00 10 */	b lbl_800D52C4
lbl_800D52B8:
/* 800D52B8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutTurn_c0@ha /* 0x8038DB84@ha */
/* 800D52BC  38 63 DB 84 */	addi r3, r3, m__21daAlinkHIO_cutTurn_c0@l /* 0x8038DB84@l */
/* 800D52C0  C3 C3 00 54 */	lfs f30, 0x54(r3)
lbl_800D52C4:
/* 800D52C4  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 800D52C8  7F E3 FB 78 */	mr r3, r31
/* 800D52CC  7F A4 EB 78 */	mr r4, r29
/* 800D52D0  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D52D4  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800D52D8  EC 01 00 24 */	fdivs f0, f1, f0
/* 800D52DC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 800D52E0  48 02 CA 15 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800D52E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D52E8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800D52EC  4C 41 13 82 */	cror 2, 1, 2
/* 800D52F0  40 82 00 10 */	bne lbl_800D5300
/* 800D52F4  A8 1D 00 06 */	lha r0, 6(r29)
/* 800D52F8  B0 1D 00 0A */	sth r0, 0xa(r29)
/* 800D52FC  48 00 00 0C */	b lbl_800D5308
lbl_800D5300:
/* 800D5300  A8 1D 00 08 */	lha r0, 8(r29)
/* 800D5304  B0 1D 00 0A */	sth r0, 0xa(r29)
lbl_800D5308:
/* 800D5308  7F E3 FB 78 */	mr r3, r31
/* 800D530C  4B FE A0 71 */	bl initBasAnime__9daAlink_cFv
/* 800D5310  7F E3 FB 78 */	mr r3, r31
/* 800D5314  4B FD E5 F1 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800D5318  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D531C  41 82 00 1C */	beq lbl_800D5338
/* 800D5320  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D5324  60 00 00 01 */	ori r0, r0, 1
/* 800D5328  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D532C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5330  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800D5334  48 00 00 68 */	b lbl_800D539C
lbl_800D5338:
/* 800D5338  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D533C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800D5340  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D5344  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D5348  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800D534C  48 00 00 50 */	b lbl_800D539C
lbl_800D5350:
/* 800D5350  2C 1E 00 00 */	cmpwi r30, 0
/* 800D5354  41 82 00 2C */	beq lbl_800D5380
/* 800D5358  7C 60 07 35 */	extsh. r0, r3
/* 800D535C  41 82 00 10 */	beq lbl_800D536C
/* 800D5360  7F E3 FB 78 */	mr r3, r31
/* 800D5364  48 00 10 11 */	bl procCutLargeJumpInit__9daAlink_cFv
/* 800D5368  48 00 00 34 */	b lbl_800D539C
lbl_800D536C:
/* 800D536C  7F E3 FB 78 */	mr r3, r31
/* 800D5370  38 80 00 00 */	li r4, 0
/* 800D5374  38 A0 00 01 */	li r5, 1
/* 800D5378  4B FF F4 65 */	bl procCutTurnInit__9daAlink_cFii
/* 800D537C  48 00 00 20 */	b lbl_800D539C
lbl_800D5380:
/* 800D5380  7C 60 07 35 */	extsh. r0, r3
/* 800D5384  41 82 00 10 */	beq lbl_800D5394
/* 800D5388  7F E3 FB 78 */	mr r3, r31
/* 800D538C  4B FF D4 59 */	bl checkDoCutAction__9daAlink_cFv
/* 800D5390  48 00 00 0C */	b lbl_800D539C
lbl_800D5394:
/* 800D5394  7F E3 FB 78 */	mr r3, r31
/* 800D5398  4B FF D7 F1 */	bl cancelCutCharge__9daAlink_cFv
lbl_800D539C:
/* 800D539C  38 60 00 01 */	li r3, 1
lbl_800D53A0:
/* 800D53A0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800D53A4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800D53A8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 800D53AC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800D53B0  39 61 00 20 */	addi r11, r1, 0x20
/* 800D53B4  48 28 CE 75 */	bl _restgpr_29
/* 800D53B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D53BC  7C 08 03 A6 */	mtlr r0
/* 800D53C0  38 21 00 40 */	addi r1, r1, 0x40
/* 800D53C4  4E 80 00 20 */	blr 
