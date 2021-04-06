lbl_801AC870:
/* 801AC870  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AC874  7C 08 02 A6 */	mflr r0
/* 801AC878  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AC87C  39 61 00 30 */	addi r11, r1, 0x30
/* 801AC880  48 1B 59 55 */	bl _savegpr_27
/* 801AC884  7C 7B 1B 78 */	mr r27, r3
/* 801AC888  7C 9C 23 78 */	mr r28, r4
/* 801AC88C  4B EA A1 E5 */	bl dKyd_darkworld_tbl_getp__Fv
/* 801AC890  7C 7E 1B 78 */	mr r30, r3
/* 801AC894  3B A0 00 00 */	li r29, 0
/* 801AC898  3B E0 00 00 */	li r31, 0
lbl_801AC89C:
/* 801AC89C  7F 63 DB 78 */	mr r3, r27
/* 801AC8A0  7C 9E F8 2E */	lwzx r4, r30, r31
/* 801AC8A4  48 1B C0 F1 */	bl strcmp
/* 801AC8A8  2C 03 00 00 */	cmpwi r3, 0
/* 801AC8AC  40 82 00 44 */	bne lbl_801AC8F0
/* 801AC8B0  7F 63 DB 78 */	mr r3, r27
/* 801AC8B4  7F 84 E3 78 */	mr r4, r28
/* 801AC8B8  38 A1 00 08 */	addi r5, r1, 8
/* 801AC8BC  7F A6 EB 78 */	mr r6, r29
/* 801AC8C0  4B FF FC FD */	bl dKy_F_SP121Check__FPCciPUci
/* 801AC8C4  2C 03 00 00 */	cmpwi r3, 0
/* 801AC8C8  41 80 00 28 */	blt lbl_801AC8F0
/* 801AC8CC  40 82 00 10 */	bne lbl_801AC8DC
/* 801AC8D0  7C 7E FA 14 */	add r3, r30, r31
/* 801AC8D4  88 03 00 04 */	lbz r0, 4(r3)
/* 801AC8D8  98 01 00 08 */	stb r0, 8(r1)
lbl_801AC8DC:
/* 801AC8DC  88 01 00 08 */	lbz r0, 8(r1)
/* 801AC8E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801AC8E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801AC8E8  98 03 4E 0C */	stb r0, 0x4e0c(r3)
/* 801AC8EC  48 00 00 14 */	b lbl_801AC900
lbl_801AC8F0:
/* 801AC8F0  3B BD 00 01 */	addi r29, r29, 1
/* 801AC8F4  2C 1D 00 22 */	cmpwi r29, 0x22
/* 801AC8F8  3B FF 00 08 */	addi r31, r31, 8
/* 801AC8FC  41 80 FF A0 */	blt lbl_801AC89C
lbl_801AC900:
/* 801AC900  39 61 00 30 */	addi r11, r1, 0x30
/* 801AC904  48 1B 59 1D */	bl _restgpr_27
/* 801AC908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AC90C  7C 08 03 A6 */	mtlr r0
/* 801AC910  38 21 00 30 */	addi r1, r1, 0x30
/* 801AC914  4E 80 00 20 */	blr 
