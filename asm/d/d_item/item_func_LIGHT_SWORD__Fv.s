lbl_80098928:
/* 80098928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009892C  7C 08 02 A6 */	mflr r0
/* 80098930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80098934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009893C  38 63 01 00 */	addi r3, r3, 0x100
/* 80098940  38 80 00 01 */	li r4, 1
/* 80098944  38 A0 00 03 */	li r5, 3
/* 80098948  4B F9 B8 A1 */	bl setCollect__20dSv_player_collect_cFiUc
/* 8009894C  38 60 00 49 */	li r3, 0x49
/* 80098950  38 80 00 00 */	li r4, 0
/* 80098954  48 18 5B DD */	bl dMeter2Info_setSword__FUcb
/* 80098958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009895C  7C 08 03 A6 */	mtlr r0
/* 80098960  38 21 00 10 */	addi r1, r1, 0x10
/* 80098964  4E 80 00 20 */	blr 
