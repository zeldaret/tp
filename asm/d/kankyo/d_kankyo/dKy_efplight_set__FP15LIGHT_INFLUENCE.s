lbl_801A797C:
/* 801A797C  38 80 00 00 */	li r4, 0
/* 801A7980  3C A0 80 43 */	lis r5, g_env_light@ha
/* 801A7984  38 C5 CA 54 */	addi r6, r5, g_env_light@l
/* 801A7988  38 00 00 05 */	li r0, 5
/* 801A798C  7C 09 03 A6 */	mtctr r0
lbl_801A7990:
/* 801A7990  7C A6 22 14 */	add r5, r6, r4
/* 801A7994  80 05 05 88 */	lwz r0, 0x588(r5)
/* 801A7998  7C 00 18 40 */	cmplw r0, r3
/* 801A799C  4D 82 00 20 */	beqlr 
/* 801A79A0  38 84 00 04 */	addi r4, r4, 4
/* 801A79A4  42 00 FF EC */	bdnz lbl_801A7990
/* 801A79A8  38 E0 00 00 */	li r7, 0
/* 801A79AC  38 80 00 00 */	li r4, 0
/* 801A79B0  3C A0 80 43 */	lis r5, g_env_light@ha
/* 801A79B4  38 C5 CA 54 */	addi r6, r5, g_env_light@l
/* 801A79B8  38 00 00 05 */	li r0, 5
/* 801A79BC  7C 09 03 A6 */	mtctr r0
lbl_801A79C0:
/* 801A79C0  7C A6 22 14 */	add r5, r6, r4
/* 801A79C4  80 05 05 88 */	lwz r0, 0x588(r5)
/* 801A79C8  28 00 00 00 */	cmplwi r0, 0
/* 801A79CC  40 82 00 24 */	bne lbl_801A79F0
/* 801A79D0  3C A0 80 43 */	lis r5, g_env_light@ha
/* 801A79D4  38 05 CA 54 */	addi r0, r5, g_env_light@l
/* 801A79D8  7C 80 22 14 */	add r4, r0, r4
/* 801A79DC  90 64 05 88 */	stw r3, 0x588(r4)
/* 801A79E0  38 07 00 01 */	addi r0, r7, 1
/* 801A79E4  80 64 05 88 */	lwz r3, 0x588(r4)
/* 801A79E8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801A79EC  4E 80 00 20 */	blr 
lbl_801A79F0:
/* 801A79F0  38 E7 00 01 */	addi r7, r7, 1
/* 801A79F4  38 84 00 04 */	addi r4, r4, 4
/* 801A79F8  42 00 FF C8 */	bdnz lbl_801A79C0
/* 801A79FC  4E 80 00 20 */	blr 
