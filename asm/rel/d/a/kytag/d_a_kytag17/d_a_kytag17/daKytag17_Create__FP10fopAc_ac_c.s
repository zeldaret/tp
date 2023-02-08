lbl_8046DB78:
/* 8046DB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DB7C  7C 08 02 A6 */	mflr r0
/* 8046DB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DB84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046DB88  7C 7F 1B 78 */	mr r31, r3
/* 8046DB8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046DB90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046DB94  40 82 00 1C */	bne lbl_8046DBB0
/* 8046DB98  28 1F 00 00 */	cmplwi r31, 0
/* 8046DB9C  41 82 00 08 */	beq lbl_8046DBA4
/* 8046DBA0  4B BA AF C5 */	bl __ct__10fopAc_ac_cFv
lbl_8046DBA4:
/* 8046DBA4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8046DBA8  60 00 00 08 */	ori r0, r0, 8
/* 8046DBAC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8046DBB0:
/* 8046DBB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8046DBB4  98 1F 05 68 */	stb r0, 0x568(r31)
/* 8046DBB8  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 8046DBBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8046DBC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8046DBC4  98 03 13 08 */	stb r0, 0x1308(r3)
/* 8046DBC8  38 60 00 04 */	li r3, 4
/* 8046DBCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046DBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DBD4  7C 08 03 A6 */	mtlr r0
/* 8046DBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DBDC  4E 80 00 20 */	blr 
