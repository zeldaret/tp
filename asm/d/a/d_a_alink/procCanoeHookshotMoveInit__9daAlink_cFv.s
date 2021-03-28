lbl_800F731C:
/* 800F731C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7320  7C 08 02 A6 */	mflr r0
/* 800F7324  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F732C  7C 7F 1B 78 */	mr r31, r3
/* 800F7330  38 80 00 9F */	li r4, 0x9f
/* 800F7334  4B FC BA 71 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F7338  2C 03 00 00 */	cmpwi r3, 0
/* 800F733C  40 82 00 0C */	bne lbl_800F7348
/* 800F7340  38 60 00 00 */	li r3, 0
/* 800F7344  48 00 00 30 */	b lbl_800F7374
lbl_800F7348:
/* 800F7348  7F E3 FB 78 */	mr r3, r31
/* 800F734C  4B FF D2 51 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F7350  7F E3 FB 78 */	mr r3, r31
/* 800F7354  38 80 00 00 */	li r4, 0
/* 800F7358  48 01 1D 95 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 800F735C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F7360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F7364  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F7368  60 00 40 00 */	ori r0, r0, 0x4000
/* 800F736C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F7370  38 60 00 01 */	li r3, 1
lbl_800F7374:
/* 800F7374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7378  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F737C  7C 08 03 A6 */	mtlr r0
/* 800F7380  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7384  4E 80 00 20 */	blr 
