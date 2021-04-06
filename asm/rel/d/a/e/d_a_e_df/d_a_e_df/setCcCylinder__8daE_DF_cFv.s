lbl_806A78A0:
/* 806A78A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A78A4  7C 08 02 A6 */	mflr r0
/* 806A78A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A78AC  7C 64 1B 78 */	mr r4, r3
/* 806A78B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A78B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A78B8  38 63 23 3C */	addi r3, r3, 0x233c
/* 806A78BC  38 84 06 B8 */	addi r4, r4, 0x6b8
/* 806A78C0  4B BB D2 E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 806A78C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A78C8  7C 08 03 A6 */	mtlr r0
/* 806A78CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806A78D0  4E 80 00 20 */	blr 
