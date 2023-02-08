lbl_805CFC18:
/* 805CFC18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CFC1C  7C 08 02 A6 */	mflr r0
/* 805CFC20  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CFC24  7C 6A 1B 78 */	mr r10, r3
/* 805CFC28  7C 87 23 78 */	mr r7, r4
/* 805CFC2C  7C A8 2B 78 */	mr r8, r5
/* 805CFC30  7C C9 33 78 */	mr r9, r6
/* 805CFC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805CFC38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805CFC3C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805CFC40  38 80 00 00 */	li r4, 0
/* 805CFC44  90 81 00 08 */	stw r4, 8(r1)
/* 805CFC48  38 00 FF FF */	li r0, -1
/* 805CFC4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CFC50  90 81 00 10 */	stw r4, 0x10(r1)
/* 805CFC54  90 81 00 14 */	stw r4, 0x14(r1)
/* 805CFC58  90 81 00 18 */	stw r4, 0x18(r1)
/* 805CFC5C  38 80 00 00 */	li r4, 0
/* 805CFC60  7D 45 53 78 */	mr r5, r10
/* 805CFC64  7C E6 3B 78 */	mr r6, r7
/* 805CFC68  38 E0 00 00 */	li r7, 0
/* 805CFC6C  39 40 00 FF */	li r10, 0xff
/* 805CFC70  3D 60 80 5E */	lis r11, lit_3934@ha /* 0x805DCA5C@ha */
/* 805CFC74  C0 2B CA 5C */	lfs f1, lit_3934@l(r11)  /* 0x805DCA5C@l */
/* 805CFC78  4B A7 CE 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805CFC7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CFC80  7C 08 03 A6 */	mtlr r0
/* 805CFC84  38 21 00 20 */	addi r1, r1, 0x20
/* 805CFC88  4E 80 00 20 */	blr 
