lbl_80D5DB90:
/* 80D5DB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DB94  7C 08 02 A6 */	mflr r0
/* 80D5DB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5DBA0  7C 7F 1B 78 */	mr r31, r3
/* 80D5DBA4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5DBA8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5DBAC  40 82 00 1C */	bne lbl_80D5DBC8
/* 80D5DBB0  28 1F 00 00 */	cmplwi r31, 0
/* 80D5DBB4  41 82 00 08 */	beq lbl_80D5DBBC
/* 80D5DBB8  4B 2B AF AC */	b __ct__10fopAc_ac_cFv
lbl_80D5DBBC:
/* 80D5DBBC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5DBC0  60 00 00 08 */	ori r0, r0, 8
/* 80D5DBC4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5DBC8:
/* 80D5DBC8  38 00 00 00 */	li r0, 0
/* 80D5DBCC  98 1F 05 69 */	stb r0, 0x569(r31)
/* 80D5DBD0  7F E3 FB 78 */	mr r3, r31
/* 80D5DBD4  4B FF FF 65 */	bl setBaseMtx__13daTagPoFire_cFv
/* 80D5DBD8  38 60 00 04 */	li r3, 4
/* 80D5DBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5DBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DBE4  7C 08 03 A6 */	mtlr r0
/* 80D5DBE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DBEC  4E 80 00 20 */	blr 
