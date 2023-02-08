lbl_80A1B6F8:
/* 80A1B6F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1B6FC  7C 08 02 A6 */	mflr r0
/* 80A1B700  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1B704  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B708  4B 94 6A D5 */	bl _savegpr_29
/* 80A1B70C  7C 7D 1B 78 */	mr r29, r3
/* 80A1B710  4B 73 4F DD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B714  7C 7E 1B 78 */	mr r30, r3
/* 80A1B718  38 7D 00 08 */	addi r3, r29, 8
/* 80A1B71C  4B 73 4F D1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B720  7C 7F 1B 78 */	mr r31, r3
/* 80A1B724  38 7D 00 10 */	addi r3, r29, 0x10
/* 80A1B728  4B 73 4F C5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B72C  28 1E 00 00 */	cmplwi r30, 0
/* 80A1B730  41 82 00 0C */	beq lbl_80A1B73C
/* 80A1B734  38 00 00 00 */	li r0, 0
/* 80A1B738  98 1E 14 42 */	stb r0, 0x1442(r30)
lbl_80A1B73C:
/* 80A1B73C  28 1F 00 00 */	cmplwi r31, 0
/* 80A1B740  41 82 00 0C */	beq lbl_80A1B74C
/* 80A1B744  38 00 00 00 */	li r0, 0
/* 80A1B748  98 1F 14 66 */	stb r0, 0x1466(r31)
lbl_80A1B74C:
/* 80A1B74C  28 03 00 00 */	cmplwi r3, 0
/* 80A1B750  41 82 00 0C */	beq lbl_80A1B75C
/* 80A1B754  38 00 00 00 */	li r0, 0
/* 80A1B758  98 03 14 66 */	stb r0, 0x1466(r3)
lbl_80A1B75C:
/* 80A1B75C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B760  4B 94 6A C9 */	bl _restgpr_29
/* 80A1B764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1B768  7C 08 03 A6 */	mtlr r0
/* 80A1B76C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1B770  4E 80 00 20 */	blr 
