lbl_80348F80:
/* 80348F80  7C 08 02 A6 */	mflr r0
/* 80348F84  90 01 00 04 */	stw r0, 4(r1)
/* 80348F88  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 80348F8C  93 E1 00 94 */	stw r31, 0x94(r1)
/* 80348F90  3B E4 00 00 */	addi r31, r4, 0
/* 80348F94  93 C1 00 90 */	stw r30, 0x90(r1)
/* 80348F98  3B C3 00 00 */	addi r30, r3, 0
/* 80348F9C  4B FF F5 8D */	bl DVDConvertPathToEntrynum
/* 80348FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80348FA4  40 80 00 34 */	bge lbl_80348FD8
/* 80348FA8  80 6D 91 E8 */	lwz r3, currentDirectory(r13)
/* 80348FAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80348FB0  38 A0 00 80 */	li r5, 0x80
/* 80348FB4  4B FF FB 29 */	bl DVDConvertEntrynumToPath
/* 80348FB8  3C 60 80 3D */	lis r3, lit_311@ha
/* 80348FBC  4C C6 31 82 */	crclr 6
/* 80348FC0  38 63 14 E4 */	addi r3, r3, lit_311@l
/* 80348FC4  38 9E 00 00 */	addi r4, r30, 0
/* 80348FC8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80348FCC  4B CB DA F1 */	bl OSReport
/* 80348FD0  38 60 00 00 */	li r3, 0
/* 80348FD4  48 00 00 54 */	b lbl_80349028
lbl_80348FD8:
/* 80348FD8  1C A3 00 0C */	mulli r5, r3, 0xc
/* 80348FDC  80 8D 91 DC */	lwz r4, FstStart(r13)
/* 80348FE0  7C 04 28 2E */	lwzx r0, r4, r5
/* 80348FE4  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 80348FE8  40 82 00 0C */	bne lbl_80348FF4
/* 80348FEC  38 00 00 00 */	li r0, 0
/* 80348FF0  48 00 00 08 */	b lbl_80348FF8
lbl_80348FF4:
/* 80348FF4  38 00 00 01 */	li r0, 1
lbl_80348FF8:
/* 80348FF8  2C 00 00 00 */	cmpwi r0, 0
/* 80348FFC  40 82 00 0C */	bne lbl_80349008
/* 80349000  38 60 00 00 */	li r3, 0
/* 80349004  48 00 00 24 */	b lbl_80349028
lbl_80349008:
/* 80349008  90 7F 00 00 */	stw r3, 0(r31)
/* 8034900C  38 03 00 01 */	addi r0, r3, 1
/* 80349010  38 60 00 01 */	li r3, 1
/* 80349014  90 1F 00 04 */	stw r0, 4(r31)
/* 80349018  80 0D 91 DC */	lwz r0, FstStart(r13)
/* 8034901C  7C 80 2A 14 */	add r4, r0, r5
/* 80349020  80 04 00 08 */	lwz r0, 8(r4)
/* 80349024  90 1F 00 08 */	stw r0, 8(r31)
lbl_80349028:
/* 80349028  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8034902C  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 80349030  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 80349034  38 21 00 98 */	addi r1, r1, 0x98
/* 80349038  7C 08 03 A6 */	mtlr r0
/* 8034903C  4E 80 00 20 */	blr 
