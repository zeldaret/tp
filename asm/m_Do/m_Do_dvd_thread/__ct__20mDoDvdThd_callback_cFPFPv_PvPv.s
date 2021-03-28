lbl_80015C18:
/* 80015C18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015C1C  7C 08 02 A6 */	mflr r0
/* 80015C20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015C24  39 61 00 20 */	addi r11, r1, 0x20
/* 80015C28  48 34 C5 B5 */	bl _savegpr_29
/* 80015C2C  7C 7D 1B 78 */	mr r29, r3
/* 80015C30  7C 9E 23 78 */	mr r30, r4
/* 80015C34  7C BF 2B 78 */	mr r31, r5
/* 80015C38  4B FF FF 3D */	bl __ct__19mDoDvdThd_command_cFv
/* 80015C3C  3C 60 80 3A */	lis r3, __vt__20mDoDvdThd_callback_c@ha
/* 80015C40  38 03 34 D8 */	addi r0, r3, __vt__20mDoDvdThd_callback_c@l
/* 80015C44  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80015C48  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80015C4C  93 FD 00 18 */	stw r31, 0x18(r29)
/* 80015C50  38 00 00 00 */	li r0, 0
/* 80015C54  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80015C58  7F A3 EB 78 */	mr r3, r29
/* 80015C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80015C60  48 34 C5 C9 */	bl _restgpr_29
/* 80015C64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015C68  7C 08 03 A6 */	mtlr r0
/* 80015C6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80015C70  4E 80 00 20 */	blr 
