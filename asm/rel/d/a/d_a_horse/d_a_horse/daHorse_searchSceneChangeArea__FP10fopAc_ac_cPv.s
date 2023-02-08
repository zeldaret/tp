lbl_80843C40:
/* 80843C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80843C44  7C 08 02 A6 */	mflr r0
/* 80843C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80843C4C  7C 64 1B 78 */	mr r4, r3
/* 80843C50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80843C54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80843C58  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 80843C5C  4B FF FF A1 */	bl searchSceneChangeArea__9daHorse_cFP10fopAc_ac_c
/* 80843C60  38 60 00 00 */	li r3, 0
/* 80843C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80843C68  7C 08 03 A6 */	mtlr r0
/* 80843C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80843C70  4E 80 00 20 */	blr 
