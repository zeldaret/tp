lbl_8009DB64:
/* 8009DB64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009DB68  7C 08 02 A6 */	mflr r0
/* 8009DB6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009DB70  39 61 00 20 */	addi r11, r1, 0x20
/* 8009DB74  48 2C 46 69 */	bl _savegpr_29
/* 8009DB78  7C 7E 1B 78 */	mr r30, r3
/* 8009DB7C  7C 9D 23 78 */	mr r29, r4
/* 8009DB80  7C BF 2B 78 */	mr r31, r5
/* 8009DB84  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8009DB88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8009DB8C  40 82 00 6C */	bne lbl_8009DBF8
/* 8009DB90  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8009DB94  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 8009DB98  40 82 00 60 */	bne lbl_8009DBF8
/* 8009DB9C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 8009DBA0  28 00 00 2D */	cmplwi r0, 0x2d
/* 8009DBA4  41 82 00 0C */	beq lbl_8009DBB0
/* 8009DBA8  28 00 00 2B */	cmplwi r0, 0x2b
/* 8009DBAC  40 82 00 10 */	bne lbl_8009DBBC
lbl_8009DBB0:
/* 8009DBB0  80 1E 28 10 */	lwz r0, 0x2810(r30)
/* 8009DBB4  7C 1D 00 40 */	cmplw r29, r0
/* 8009DBB8  41 82 00 34 */	beq lbl_8009DBEC
lbl_8009DBBC:
/* 8009DBBC  80 9E 31 A0 */	lwz r4, 0x31a0(r30)
/* 8009DBC0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010040@ha */
/* 8009DBC4  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00010040@l */
/* 8009DBC8  7C 80 00 39 */	and. r0, r4, r0
/* 8009DBCC  41 82 00 10 */	beq lbl_8009DBDC
/* 8009DBD0  A8 1D 00 08 */	lha r0, 8(r29)
/* 8009DBD4  2C 00 00 BB */	cmpwi r0, 0xbb
/* 8009DBD8  40 82 00 14 */	bne lbl_8009DBEC
lbl_8009DBDC:
/* 8009DBDC  38 9E 08 14 */	addi r4, r30, 0x814
/* 8009DBE0  38 7E 37 2C */	addi r3, r30, 0x372c
/* 8009DBE4  7C 65 1B 78 */	mr r5, r3
/* 8009DBE8  48 2A 94 A9 */	bl PSVECAdd
lbl_8009DBEC:
/* 8009DBEC  A0 7E 30 FE */	lhz r3, 0x30fe(r30)
/* 8009DBF0  38 03 00 01 */	addi r0, r3, 1
/* 8009DBF4  B0 1E 30 FE */	sth r0, 0x30fe(r30)
lbl_8009DBF8:
/* 8009DBF8  A8 1D 00 08 */	lha r0, 8(r29)
/* 8009DBFC  2C 00 01 77 */	cmpwi r0, 0x177
/* 8009DC00  40 82 00 54 */	bne lbl_8009DC54
/* 8009DC04  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8009DC08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8009DC0C  41 82 00 3C */	beq lbl_8009DC48
/* 8009DC10  38 1E 08 50 */	addi r0, r30, 0x850
/* 8009DC14  7C 1F 00 40 */	cmplw r31, r0
/* 8009DC18  40 82 00 14 */	bne lbl_8009DC2C
/* 8009DC1C  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8009DC20  60 00 08 00 */	ori r0, r0, 0x800
/* 8009DC24  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8009DC28  48 00 00 2C */	b lbl_8009DC54
lbl_8009DC2C:
/* 8009DC2C  38 1E 0A C8 */	addi r0, r30, 0xac8
/* 8009DC30  7C 1F 00 40 */	cmplw r31, r0
/* 8009DC34  40 82 00 20 */	bne lbl_8009DC54
/* 8009DC38  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8009DC3C  60 00 10 00 */	ori r0, r0, 0x1000
/* 8009DC40  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8009DC44  48 00 00 10 */	b lbl_8009DC54
lbl_8009DC48:
/* 8009DC48  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 8009DC4C  60 00 08 00 */	ori r0, r0, 0x800
/* 8009DC50  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_8009DC54:
/* 8009DC54  39 61 00 20 */	addi r11, r1, 0x20
/* 8009DC58  48 2C 45 D1 */	bl _restgpr_29
/* 8009DC5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009DC60  7C 08 03 A6 */	mtlr r0
/* 8009DC64  38 21 00 20 */	addi r1, r1, 0x20
/* 8009DC68  4E 80 00 20 */	blr 
