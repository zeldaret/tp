lbl_805A5498:
/* 805A5498  3C 80 80 45 */	lis r4, mTagMagne__12daTagMagne_c@ha /* 0x80450DBC@ha */
/* 805A549C  84 04 0D BC */	lwzu r0, mTagMagne__12daTagMagne_c@l(r4)  /* 0x80450DBC@l */
/* 805A54A0  28 00 00 00 */	cmplwi r0, 0
/* 805A54A4  41 82 00 0C */	beq lbl_805A54B0
/* 805A54A8  38 60 00 00 */	li r3, 0
/* 805A54AC  4E 80 00 20 */	blr 
lbl_805A54B0:
/* 805A54B0  90 64 00 00 */	stw r3, 0(r4)
/* 805A54B4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 805A54B8  98 03 05 68 */	stb r0, 0x568(r3)
/* 805A54BC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 805A54C0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A54C4  98 03 05 69 */	stb r0, 0x569(r3)
/* 805A54C8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 805A54CC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805A54D0  98 03 05 6A */	stb r0, 0x56a(r3)
/* 805A54D4  38 60 00 01 */	li r3, 1
/* 805A54D8  4E 80 00 20 */	blr 
