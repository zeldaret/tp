lbl_8024B954:
/* 8024B954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B95C  88 63 00 EC */	lbz r3, 0xec(r3)
/* 8024B960  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024B964  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8024B968  7C 00 18 50 */	subf r0, r0, r3
/* 8024B96C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024B970  4E 80 00 20 */	blr 
