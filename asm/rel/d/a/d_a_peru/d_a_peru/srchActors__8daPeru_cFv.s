lbl_80D47CAC:
/* 80D47CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D47CB0  7C 08 02 A6 */	mflr r0
/* 80D47CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D47CB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D47CBC  7C 7F 1B 78 */	mr r31, r3
/* 80D47CC0  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80D47CC4  4B 3F DA 45 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D47CC8  28 03 00 00 */	cmplwi r3, 0
/* 80D47CCC  40 82 00 20 */	bne lbl_80D47CEC
/* 80D47CD0  7F E3 FB 78 */	mr r3, r31
/* 80D47CD4  38 80 00 10 */	li r4, 0x10
/* 80D47CD8  38 A0 00 00 */	li r5, 0
/* 80D47CDC  4B 40 42 09 */	bl getEvtAreaTagP__8daNpcT_cFii
/* 80D47CE0  7C 64 1B 78 */	mr r4, r3
/* 80D47CE4  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 80D47CE8  4B 3F D9 F9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80D47CEC:
/* 80D47CEC  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80D47CF0  4B 3F DA 19 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D47CF4  28 03 00 00 */	cmplwi r3, 0
/* 80D47CF8  40 82 00 2C */	bne lbl_80D47D24
/* 80D47CFC  38 00 00 00 */	li r0, 0
/* 80D47D00  90 01 00 08 */	stw r0, 8(r1)
/* 80D47D04  38 60 00 B9 */	li r3, 0xb9
/* 80D47D08  38 81 00 08 */	addi r4, r1, 8
/* 80D47D0C  4B 2D 1D 21 */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80D47D10  2C 03 00 00 */	cmpwi r3, 0
/* 80D47D14  41 82 00 10 */	beq lbl_80D47D24
/* 80D47D18  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80D47D1C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D47D20  4B 3F D9 C1 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80D47D24:
/* 80D47D24  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80D47D28  4B 3F D9 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80D47D2C  28 03 00 00 */	cmplwi r3, 0
/* 80D47D30  40 82 00 18 */	bne lbl_80D47D48
/* 80D47D34  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 80D47D38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D47D3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D47D40  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D47D44  4B 3F D9 9D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80D47D48:
/* 80D47D48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D47D4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D47D50  7C 08 03 A6 */	mtlr r0
/* 80D47D54  38 21 00 20 */	addi r1, r1, 0x20
/* 80D47D58  4E 80 00 20 */	blr 
