lbl_80808884:
/* 80808884  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80808888  7C 08 02 A6 */	mflr r0
/* 8080888C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80808890  39 61 00 50 */	addi r11, r1, 0x50
/* 80808894  4B B5 99 49 */	bl _savegpr_29
/* 80808898  7C 7E 1B 78 */	mr r30, r3
/* 8080889C  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 808088A0  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 808088A4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 808088A8  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 808088AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 808088B0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 808088B4  EC 01 00 24 */	fdivs f0, f1, f0
/* 808088B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808088BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808088C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 808088C4  88 1E 06 CA */	lbz r0, 0x6ca(r30)
/* 808088C8  28 00 00 01 */	cmplwi r0, 1
/* 808088CC  40 82 00 20 */	bne lbl_808088EC
/* 808088D0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 808088D4  80 63 00 04 */	lwz r3, 4(r3)
/* 808088D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808088DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808088E0  38 03 01 80 */	addi r0, r3, 0x180
/* 808088E4  7C 03 03 78 */	mr r3, r0
/* 808088E8  48 00 00 14 */	b lbl_808088FC
lbl_808088EC:
/* 808088EC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 808088F0  80 63 00 04 */	lwz r3, 4(r3)
/* 808088F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808088F8  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_808088FC:
/* 808088FC  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80808900  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80808904  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80808908  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8080890C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80808910  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80808914  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80808918  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080891C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80808920  38 00 00 FF */	li r0, 0xff
/* 80808924  90 01 00 08 */	stw r0, 8(r1)
/* 80808928  38 80 00 00 */	li r4, 0
/* 8080892C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808930  38 00 FF FF */	li r0, -1
/* 80808934  90 01 00 10 */	stw r0, 0x10(r1)
/* 80808938  90 81 00 14 */	stw r4, 0x14(r1)
/* 8080893C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808940  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808944  80 9E 0A D8 */	lwz r4, 0xad8(r30)
/* 80808948  38 A0 00 00 */	li r5, 0
/* 8080894C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008393@ha */
/* 80808950  38 C6 83 93 */	addi r6, r6, 0x8393 /* 0x00008393@l */
/* 80808954  38 E1 00 20 */	addi r7, r1, 0x20
/* 80808958  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8080895C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80808960  39 41 00 2C */	addi r10, r1, 0x2c
/* 80808964  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80808968  4B 84 4B 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8080896C  90 7E 0A D8 */	stw r3, 0xad8(r30)
/* 80808970  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80808974  38 00 00 FF */	li r0, 0xff
/* 80808978  90 01 00 08 */	stw r0, 8(r1)
/* 8080897C  38 80 00 00 */	li r4, 0
/* 80808980  90 81 00 0C */	stw r4, 0xc(r1)
/* 80808984  38 00 FF FF */	li r0, -1
/* 80808988  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080898C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80808990  90 81 00 18 */	stw r4, 0x18(r1)
/* 80808994  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80808998  80 9E 0A DC */	lwz r4, 0xadc(r30)
/* 8080899C  38 A0 00 00 */	li r5, 0
/* 808089A0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008394@ha */
/* 808089A4  38 C6 83 94 */	addi r6, r6, 0x8394 /* 0x00008394@l */
/* 808089A8  38 E1 00 20 */	addi r7, r1, 0x20
/* 808089AC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 808089B0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 808089B4  39 41 00 2C */	addi r10, r1, 0x2c
/* 808089B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808089BC  4B 84 4B 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808089C0  90 7E 0A DC */	stw r3, 0xadc(r30)
/* 808089C4  39 61 00 50 */	addi r11, r1, 0x50
/* 808089C8  4B B5 98 61 */	bl _restgpr_29
/* 808089CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 808089D0  7C 08 03 A6 */	mtlr r0
/* 808089D4  38 21 00 50 */	addi r1, r1, 0x50
/* 808089D8  4E 80 00 20 */	blr 
