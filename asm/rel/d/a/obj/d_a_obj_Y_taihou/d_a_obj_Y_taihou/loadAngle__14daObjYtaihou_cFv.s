lbl_80B9FF1C:
/* 80B9FF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9FF20  7C 08 02 A6 */	mflr r0
/* 80B9FF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9FF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9FF2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9FF30  7C 7E 1B 78 */	mr r30, r3
/* 80B9FF34  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 80B9FF38  54 1F C6 3E */	rlwinm r31, r0, 0x18, 0x18, 0x1f
/* 80B9FF3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9FF40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9FF44  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80B9FF48  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9FF4C  7C 05 07 74 */	extsb r5, r0
/* 80B9FF50  4B 49 54 11 */	bl isSwitch__10dSv_info_cCFii
/* 80B9FF54  20 03 00 00 */	subfic r0, r3, 0
/* 80B9FF58  7C 60 01 10 */	subfe r3, r0, r0
/* 80B9FF5C  38 00 00 02 */	li r0, 2
/* 80B9FF60  7C 00 18 38 */	and r0, r0, r3
/* 80B9FF64  98 1E 07 75 */	stb r0, 0x775(r30)
/* 80B9FF68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9FF6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9FF70  7F E4 FB 78 */	mr r4, r31
/* 80B9FF74  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9FF78  7C 05 07 74 */	extsb r5, r0
/* 80B9FF7C  4B 49 53 E5 */	bl isSwitch__10dSv_info_cCFii
/* 80B9FF80  2C 03 00 00 */	cmpwi r3, 0
/* 80B9FF84  41 82 00 10 */	beq lbl_80B9FF94
/* 80B9FF88  88 1E 07 75 */	lbz r0, 0x775(r30)
/* 80B9FF8C  60 00 00 01 */	ori r0, r0, 1
/* 80B9FF90  98 1E 07 75 */	stb r0, 0x775(r30)
lbl_80B9FF94:
/* 80B9FF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9FF98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9FF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9FFA0  7C 08 03 A6 */	mtlr r0
/* 80B9FFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9FFA8  4E 80 00 20 */	blr 
