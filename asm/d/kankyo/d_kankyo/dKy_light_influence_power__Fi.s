lbl_8019E520:
/* 8019E520  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E524  38 A4 CA 54 */	addi r5, r4, g_env_light@l /* 0x8042CA54@l */
/* 8019E528  54 64 0F FE */	srwi r4, r3, 0x1f
/* 8019E52C  38 04 FF FF */	addi r0, r4, -1
/* 8019E530  7C 60 00 38 */	and r0, r3, r0
/* 8019E534  54 00 10 3A */	slwi r0, r0, 2
/* 8019E538  7C 65 02 14 */	add r3, r5, r0
/* 8019E53C  80 63 03 F8 */	lwz r3, 0x3f8(r3)
/* 8019E540  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8019E544  4E 80 00 20 */	blr 
