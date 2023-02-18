lbl_8058E5BC:
/* 8058E5BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E5C0  7C 08 02 A6 */	mflr r0
/* 8058E5C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E5CC  7C 7F 1B 78 */	mr r31, r3
/* 8058E5D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058E5D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058E5D8  88 9F 06 F8 */	lbz r4, 0x6f8(r31)
/* 8058E5DC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058E5E0  7C 05 07 74 */	extsb r5, r0
/* 8058E5E4  4B AA 6D 7D */	bl isSwitch__10dSv_info_cCFii
/* 8058E5E8  88 1F 06 FC */	lbz r0, 0x6fc(r31)
/* 8058E5EC  7C 00 1A 78 */	xor r0, r0, r3
/* 8058E5F0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8058E5F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E5F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E5FC  7C 08 03 A6 */	mtlr r0
/* 8058E600  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E604  4E 80 00 20 */	blr 
