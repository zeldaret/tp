lbl_8035DB6C:
/* 8035DB6C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8035DB70  38 80 00 00 */	li r4, 0
/* 8035DB74  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 8035DB78  39 44 00 00 */	addi r10, r4, 0
/* 8035DB7C  50 CA 07 FE */	rlwimi r10, r6, 0, 0x1f, 0x1f
/* 8035DB80  2C 09 00 00 */	cmpwi r9, 0
/* 8035DB84  50 AA 36 72 */	rlwimi r10, r5, 6, 0x19, 0x19
/* 8035DB88  54 6B 07 BE */	clrlwi r11, r3, 0x1e
/* 8035DB8C  40 82 00 08 */	bne lbl_8035DB94
/* 8035DB90  39 00 00 00 */	li r8, 0
lbl_8035DB94:
/* 8035DB94  20 89 00 02 */	subfic r4, r9, 2
/* 8035DB98  30 04 FF FF */	addic r0, r4, -1
/* 8035DB9C  7C 00 21 10 */	subfe r0, r0, r4
/* 8035DBA0  7D 29 00 D0 */	neg r9, r9
/* 8035DBA4  51 0A 3D F0 */	rlwimi r10, r8, 7, 0x17, 0x18
/* 8035DBA8  30 C9 FF FF */	addic r6, r9, -1
/* 8035DBAC  50 0A 4D AC */	rlwimi r10, r0, 9, 0x16, 0x16
/* 8035DBB0  7C C6 49 10 */	subfe r6, r6, r9
/* 8035DBB4  50 CA 55 6A */	rlwimi r10, r6, 0xa, 0x15, 0x15
/* 8035DBB8  50 EA 16 BA */	rlwimi r10, r7, 2, 0x1a, 0x1d
/* 8035DBBC  38 A0 00 10 */	li r5, 0x10
/* 8035DBC0  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035DBC4  98 A4 80 00 */	stb r5, 0x8000(r4)
/* 8035DBC8  38 0B 10 0E */	addi r0, r11, 0x100e
/* 8035DBCC  50 EA 3C 68 */	rlwimi r10, r7, 7, 0x11, 0x14
/* 8035DBD0  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8035DBD4  2C 03 00 04 */	cmpwi r3, 4
/* 8035DBD8  91 44 80 00 */	stw r10, -0x8000(r4)
/* 8035DBDC  40 82 00 18 */	bne lbl_8035DBF4
/* 8035DBE0  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8035DBE4  38 00 10 10 */	li r0, 0x1010
/* 8035DBE8  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8035DBEC  91 44 80 00 */	stw r10, -0x8000(r4)
/* 8035DBF0  48 00 00 1C */	b lbl_8035DC0C
lbl_8035DBF4:
/* 8035DBF4  2C 03 00 05 */	cmpwi r3, 5
/* 8035DBF8  40 82 00 14 */	bne lbl_8035DC0C
/* 8035DBFC  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 8035DC00  38 00 10 11 */	li r0, 0x1011
/* 8035DC04  90 04 80 00 */	stw r0, -0x8000(r4)
/* 8035DC08  91 44 80 00 */	stw r10, -0x8000(r4)
lbl_8035DC0C:
/* 8035DC0C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035DC10  38 00 00 01 */	li r0, 1
/* 8035DC14  B0 03 00 02 */	sth r0, 2(r3)
/* 8035DC18  4E 80 00 20 */	blr 
