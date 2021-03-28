lbl_8012DBA8:
/* 8012DBA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012DBAC  7C 08 02 A6 */	mflr r0
/* 8012DBB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012DBB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012DBB8  7C 7F 1B 78 */	mr r31, r3
/* 8012DBBC  38 80 00 F6 */	li r4, 0xf6
/* 8012DBC0  4B F9 51 E5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012DBC4  2C 03 00 00 */	cmpwi r3, 0
/* 8012DBC8  40 82 00 0C */	bne lbl_8012DBD4
/* 8012DBCC  38 60 00 00 */	li r3, 0
/* 8012DBD0  48 00 00 60 */	b lbl_8012DC30
lbl_8012DBD4:
/* 8012DBD4  7F E3 FB 78 */	mr r3, r31
/* 8012DBD8  4B F8 5D 2D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8012DBDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012DBE0  41 82 00 10 */	beq lbl_8012DBF0
/* 8012DBE4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8012DBE8  60 00 00 01 */	ori r0, r0, 1
/* 8012DBEC  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8012DBF0:
/* 8012DBF0  7F E3 FB 78 */	mr r3, r31
/* 8012DBF4  4B FF B3 69 */	bl setWolfAtnMoveDirection__9daAlink_cFv
/* 8012DBF8  7F E3 FB 78 */	mr r3, r31
/* 8012DBFC  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha
/* 8012DC00  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l
/* 8012DC04  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 8012DC08  4B FF B5 0D */	bl setBlendWolfAtnMoveAnime__9daAlink_cFf
/* 8012DC0C  7F E3 FB 78 */	mr r3, r31
/* 8012DC10  4B FF AB 89 */	bl checkWolfAtnWait__9daAlink_cFv
/* 8012DC14  2C 03 00 00 */	cmpwi r3, 0
/* 8012DC18  41 82 00 14 */	beq lbl_8012DC2C
/* 8012DC1C  7F E3 FB 78 */	mr r3, r31
/* 8012DC20  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010037@ha */
/* 8012DC24  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x00010037@l */
/* 8012DC28  4B F9 14 91 */	bl voiceStartLevel__9daAlink_cFUl
lbl_8012DC2C:
/* 8012DC2C  38 60 00 01 */	li r3, 1
lbl_8012DC30:
/* 8012DC30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012DC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012DC38  7C 08 03 A6 */	mtlr r0
/* 8012DC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8012DC40  4E 80 00 20 */	blr 
