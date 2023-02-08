lbl_801A7790:
/* 801A7790  38 80 00 00 */	li r4, 0
/* 801A7794  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A7798  38 C5 CA 54 */	addi r6, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A779C  38 00 00 64 */	li r0, 0x64
/* 801A77A0  7C 09 03 A6 */	mtctr r0
lbl_801A77A4:
/* 801A77A4  7C A6 22 14 */	add r5, r6, r4
/* 801A77A8  80 05 03 F8 */	lwz r0, 0x3f8(r5)
/* 801A77AC  7C 00 18 40 */	cmplw r0, r3
/* 801A77B0  4D 82 00 20 */	beqlr 
/* 801A77B4  38 84 00 04 */	addi r4, r4, 4
/* 801A77B8  42 00 FF EC */	bdnz lbl_801A77A4
/* 801A77BC  38 E0 00 00 */	li r7, 0
/* 801A77C0  38 80 00 00 */	li r4, 0
/* 801A77C4  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A77C8  38 C5 CA 54 */	addi r6, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A77CC  38 00 00 32 */	li r0, 0x32
/* 801A77D0  7C 09 03 A6 */	mtctr r0
lbl_801A77D4:
/* 801A77D4  7C A6 22 14 */	add r5, r6, r4
/* 801A77D8  80 05 03 F8 */	lwz r0, 0x3f8(r5)
/* 801A77DC  28 00 00 00 */	cmplwi r0, 0
/* 801A77E0  40 82 00 24 */	bne lbl_801A7804
/* 801A77E4  3C A0 80 43 */	lis r5, g_env_light@ha /* 0x8042CA54@ha */
/* 801A77E8  38 05 CA 54 */	addi r0, r5, g_env_light@l /* 0x8042CA54@l */
/* 801A77EC  7C 80 22 14 */	add r4, r0, r4
/* 801A77F0  90 64 03 F8 */	stw r3, 0x3f8(r4)
/* 801A77F4  38 07 00 01 */	addi r0, r7, 1
/* 801A77F8  80 64 03 F8 */	lwz r3, 0x3f8(r4)
/* 801A77FC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801A7800  4E 80 00 20 */	blr 
lbl_801A7804:
/* 801A7804  38 E7 00 01 */	addi r7, r7, 1
/* 801A7808  38 84 00 04 */	addi r4, r4, 4
/* 801A780C  42 00 FF C8 */	bdnz lbl_801A77D4
/* 801A7810  4E 80 00 20 */	blr 
