lbl_805A4C58:
/* 805A4C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4C5C  7C 08 02 A6 */	mflr r0
/* 805A4C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A4C68  7C 7F 1B 78 */	mr r31, r3
/* 805A4C6C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 805A4C70  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A4C74  98 03 05 6B */	stb r0, 0x56b(r3)
/* 805A4C78  88 03 05 6B */	lbz r0, 0x56b(r3)
/* 805A4C7C  28 00 00 FF */	cmplwi r0, 0xff
/* 805A4C80  40 82 00 0C */	bne lbl_805A4C8C
/* 805A4C84  38 60 00 00 */	li r3, 0
/* 805A4C88  48 00 00 40 */	b lbl_805A4CC8
lbl_805A4C8C:
/* 805A4C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A4C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A4C94  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A4C98  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A4C9C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A4CA0  7C 05 07 74 */	extsb r5, r0
/* 805A4CA4  4B A9 06 BC */	b isSwitch__10dSv_info_cCFii
/* 805A4CA8  2C 03 00 00 */	cmpwi r3, 0
/* 805A4CAC  41 82 00 10 */	beq lbl_805A4CBC
/* 805A4CB0  38 00 00 01 */	li r0, 1
/* 805A4CB4  98 1F 05 69 */	stb r0, 0x569(r31)
/* 805A4CB8  48 00 00 0C */	b lbl_805A4CC4
lbl_805A4CBC:
/* 805A4CBC  38 00 00 00 */	li r0, 0
/* 805A4CC0  98 1F 05 69 */	stb r0, 0x569(r31)
lbl_805A4CC4:
/* 805A4CC4  38 60 00 01 */	li r3, 1
lbl_805A4CC8:
/* 805A4CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A4CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4CD0  7C 08 03 A6 */	mtlr r0
/* 805A4CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4CD8  4E 80 00 20 */	blr 
