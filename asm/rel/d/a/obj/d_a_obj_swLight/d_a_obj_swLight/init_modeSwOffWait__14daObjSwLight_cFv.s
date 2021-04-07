lbl_80CF77D8:
/* 80CF77D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF77DC  7C 08 02 A6 */	mflr r0
/* 80CF77E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF77E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF77E8  7C 7F 1B 78 */	mr r31, r3
/* 80CF77EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF77F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF77F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF77F8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CF77FC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF7800  7C 05 07 74 */	extsb r5, r0
/* 80CF7804  4B 33 D9 FD */	bl onSwitch__10dSv_info_cFii
/* 80CF7808  38 00 00 00 */	li r0, 0
/* 80CF780C  98 1F 0A E3 */	stb r0, 0xae3(r31)
/* 80CF7810  98 1F 0A E1 */	stb r0, 0xae1(r31)
/* 80CF7814  7F E3 FB 78 */	mr r3, r31
/* 80CF7818  48 00 02 55 */	bl setOnTimer__14daObjSwLight_cFv
/* 80CF781C  38 00 00 01 */	li r0, 1
/* 80CF7820  98 1F 0A E0 */	stb r0, 0xae0(r31)
/* 80CF7824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF782C  7C 08 03 A6 */	mtlr r0
/* 80CF7830  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7834  4E 80 00 20 */	blr 
