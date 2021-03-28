lbl_800F6FA4:
/* 800F6FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6FA8  7C 08 02 A6 */	mflr r0
/* 800F6FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6FB4  7C 7F 1B 78 */	mr r31, r3
/* 800F6FB8  38 80 00 9C */	li r4, 0x9c
/* 800F6FBC  4B FC BD E9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F6FC0  2C 03 00 00 */	cmpwi r3, 0
/* 800F6FC4  40 82 00 0C */	bne lbl_800F6FD0
/* 800F6FC8  38 60 00 00 */	li r3, 0
/* 800F6FCC  48 00 00 30 */	b lbl_800F6FFC
lbl_800F6FD0:
/* 800F6FD0  7F E3 FB 78 */	mr r3, r31
/* 800F6FD4  4B FF D5 C9 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F6FD8  7F E3 FB 78 */	mr r3, r31
/* 800F6FDC  38 80 00 01 */	li r4, 1
/* 800F6FE0  4B FE 93 F1 */	bl initBoomerangUpperAnimeSpeed__9daAlink_cFi
/* 800F6FE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F6FE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F6FEC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F6FF0  64 00 00 08 */	oris r0, r0, 8
/* 800F6FF4  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F6FF8  38 60 00 01 */	li r3, 1
lbl_800F6FFC:
/* 800F6FFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F7004  7C 08 03 A6 */	mtlr r0
/* 800F7008  38 21 00 10 */	addi r1, r1, 0x10
/* 800F700C  4E 80 00 20 */	blr 
