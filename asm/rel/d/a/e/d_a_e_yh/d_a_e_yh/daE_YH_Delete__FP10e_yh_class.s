lbl_80803180:
/* 80803180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80803184  7C 08 02 A6 */	mflr r0
/* 80803188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080318C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80803190  7C 7F 1B 78 */	mr r31, r3
/* 80803194  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80803198  3C 80 80 80 */	lis r4, stringBase0@ha
/* 8080319C  38 84 43 DC */	addi r4, r4, stringBase0@l
/* 808031A0  4B 82 9E 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 808031A4  88 1F 12 70 */	lbz r0, 0x1270(r31)
/* 808031A8  28 00 00 00 */	cmplwi r0, 0
/* 808031AC  41 82 00 10 */	beq lbl_808031BC
/* 808031B0  38 00 00 00 */	li r0, 0
/* 808031B4  3C 60 80 80 */	lis r3, data_80804718@ha
/* 808031B8  98 03 47 18 */	stb r0, data_80804718@l(r3)
lbl_808031BC:
/* 808031BC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 808031C0  28 00 00 00 */	cmplwi r0, 0
/* 808031C4  41 82 00 0C */	beq lbl_808031D0
/* 808031C8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 808031CC  4B 80 E1 44 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_808031D0:
/* 808031D0  38 60 00 01 */	li r3, 1
/* 808031D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808031D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808031DC  7C 08 03 A6 */	mtlr r0
/* 808031E0  38 21 00 10 */	addi r1, r1, 0x10
/* 808031E4  4E 80 00 20 */	blr 
