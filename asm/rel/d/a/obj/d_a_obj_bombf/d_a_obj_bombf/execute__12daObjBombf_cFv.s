lbl_80BBACC0:
/* 80BBACC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BBACC4  7C 08 02 A6 */	mflr r0
/* 80BBACC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BBACCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BBACD0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BBACD4  7C 7F 1B 78 */	mr r31, r3
/* 80BBACD8  4B FF FF 75 */	bl setMatrix__12daObjBombf_cFv
/* 80BBACDC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BBACE0  3C 03 00 01 */	addis r0, r3, 1
/* 80BBACE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BBACE8  40 82 00 80 */	bne lbl_80BBAD68
/* 80BBACEC  88 7F 05 78 */	lbz r3, 0x578(r31)
/* 80BBACF0  28 03 00 00 */	cmplwi r3, 0
/* 80BBACF4  41 82 00 10 */	beq lbl_80BBAD04
/* 80BBACF8  38 03 FF FF */	addi r0, r3, -1
/* 80BBACFC  98 1F 05 78 */	stb r0, 0x578(r31)
/* 80BBAD00  48 00 00 BC */	b lbl_80BBADBC
lbl_80BBAD04:
/* 80BBAD04  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BBAD08  38 63 00 24 */	addi r3, r3, 0x24
/* 80BBAD0C  3C 80 80 BC */	lis r4, bombOffset@ha
/* 80BBAD10  38 84 AE 9C */	addi r4, r4, bombOffset@l
/* 80BBAD14  38 A1 00 14 */	addi r5, r1, 0x14
/* 80BBAD18  4B 78 C0 54 */	b PSMTXMultVec
/* 80BBAD1C  38 00 00 00 */	li r0, 0
/* 80BBAD20  90 01 00 08 */	stw r0, 8(r1)
/* 80BBAD24  38 60 02 21 */	li r3, 0x221
/* 80BBAD28  38 80 00 04 */	li r4, 4
/* 80BBAD2C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80BBAD30  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BBAD34  7C 06 07 74 */	extsb r6, r0
/* 80BBAD38  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80BBAD3C  39 00 00 00 */	li r8, 0
/* 80BBAD40  39 20 FF FF */	li r9, -1
/* 80BBAD44  39 40 00 00 */	li r10, 0
/* 80BBAD48  4B 45 F0 BC */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80BBAD4C  28 03 00 00 */	cmplwi r3, 0
/* 80BBAD50  41 82 00 0C */	beq lbl_80BBAD5C
/* 80BBAD54  80 03 00 04 */	lwz r0, 4(r3)
/* 80BBAD58  48 00 00 08 */	b lbl_80BBAD60
lbl_80BBAD5C:
/* 80BBAD5C  38 00 FF FF */	li r0, -1
lbl_80BBAD60:
/* 80BBAD60  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80BBAD64  48 00 00 58 */	b lbl_80BBADBC
lbl_80BBAD68:
/* 80BBAD68  90 61 00 10 */	stw r3, 0x10(r1)
/* 80BBAD6C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80BBAD70  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80BBAD74  38 81 00 10 */	addi r4, r1, 0x10
/* 80BBAD78  4B 45 EA 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BBAD7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BBAD80  40 82 00 18 */	bne lbl_80BBAD98
/* 80BBAD84  38 00 FF FF */	li r0, -1
/* 80BBAD88  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80BBAD8C  38 00 00 96 */	li r0, 0x96
/* 80BBAD90  98 1F 05 78 */	stb r0, 0x578(r31)
/* 80BBAD94  48 00 00 28 */	b lbl_80BBADBC
lbl_80BBAD98:
/* 80BBAD98  4B 47 72 34 */	b checkFlowerBombWait__7dBomb_cFP10fopAc_ac_c
/* 80BBAD9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BBADA0  41 82 00 1C */	beq lbl_80BBADBC
/* 80BBADA4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BBADA8  38 63 00 24 */	addi r3, r3, 0x24
/* 80BBADAC  3C 80 80 BC */	lis r4, bombOffset@ha
/* 80BBADB0  38 84 AE 9C */	addi r4, r4, bombOffset@l
/* 80BBADB4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BBADB8  4B 78 BF B4 */	b PSMTXMultVec
lbl_80BBADBC:
/* 80BBADBC  38 60 00 01 */	li r3, 1
/* 80BBADC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BBADC4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BBADC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BBADCC  7C 08 03 A6 */	mtlr r0
/* 80BBADD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BBADD4  4E 80 00 20 */	blr 
