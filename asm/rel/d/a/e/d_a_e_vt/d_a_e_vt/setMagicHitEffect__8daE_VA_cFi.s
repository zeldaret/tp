lbl_807C5258:
/* 807C5258  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C525C  7C 08 02 A6 */	mflr r0
/* 807C5260  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C5264  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807C5268  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807C526C  7C 67 1B 78 */	mr r7, r3
/* 807C5270  7C 86 23 78 */	mr r6, r4
/* 807C5274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C5278  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807C527C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C5280  38 80 00 00 */	li r4, 0
/* 807C5284  90 81 00 08 */	stw r4, 8(r1)
/* 807C5288  38 00 FF FF */	li r0, -1
/* 807C528C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C5290  90 81 00 10 */	stw r4, 0x10(r1)
/* 807C5294  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C5298  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C529C  38 80 00 00 */	li r4, 0
/* 807C52A0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008846@ha */
/* 807C52A4  38 A5 88 46 */	addi r5, r5, 0x8846 /* 0x00008846@l */
/* 807C52A8  1C C6 00 0C */	mulli r6, r6, 0xc
/* 807C52AC  3B C6 11 E0 */	addi r30, r6, 0x11e0
/* 807C52B0  7F C7 F2 14 */	add r30, r7, r30
/* 807C52B4  7F C6 F3 78 */	mr r6, r30
/* 807C52B8  38 E0 00 00 */	li r7, 0
/* 807C52BC  39 00 00 00 */	li r8, 0
/* 807C52C0  39 20 00 00 */	li r9, 0
/* 807C52C4  39 40 00 FF */	li r10, 0xff
/* 807C52C8  3D 60 80 7D */	lis r11, lit_3909@ha
/* 807C52CC  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)
/* 807C52D0  4B 88 77 C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C52D4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807C52D8  38 80 00 00 */	li r4, 0
/* 807C52DC  90 81 00 08 */	stw r4, 8(r1)
/* 807C52E0  38 00 FF FF */	li r0, -1
/* 807C52E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807C52E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 807C52EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 807C52F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 807C52F4  38 80 00 00 */	li r4, 0
/* 807C52F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008847@ha */
/* 807C52FC  38 A5 88 47 */	addi r5, r5, 0x8847 /* 0x00008847@l */
/* 807C5300  7F C6 F3 78 */	mr r6, r30
/* 807C5304  38 E0 00 00 */	li r7, 0
/* 807C5308  39 00 00 00 */	li r8, 0
/* 807C530C  39 20 00 00 */	li r9, 0
/* 807C5310  39 40 00 FF */	li r10, 0xff
/* 807C5314  3D 60 80 7D */	lis r11, lit_3909@ha
/* 807C5318  C0 2B EC B0 */	lfs f1, lit_3909@l(r11)
/* 807C531C  4B 88 77 74 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807C5320  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807C5324  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807C5328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C532C  7C 08 03 A6 */	mtlr r0
/* 807C5330  38 21 00 30 */	addi r1, r1, 0x30
/* 807C5334  4E 80 00 20 */	blr 
