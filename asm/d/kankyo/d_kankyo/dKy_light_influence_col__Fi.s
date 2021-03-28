lbl_8019E404:
/* 8019E404  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8019E408  38 A4 CA 54 */	addi r5, r4, g_env_light@l
/* 8019E40C  54 64 0F FE */	srwi r4, r3, 0x1f
/* 8019E410  38 04 FF FF */	addi r0, r4, -1
/* 8019E414  7C 60 00 38 */	and r0, r3, r0
/* 8019E418  54 00 10 3A */	slwi r0, r0, 2
/* 8019E41C  7C 65 02 14 */	add r3, r5, r0
/* 8019E420  80 83 03 F8 */	lwz r4, 0x3f8(r3)
/* 8019E424  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8019E428  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8019E42C  4E 80 00 20 */	blr 
