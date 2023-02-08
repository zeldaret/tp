lbl_80687CD8:
/* 80687CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80687CDC  7C 08 02 A6 */	mflr r0
/* 80687CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80687CE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80687CE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80687CEC  7C 7F 1B 78 */	mr r31, r3
/* 80687CF0  3B C0 00 00 */	li r30, 0
/* 80687CF4  2C 04 00 00 */	cmpwi r4, 0
/* 80687CF8  40 82 00 58 */	bne lbl_80687D50
/* 80687CFC  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80687D00  60 00 00 10 */	ori r0, r0, 0x10
/* 80687D04  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80687D08  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80687D0C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80687D10  41 82 00 78 */	beq lbl_80687D88
/* 80687D14  38 00 00 00 */	li r0, 0
/* 80687D18  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80687D1C  90 01 00 08 */	stw r0, 8(r1)
/* 80687D20  38 60 02 21 */	li r3, 0x221
/* 80687D24  38 80 00 0E */	li r4, 0xe
/* 80687D28  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80687D2C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80687D30  7C 06 07 74 */	extsb r6, r0
/* 80687D34  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80687D38  39 00 00 00 */	li r8, 0
/* 80687D3C  39 20 FF FF */	li r9, -1
/* 80687D40  39 40 00 00 */	li r10, 0
/* 80687D44  4B 99 20 C1 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80687D48  7C 7E 1B 78 */	mr r30, r3
/* 80687D4C  48 00 00 3C */	b lbl_80687D88
lbl_80687D50:
/* 80687D50  38 00 00 00 */	li r0, 0
/* 80687D54  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80687D58  90 01 00 08 */	stw r0, 8(r1)
/* 80687D5C  38 60 02 21 */	li r3, 0x221
/* 80687D60  38 80 00 10 */	li r4, 0x10
/* 80687D64  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80687D68  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80687D6C  7C 06 07 74 */	extsb r6, r0
/* 80687D70  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 80687D74  39 00 00 00 */	li r8, 0
/* 80687D78  39 20 FF FF */	li r9, -1
/* 80687D7C  39 40 00 00 */	li r10, 0
/* 80687D80  4B 99 20 85 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 80687D84  7C 7E 1B 78 */	mr r30, r3
lbl_80687D88:
/* 80687D88  28 1E 00 00 */	cmplwi r30, 0
/* 80687D8C  41 82 00 44 */	beq lbl_80687DD0
/* 80687D90  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80687D94  38 81 00 10 */	addi r4, r1, 0x10
/* 80687D98  4B 99 1C 25 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80687D9C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80687DA0  28 03 00 00 */	cmplwi r3, 0
/* 80687DA4  41 82 00 1C */	beq lbl_80687DC0
/* 80687DA8  28 1E 00 00 */	cmplwi r30, 0
/* 80687DAC  41 82 00 0C */	beq lbl_80687DB8
/* 80687DB0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80687DB4  48 00 00 08 */	b lbl_80687DBC
lbl_80687DB8:
/* 80687DB8  38 00 FF FF */	li r0, -1
lbl_80687DBC:
/* 80687DBC  90 03 06 6C */	stw r0, 0x66c(r3)
lbl_80687DC0:
/* 80687DC0  7F E3 FB 78 */	mr r3, r31
/* 80687DC4  4B 99 1E B9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80687DC8  38 60 00 01 */	li r3, 1
/* 80687DCC  48 00 00 08 */	b lbl_80687DD4
lbl_80687DD0:
/* 80687DD0  38 60 00 00 */	li r3, 0
lbl_80687DD4:
/* 80687DD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80687DD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80687DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80687DE0  7C 08 03 A6 */	mtlr r0
/* 80687DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80687DE8  4E 80 00 20 */	blr 
