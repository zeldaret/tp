lbl_8049139C:
/* 8049139C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804913A0  7C 08 02 A6 */	mflr r0
/* 804913A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804913A8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 804913AC  54 04 D6 BE */	rlwinm r4, r0, 0x1a, 0x1a, 0x1f
/* 804913B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804913B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804913B8  38 63 09 58 */	addi r3, r3, 0x958
/* 804913BC  4B BA 34 2D */	bl isTbox__12dSv_memBit_cCFi
/* 804913C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804913C4  7C 08 03 A6 */	mtlr r0
/* 804913C8  38 21 00 10 */	addi r1, r1, 0x10
/* 804913CC  4E 80 00 20 */	blr 
