lbl_80582E68:
/* 80582E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582E6C  7C 08 02 A6 */	mflr r0
/* 80582E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80582E78  7C 7F 1B 78 */	mr r31, r3
/* 80582E7C  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80582E80  60 00 00 10 */	ori r0, r0, 0x10
/* 80582E84  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80582E88  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80582E8C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80582E90  41 82 00 48 */	beq lbl_80582ED8
/* 80582E94  38 80 00 03 */	li r4, 3
/* 80582E98  38 A0 00 00 */	li r5, 0
/* 80582E9C  48 00 00 55 */	bl setActionMode__15daObj_Kanban2_cFii
/* 80582EA0  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80582EA4  2C 00 00 00 */	cmpwi r0, 0
/* 80582EA8  40 81 00 10 */	ble lbl_80582EB8
/* 80582EAC  38 00 40 00 */	li r0, 0x4000
/* 80582EB0  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80582EB4  48 00 00 0C */	b lbl_80582EC0
lbl_80582EB8:
/* 80582EB8  38 00 C0 00 */	li r0, -16384
/* 80582EBC  B0 1F 06 08 */	sth r0, 0x608(r31)
lbl_80582EC0:
/* 80582EC0  38 00 00 00 */	li r0, 0
/* 80582EC4  98 1F 06 2E */	stb r0, 0x62e(r31)
/* 80582EC8  7F E3 FB 78 */	mr r3, r31
/* 80582ECC  4B FF F8 51 */	bl setGroundAngle__15daObj_Kanban2_cFv
/* 80582ED0  38 60 00 01 */	li r3, 1
/* 80582ED4  48 00 00 08 */	b lbl_80582EDC
lbl_80582ED8:
/* 80582ED8  38 60 00 00 */	li r3, 0
lbl_80582EDC:
/* 80582EDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80582EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80582EE4  7C 08 03 A6 */	mtlr r0
/* 80582EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80582EEC  4E 80 00 20 */	blr 
