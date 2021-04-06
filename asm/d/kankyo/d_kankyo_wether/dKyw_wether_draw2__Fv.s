lbl_8005A304:
/* 8005A304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A308  7C 08 02 A6 */	mflr r0
/* 8005A30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A310  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A314  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A318  88 03 0E C4 */	lbz r0, 0xec4(r3)
/* 8005A31C  28 00 00 00 */	cmplwi r0, 0
/* 8005A320  41 82 00 10 */	beq lbl_8005A330
/* 8005A324  28 00 00 63 */	cmplwi r0, 0x63
/* 8005A328  40 80 00 08 */	bge lbl_8005A330
/* 8005A32C  4B FF D0 41 */	bl dKyw_Vrkumo_Draw__Fv
lbl_8005A330:
/* 8005A330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A334  7C 08 03 A6 */	mtlr r0
/* 8005A338  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A33C  4E 80 00 20 */	blr 
