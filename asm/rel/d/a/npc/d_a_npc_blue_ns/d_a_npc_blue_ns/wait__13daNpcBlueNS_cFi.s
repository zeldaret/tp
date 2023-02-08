lbl_8096ABD4:
/* 8096ABD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096ABD8  7C 08 02 A6 */	mflr r0
/* 8096ABDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096ABE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8096ABE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8096ABE8  7C 7F 1B 78 */	mr r31, r3
/* 8096ABEC  3C 80 80 97 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8096CBA0@ha */
/* 8096ABF0  3B C4 CB A0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8096CBA0@l */
/* 8096ABF4  A0 03 0D C0 */	lhz r0, 0xdc0(r3)
/* 8096ABF8  2C 00 00 02 */	cmpwi r0, 2
/* 8096ABFC  41 82 00 50 */	beq lbl_8096AC4C
/* 8096AC00  40 80 01 54 */	bge lbl_8096AD54
/* 8096AC04  2C 00 00 00 */	cmpwi r0, 0
/* 8096AC08  41 82 00 0C */	beq lbl_8096AC14
/* 8096AC0C  48 00 01 48 */	b lbl_8096AD54
/* 8096AC10  48 00 01 44 */	b lbl_8096AD54
lbl_8096AC14:
/* 8096AC14  80 9F 0E 04 */	lwz r4, 0xe04(r31)
/* 8096AC18  3C A0 80 97 */	lis r5, lit_4307@ha /* 0x8096C9EC@ha */
/* 8096AC1C  C0 25 C9 EC */	lfs f1, lit_4307@l(r5)  /* 0x8096C9EC@l */
/* 8096AC20  38 A0 00 00 */	li r5, 0
/* 8096AC24  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8096AC28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8096AC2C  7D 89 03 A6 */	mtctr r12
/* 8096AC30  4E 80 04 21 */	bctrl 
/* 8096AC34  3C 60 80 97 */	lis r3, lit_4393@ha /* 0x8096C9F4@ha */
/* 8096AC38  C0 03 C9 F4 */	lfs f0, lit_4393@l(r3)  /* 0x8096C9F4@l */
/* 8096AC3C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8096AC40  38 00 00 02 */	li r0, 2
/* 8096AC44  B0 1F 0D C0 */	sth r0, 0xdc0(r31)
/* 8096AC48  48 00 01 0C */	b lbl_8096AD54
lbl_8096AC4C:
/* 8096AC4C  4B FF FE A5 */	bl chkFindPlayer__13daNpcBlueNS_cFv
/* 8096AC50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096AC54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096AC58  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8096AC5C  28 00 00 00 */	cmplwi r0, 0
/* 8096AC60  41 82 00 B0 */	beq lbl_8096AD10
/* 8096AC64  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8096AC68  28 00 00 01 */	cmplwi r0, 1
/* 8096AC6C  40 82 00 60 */	bne lbl_8096ACCC
/* 8096AC70  38 00 00 00 */	li r0, 0
/* 8096AC74  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 8096AC78  28 04 00 01 */	cmplwi r4, 1
/* 8096AC7C  41 82 00 0C */	beq lbl_8096AC88
/* 8096AC80  28 04 00 02 */	cmplwi r4, 2
/* 8096AC84  40 82 00 08 */	bne lbl_8096AC8C
lbl_8096AC88:
/* 8096AC88  38 00 00 01 */	li r0, 1
lbl_8096AC8C:
/* 8096AC8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096AC90  41 82 00 14 */	beq lbl_8096ACA4
/* 8096AC94  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8096AC98  4B 6D DB 59 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 8096AC9C  2C 03 00 00 */	cmpwi r3, 0
/* 8096ACA0  41 82 00 B4 */	beq lbl_8096AD54
lbl_8096ACA4:
/* 8096ACA4  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 8096ACA8  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8096ACAC  90 61 00 14 */	stw r3, 0x14(r1)
/* 8096ACB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8096ACB4  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 8096ACB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8096ACBC  7F E3 FB 78 */	mr r3, r31
/* 8096ACC0  38 81 00 14 */	addi r4, r1, 0x14
/* 8096ACC4  4B FF FA 8D */	bl setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i
/* 8096ACC8  48 00 00 8C */	b lbl_8096AD54
lbl_8096ACCC:
/* 8096ACCC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8096ACD0  80 9E 00 AC */	lwz r4, 0xac(r30)
/* 8096ACD4  7F E5 FB 78 */	mr r5, r31
/* 8096ACD8  38 C0 00 00 */	li r6, 0
/* 8096ACDC  4B 6D CE 41 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8096ACE0  2C 03 FF FF */	cmpwi r3, -1
/* 8096ACE4  41 82 00 70 */	beq lbl_8096AD54
/* 8096ACE8  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8096ACEC  80 1E 01 80 */	lwz r0, 0x180(r30)
/* 8096ACF0  90 61 00 08 */	stw r3, 8(r1)
/* 8096ACF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096ACF8  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8096ACFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096AD00  7F E3 FB 78 */	mr r3, r31
/* 8096AD04  38 81 00 08 */	addi r4, r1, 8
/* 8096AD08  4B FF FA 49 */	bl setAction__13daNpcBlueNS_cFM13daNpcBlueNS_cFPCvPvi_i
/* 8096AD0C  48 00 00 48 */	b lbl_8096AD54
lbl_8096AD10:
/* 8096AD10  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 8096AD14  28 00 00 00 */	cmplwi r0, 0
/* 8096AD18  41 82 00 0C */	beq lbl_8096AD24
/* 8096AD1C  80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 8096AD20  90 1F 01 00 */	stw r0, 0x100(r31)
lbl_8096AD24:
/* 8096AD24  7F E3 FB 78 */	mr r3, r31
/* 8096AD28  88 9F 0D EC */	lbz r4, 0xdec(r31)
/* 8096AD2C  A0 1F 09 E6 */	lhz r0, 0x9e6(r31)
/* 8096AD30  54 00 10 3A */	slwi r0, r0, 2
/* 8096AD34  38 BE 00 90 */	addi r5, r30, 0x90
/* 8096AD38  7C A5 00 2E */	lwzx r5, r5, r0
/* 8096AD3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8096AD40  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8096AD44  38 E0 00 04 */	li r7, 4
/* 8096AD48  39 00 00 FF */	li r8, 0xff
/* 8096AD4C  39 20 00 02 */	li r9, 2
/* 8096AD50  4B 7E 8B 2D */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_8096AD54:
/* 8096AD54  38 60 00 01 */	li r3, 1
/* 8096AD58  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8096AD5C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8096AD60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096AD64  7C 08 03 A6 */	mtlr r0
/* 8096AD68  38 21 00 30 */	addi r1, r1, 0x30
/* 8096AD6C  4E 80 00 20 */	blr 
