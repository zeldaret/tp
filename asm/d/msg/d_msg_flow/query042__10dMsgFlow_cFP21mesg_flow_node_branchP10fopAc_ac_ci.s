lbl_8024BFEC:
/* 8024BFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024BFF0  7C 08 02 A6 */	mflr r0
/* 8024BFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024BFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024BFFC  93 C1 00 08 */	stw r30, 8(r1)
/* 8024C000  83 ED 8A 98 */	lwz r31, m_midnaActor__9daPy_py_c(r13)
/* 8024C004  3B C0 00 00 */	li r30, 0
/* 8024C008  3C 60 80 3A */	lis r3, d_msg_d_msg_flow__stringBase0@ha /* 0x80399CB0@ha */
/* 8024C00C  38 63 9C B0 */	addi r3, r3, d_msg_d_msg_flow__stringBase0@l /* 0x80399CB0@l */
/* 8024C010  38 63 00 10 */	addi r3, r3, 0x10
/* 8024C014  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C018  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C01C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 8024C020  48 11 C9 75 */	bl strcmp
/* 8024C024  2C 03 00 00 */	cmpwi r3, 0
/* 8024C028  40 82 00 28 */	bne lbl_8024C050
/* 8024C02C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C034  38 63 09 78 */	addi r3, r3, 0x978
/* 8024C038  38 80 00 3C */	li r4, 0x3c
/* 8024C03C  4B DE 8B AD */	bl isSwitch__12dSv_danBit_cCFi
/* 8024C040  2C 03 00 00 */	cmpwi r3, 0
/* 8024C044  41 82 00 0C */	beq lbl_8024C050
/* 8024C048  3B C0 00 04 */	li r30, 4
/* 8024C04C  48 00 00 40 */	b lbl_8024C08C
lbl_8024C050:
/* 8024C050  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 8024C054  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 8024C058  41 82 00 0C */	beq lbl_8024C064
/* 8024C05C  3B C0 00 01 */	li r30, 1
/* 8024C060  48 00 00 2C */	b lbl_8024C08C
lbl_8024C064:
/* 8024C064  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 8024C068  41 82 00 0C */	beq lbl_8024C074
/* 8024C06C  3B C0 00 02 */	li r30, 2
/* 8024C070  48 00 00 1C */	b lbl_8024C08C
lbl_8024C074:
/* 8024C074  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8024C078  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8024C07C  88 03 10 50 */	lbz r0, 0x1050(r3)
/* 8024C080  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8024C084  41 82 00 08 */	beq lbl_8024C08C
/* 8024C088  3B C0 00 03 */	li r30, 3
lbl_8024C08C:
/* 8024C08C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 8024C090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024C094  83 C1 00 08 */	lwz r30, 8(r1)
/* 8024C098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C09C  7C 08 03 A6 */	mtlr r0
/* 8024C0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C0A4  4E 80 00 20 */	blr 
