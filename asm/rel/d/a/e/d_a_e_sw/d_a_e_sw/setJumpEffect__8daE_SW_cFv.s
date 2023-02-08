lbl_807A77CC:
/* 807A77CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A77D0  7C 08 02 A6 */	mflr r0
/* 807A77D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A77D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807A77DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807A77E0  7C 7E 1B 78 */	mr r30, r3
/* 807A77E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A77E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A77EC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807A77F0  38 00 00 FF */	li r0, 0xff
/* 807A77F4  90 01 00 08 */	stw r0, 8(r1)
/* 807A77F8  38 80 00 00 */	li r4, 0
/* 807A77FC  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A7800  38 00 FF FF */	li r0, -1
/* 807A7804  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A7808  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A780C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7810  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A7814  80 9E 0A E8 */	lwz r4, 0xae8(r30)
/* 807A7818  38 A0 00 00 */	li r5, 0
/* 807A781C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008373@ha */
/* 807A7820  38 C6 83 73 */	addi r6, r6, 0x8373 /* 0x00008373@l */
/* 807A7824  38 FE 06 74 */	addi r7, r30, 0x674
/* 807A7828  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807A782C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807A7830  39 40 00 00 */	li r10, 0
/* 807A7834  3D 60 80 7B */	lis r11, lit_3911@ha /* 0x807AFD34@ha */
/* 807A7838  C0 2B FD 34 */	lfs f1, lit_3911@l(r11)  /* 0x807AFD34@l */
/* 807A783C  4B 8A 5C 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A7840  90 7E 0A E8 */	stw r3, 0xae8(r30)
/* 807A7844  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807A7848  38 00 00 FF */	li r0, 0xff
/* 807A784C  90 01 00 08 */	stw r0, 8(r1)
/* 807A7850  38 80 00 00 */	li r4, 0
/* 807A7854  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A7858  38 00 FF FF */	li r0, -1
/* 807A785C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A7860  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A7864  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7868  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A786C  80 9E 0A EC */	lwz r4, 0xaec(r30)
/* 807A7870  38 A0 00 00 */	li r5, 0
/* 807A7874  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008374@ha */
/* 807A7878  38 C6 83 74 */	addi r6, r6, 0x8374 /* 0x00008374@l */
/* 807A787C  38 FE 06 74 */	addi r7, r30, 0x674
/* 807A7880  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807A7884  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807A7888  39 40 00 00 */	li r10, 0
/* 807A788C  3D 60 80 7B */	lis r11, lit_3911@ha /* 0x807AFD34@ha */
/* 807A7890  C0 2B FD 34 */	lfs f1, lit_3911@l(r11)  /* 0x807AFD34@l */
/* 807A7894  4B 8A 5C 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A7898  90 7E 0A EC */	stw r3, 0xaec(r30)
/* 807A789C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807A78A0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807A78A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A78A8  7C 08 03 A6 */	mtlr r0
/* 807A78AC  38 21 00 30 */	addi r1, r1, 0x30
/* 807A78B0  4E 80 00 20 */	blr 
