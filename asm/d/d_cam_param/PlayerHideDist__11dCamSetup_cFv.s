lbl_80088988:
/* 80088988  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8008898C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80088990  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80088994  80 04 05 74 */	lwz r0, 0x574(r4)
/* 80088998  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8008899C  41 82 00 0C */	beq lbl_800889A8
/* 800889A0  C0 22 8E 54 */	lfs f1, lit_4014(r2)
/* 800889A4  4E 80 00 20 */	blr 
lbl_800889A8:
/* 800889A8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 800889AC  4E 80 00 20 */	blr 
