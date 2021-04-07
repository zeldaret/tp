lbl_80489BE0:
/* 80489BE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80489BE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80489BE8  80 83 5F 18 */	lwz r4, 0x5f18(r3)
/* 80489BEC  3C 60 02 00 */	lis r3, 0x0200 /* 0x02000008@ha */
/* 80489BF0  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x02000008@l */
/* 80489BF4  7C 83 00 38 */	and r3, r4, r0
/* 80489BF8  30 03 FF FF */	addic r0, r3, -1
/* 80489BFC  7C 60 19 10 */	subfe r3, r0, r3
/* 80489C00  4E 80 00 20 */	blr 
