lbl_807A76E4:
/* 807A76E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A76E8  7C 08 02 A6 */	mflr r0
/* 807A76EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A76F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807A76F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807A76F8  7C 7E 1B 78 */	mr r30, r3
/* 807A76FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A7700  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807A7704  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807A7708  38 00 00 FF */	li r0, 0xff
/* 807A770C  90 01 00 08 */	stw r0, 8(r1)
/* 807A7710  38 80 00 00 */	li r4, 0
/* 807A7714  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A7718  38 00 FF FF */	li r0, -1
/* 807A771C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A7720  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A7724  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7728  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A772C  80 9E 0A E8 */	lwz r4, 0xae8(r30)
/* 807A7730  38 A0 00 00 */	li r5, 0
/* 807A7734  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000837F@ha */
/* 807A7738  38 C6 83 7F */	addi r6, r6, 0x837F /* 0x0000837F@l */
/* 807A773C  38 FE 06 74 */	addi r7, r30, 0x674
/* 807A7740  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807A7744  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807A7748  39 40 00 00 */	li r10, 0
/* 807A774C  3D 60 80 7B */	lis r11, lit_3911@ha
/* 807A7750  C0 2B FD 34 */	lfs f1, lit_3911@l(r11)
/* 807A7754  4B 8A 5D 78 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A7758  90 7E 0A E8 */	stw r3, 0xae8(r30)
/* 807A775C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807A7760  38 00 00 FF */	li r0, 0xff
/* 807A7764  90 01 00 08 */	stw r0, 8(r1)
/* 807A7768  38 80 00 00 */	li r4, 0
/* 807A776C  90 81 00 0C */	stw r4, 0xc(r1)
/* 807A7770  38 00 FF FF */	li r0, -1
/* 807A7774  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A7778  90 81 00 14 */	stw r4, 0x14(r1)
/* 807A777C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807A7780  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807A7784  80 9E 0A EC */	lwz r4, 0xaec(r30)
/* 807A7788  38 A0 00 00 */	li r5, 0
/* 807A778C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008380@ha */
/* 807A7790  38 C6 83 80 */	addi r6, r6, 0x8380 /* 0x00008380@l */
/* 807A7794  38 FE 06 74 */	addi r7, r30, 0x674
/* 807A7798  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807A779C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807A77A0  39 40 00 00 */	li r10, 0
/* 807A77A4  3D 60 80 7B */	lis r11, lit_3911@ha
/* 807A77A8  C0 2B FD 34 */	lfs f1, lit_3911@l(r11)
/* 807A77AC  4B 8A 5D 20 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807A77B0  90 7E 0A EC */	stw r3, 0xaec(r30)
/* 807A77B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807A77B8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807A77BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A77C0  7C 08 03 A6 */	mtlr r0
/* 807A77C4  38 21 00 30 */	addi r1, r1, 0x30
/* 807A77C8  4E 80 00 20 */	blr 
