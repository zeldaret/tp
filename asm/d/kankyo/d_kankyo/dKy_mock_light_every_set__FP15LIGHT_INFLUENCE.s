lbl_801A7738:
/* 801A7738  38 E0 00 32 */	li r7, 0x32
/* 801A773C  38 80 00 C8 */	li r4, 0xc8
/* 801A7740  3C A0 80 43 */	lis r5, g_env_light@ha
/* 801A7744  38 C5 CA 54 */	addi r6, r5, g_env_light@l
/* 801A7748  38 00 00 32 */	li r0, 0x32
/* 801A774C  7C 09 03 A6 */	mtctr r0
lbl_801A7750:
/* 801A7750  7C A6 22 14 */	add r5, r6, r4
/* 801A7754  80 05 03 F8 */	lwz r0, 0x3f8(r5)
/* 801A7758  28 00 00 00 */	cmplwi r0, 0
/* 801A775C  40 82 00 24 */	bne lbl_801A7780
/* 801A7760  3C A0 80 43 */	lis r5, g_env_light@ha
/* 801A7764  38 05 CA 54 */	addi r0, r5, g_env_light@l
/* 801A7768  7C 80 22 14 */	add r4, r0, r4
/* 801A776C  90 64 03 F8 */	stw r3, 0x3f8(r4)
/* 801A7770  38 07 00 01 */	addi r0, r7, 1
/* 801A7774  80 64 03 F8 */	lwz r3, 0x3f8(r4)
/* 801A7778  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801A777C  4E 80 00 20 */	blr 
lbl_801A7780:
/* 801A7780  38 E7 00 01 */	addi r7, r7, 1
/* 801A7784  38 84 00 04 */	addi r4, r4, 4
/* 801A7788  42 00 FF C8 */	bdnz lbl_801A7750
/* 801A778C  4E 80 00 20 */	blr 
