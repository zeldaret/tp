lbl_80A9E30C:
/* 80A9E30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E310  7C 08 02 A6 */	mflr r0
/* 80A9E314  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E318  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9E31C  7C 7F 1B 78 */	mr r31, r3
/* 80A9E320  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A9E324  4B 6A 73 E5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E328  28 03 00 00 */	cmplwi r3, 0
/* 80A9E32C  41 82 00 0C */	beq lbl_80A9E338
/* 80A9E330  38 00 00 00 */	li r0, 0
/* 80A9E334  98 03 0F 84 */	stb r0, 0xf84(r3)
lbl_80A9E338:
/* 80A9E338  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A9E33C  4B 6A 73 CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E340  28 03 00 00 */	cmplwi r3, 0
/* 80A9E344  41 82 00 0C */	beq lbl_80A9E350
/* 80A9E348  38 00 00 00 */	li r0, 0
/* 80A9E34C  98 03 0F 81 */	stb r0, 0xf81(r3)
lbl_80A9E350:
/* 80A9E350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E358  7C 08 03 A6 */	mtlr r0
/* 80A9E35C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E360  4E 80 00 20 */	blr 
