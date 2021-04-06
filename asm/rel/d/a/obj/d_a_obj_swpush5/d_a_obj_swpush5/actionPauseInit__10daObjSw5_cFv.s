lbl_8059BEB4:
/* 8059BEB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059BEB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059BEBC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8059BEC0  80 04 05 8C */	lwz r0, 0x58c(r4)
/* 8059BEC4  60 00 02 00 */	ori r0, r0, 0x200
/* 8059BEC8  90 04 05 8C */	stw r0, 0x58c(r4)
/* 8059BECC  38 00 00 0A */	li r0, 0xa
/* 8059BED0  98 03 05 F0 */	stb r0, 0x5f0(r3)
/* 8059BED4  38 00 00 02 */	li r0, 2
/* 8059BED8  98 03 05 EF */	stb r0, 0x5ef(r3)
/* 8059BEDC  4E 80 00 20 */	blr 
