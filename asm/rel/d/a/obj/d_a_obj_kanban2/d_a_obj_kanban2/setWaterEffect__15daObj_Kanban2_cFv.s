lbl_80582AFC:
/* 80582AFC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80582B00  7C 08 02 A6 */	mflr r0
/* 80582B04  90 01 00 64 */	stw r0, 0x64(r1)
/* 80582B08  39 61 00 60 */	addi r11, r1, 0x60
/* 80582B0C  4B DD F6 B9 */	bl _savegpr_23
/* 80582B10  7C 7E 1B 78 */	mr r30, r3
/* 80582B14  3C 60 80 58 */	lis r3, lit_1109@ha /* 0x80585C78@ha */
/* 80582B18  3B E3 5C 78 */	addi r31, r3, lit_1109@l /* 0x80585C78@l */
/* 80582B1C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80582B20  C0 3E 06 04 */	lfs f1, 0x604(r30)
/* 80582B24  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80582B28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80582B2C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80582B30  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80582B34  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 80582B38  7C 00 07 75 */	extsb. r0, r0
/* 80582B3C  40 82 00 34 */	bne lbl_80582B70
/* 80582B40  3C 60 80 58 */	lis r3, lit_4283@ha /* 0x80585634@ha */
/* 80582B44  C0 03 56 34 */	lfs f0, lit_4283@l(r3)  /* 0x80585634@l */
/* 80582B48  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 80582B4C  38 7F 00 68 */	addi r3, r31, 0x68
/* 80582B50  D0 03 00 04 */	stfs f0, 4(r3)
/* 80582B54  D0 03 00 08 */	stfs f0, 8(r3)
/* 80582B58  3C 80 80 58 */	lis r4, __dt__4cXyzFv@ha /* 0x805818DC@ha */
/* 80582B5C  38 84 18 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x805818DC@l */
/* 80582B60  38 BF 00 58 */	addi r5, r31, 0x58
/* 80582B64  4B FF EB 95 */	bl __register_global_object
/* 80582B68  38 00 00 01 */	li r0, 1
/* 80582B6C  98 1F 00 64 */	stb r0, 0x64(r31)
lbl_80582B70:
/* 80582B70  3A E0 00 00 */	li r23, 0
/* 80582B74  3B A0 00 00 */	li r29, 0
/* 80582B78  3B 80 00 00 */	li r28, 0
/* 80582B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80582B80  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80582B84  3C 60 80 58 */	lis r3, w_eff_id@ha /* 0x80585B58@ha */
/* 80582B88  3B 43 5B 58 */	addi r26, r3, w_eff_id@l /* 0x80585B58@l */
/* 80582B8C  3C 60 80 58 */	lis r3, lit_3970@ha /* 0x80585620@ha */
/* 80582B90  3B 63 56 20 */	addi r27, r3, lit_3970@l /* 0x80585620@l */
lbl_80582B94:
/* 80582B94  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80582B98  38 00 00 FF */	li r0, 0xff
/* 80582B9C  90 01 00 08 */	stw r0, 8(r1)
/* 80582BA0  38 80 00 00 */	li r4, 0
/* 80582BA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80582BA8  38 00 FF FF */	li r0, -1
/* 80582BAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80582BB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80582BB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80582BB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80582BBC  3B 1C 09 E8 */	addi r24, r28, 0x9e8
/* 80582BC0  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80582BC4  38 A0 00 00 */	li r5, 0
/* 80582BC8  7C DA EA 2E */	lhzx r6, r26, r29
/* 80582BCC  38 E1 00 24 */	addi r7, r1, 0x24
/* 80582BD0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80582BD4  39 20 00 00 */	li r9, 0
/* 80582BD8  39 5F 00 68 */	addi r10, r31, 0x68
/* 80582BDC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80582BE0  4B AC A8 ED */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80582BE4  7C 7E C1 2E */	stwx r3, r30, r24
/* 80582BE8  3A F7 00 01 */	addi r23, r23, 1
/* 80582BEC  2C 17 00 04 */	cmpwi r23, 4
/* 80582BF0  3B BD 00 02 */	addi r29, r29, 2
/* 80582BF4  3B 9C 00 04 */	addi r28, r28, 4
/* 80582BF8  41 80 FF 9C */	blt lbl_80582B94
/* 80582BFC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80582C00  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80582C04  90 01 00 20 */	stw r0, 0x20(r1)
/* 80582C08  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80582C0C  38 81 00 20 */	addi r4, r1, 0x20
/* 80582C10  38 A0 00 00 */	li r5, 0
/* 80582C14  38 C0 FF FF */	li r6, -1
/* 80582C18  81 9E 05 CC */	lwz r12, 0x5cc(r30)
/* 80582C1C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80582C20  7D 89 03 A6 */	mtctr r12
/* 80582C24  4E 80 04 21 */	bctrl 
/* 80582C28  39 61 00 60 */	addi r11, r1, 0x60
/* 80582C2C  4B DD F5 E5 */	bl _restgpr_23
/* 80582C30  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80582C34  7C 08 03 A6 */	mtlr r0
/* 80582C38  38 21 00 60 */	addi r1, r1, 0x60
/* 80582C3C  4E 80 00 20 */	blr 
