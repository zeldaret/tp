lbl_8059D380:
/* 8059D380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D384  7C 08 02 A6 */	mflr r0
/* 8059D388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D38C  7C 64 1B 78 */	mr r4, r3
/* 8059D390  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059D394  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059D398  38 63 23 3C */	addi r3, r3, 0x233c
/* 8059D39C  38 84 05 F0 */	addi r4, r4, 0x5f0
/* 8059D3A0  4B CC 78 09 */	bl Set__4cCcSFP8cCcD_Obj
/* 8059D3A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D3A8  7C 08 03 A6 */	mtlr r0
/* 8059D3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D3B0  4E 80 00 20 */	blr 
