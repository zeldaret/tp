lbl_801FD8C0:
/* 801FD8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD8C4  7C 08 02 A6 */	mflr r0
/* 801FD8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD8CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FD8D0  7C 7F 1B 78 */	mr r31, r3
/* 801FD8D4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FD8D8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FD8DC  93 E3 00 24 */	stw r31, 0x24(r3)
/* 801FD8E0  38 00 FF FF */	li r0, -1
/* 801FD8E4  3C 60 80 43 */	lis r3, g_mwHIO@ha /* 0x8042E86C@ha */
/* 801FD8E8  38 63 E8 6C */	addi r3, r3, g_mwHIO@l /* 0x8042E86C@l */
/* 801FD8EC  98 03 00 04 */	stb r0, 4(r3)
/* 801FD8F0  3C 60 80 43 */	lis r3, g_mwDHIO@ha /* 0x8042E9A8@ha */
/* 801FD8F4  38 63 E9 A8 */	addi r3, r3, g_mwDHIO@l /* 0x8042E9A8@l */
/* 801FD8F8  98 03 00 04 */	stb r0, 4(r3)
/* 801FD8FC  38 60 00 00 */	li r3, 0
/* 801FD900  4B E3 08 89 */	bl dComIfGp_offHeapLockFlag__Fi
/* 801FD904  7F E3 FB 78 */	mr r3, r31
/* 801FD908  4B E2 20 AD */	bl fopMsgM_setStageLayer__FPv
/* 801FD90C  7F E3 FB 78 */	mr r3, r31
/* 801FD910  4B FF F8 31 */	bl _create__5dMw_cFv
/* 801FD914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FD918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD91C  7C 08 03 A6 */	mtlr r0
/* 801FD920  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD924  4E 80 00 20 */	blr 
