lbl_804E0B60:
/* 804E0B60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E0B64  7C 08 02 A6 */	mflr r0
/* 804E0B68  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E0B6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E0B70  7C 7F 1B 78 */	mr r31, r3
/* 804E0B74  88 63 09 3D */	lbz r3, 0x93d(r3)
/* 804E0B78  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804E0B7C  40 82 00 60 */	bne lbl_804E0BDC
/* 804E0B80  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804E0B84  40 82 00 58 */	bne lbl_804E0BDC
/* 804E0B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E0B8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E0B90  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804E0B94  38 80 00 00 */	li r4, 0
/* 804E0B98  90 81 00 08 */	stw r4, 8(r1)
/* 804E0B9C  38 00 FF FF */	li r0, -1
/* 804E0BA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E0BA4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E0BA8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E0BAC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E0BB0  38 80 00 00 */	li r4, 0
/* 804E0BB4  38 A0 0A 1B */	li r5, 0xa1b
/* 804E0BB8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 804E0BBC  38 E0 00 00 */	li r7, 0
/* 804E0BC0  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 804E0BC4  39 20 00 00 */	li r9, 0
/* 804E0BC8  39 40 00 FF */	li r10, 0xff
/* 804E0BCC  3D 60 80 4E */	lis r11, lit_3812@ha
/* 804E0BD0  C0 2B 19 D8 */	lfs f1, lit_3812@l(r11)
/* 804E0BD4  4B B6 BE BC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E0BD8  90 7F 09 94 */	stw r3, 0x994(r31)
lbl_804E0BDC:
/* 804E0BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E0BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E0BE4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804E0BE8  38 80 00 00 */	li r4, 0
/* 804E0BEC  90 81 00 08 */	stw r4, 8(r1)
/* 804E0BF0  38 00 FF FF */	li r0, -1
/* 804E0BF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E0BF8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804E0BFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E0C00  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E0C04  38 80 00 00 */	li r4, 0
/* 804E0C08  38 A0 0A 1C */	li r5, 0xa1c
/* 804E0C0C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 804E0C10  38 E0 00 00 */	li r7, 0
/* 804E0C14  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 804E0C18  39 20 00 00 */	li r9, 0
/* 804E0C1C  39 40 00 FF */	li r10, 0xff
/* 804E0C20  3D 60 80 4E */	lis r11, lit_3812@ha
/* 804E0C24  C0 2B 19 D8 */	lfs f1, lit_3812@l(r11)
/* 804E0C28  4B B6 BE 68 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804E0C2C  90 7F 09 98 */	stw r3, 0x998(r31)
/* 804E0C30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E0C34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E0C38  7C 08 03 A6 */	mtlr r0
/* 804E0C3C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E0C40  4E 80 00 20 */	blr 
