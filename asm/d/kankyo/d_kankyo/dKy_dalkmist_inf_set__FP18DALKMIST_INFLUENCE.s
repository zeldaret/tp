lbl_801A7814:
/* 801A7814  38 E0 00 00 */	li r7, 0
/* 801A7818  38 80 00 00 */	li r4, 0
/* 801A781C  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7820  38 C5 CA 54 */	addi r6, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A7824  38 00 00 0A */	li r0, 0xa
/* 801A7828  7C 09 03 A6 */	mtctr r0
lbl_801A782C:
/* 801A782C  7C A6 22 14 */	add r5, r6, r4
/* 801A7830  80 05 09 90 */	lwz r0, 0x990(r5)
/* 801A7834  28 00 00 00 */	cmplwi r0, 0
/* 801A7838  40 82 00 20 */	bne lbl_801A7858
/* 801A783C  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7840  38 05 CA 54 */	addi r0, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A7844  7C 80 22 14 */	add r4, r0, r4
/* 801A7848  90 64 09 90 */	stw r3, 0x990(r4)
/* 801A784C  80 64 09 90 */	lwz r3, 0x990(r4)
/* 801A7850  98 E3 00 10 */	stb r7, 0x10(r3)
/* 801A7854  4E 80 00 20 */	blr 
lbl_801A7858:
/* 801A7858  38 E7 00 01 */	addi r7, r7, 1
/* 801A785C  38 84 00 04 */	addi r4, r4, 4
/* 801A7860  42 00 FF CC */	bdnz lbl_801A782C
/* 801A7864  4E 80 00 20 */	blr 
