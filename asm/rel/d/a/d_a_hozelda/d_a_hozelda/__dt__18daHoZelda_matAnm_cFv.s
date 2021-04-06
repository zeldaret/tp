lbl_80848D54:
/* 80848D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80848D58  7C 08 02 A6 */	mflr r0
/* 80848D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80848D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80848D64  93 C1 00 08 */	stw r30, 8(r1)
/* 80848D68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80848D6C  7C 9F 23 78 */	mr r31, r4
/* 80848D70  41 82 00 A8 */	beq lbl_80848E18
/* 80848D74  3C 60 80 85 */	lis r3, __vt__18daHoZelda_matAnm_c@ha /* 0x80848FFC@ha */
/* 80848D78  38 03 8F FC */	addi r0, r3, __vt__18daHoZelda_matAnm_c@l /* 0x80848FFC@l */
/* 80848D7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80848D80  41 82 00 88 */	beq lbl_80848E08
/* 80848D84  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80848D88  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80848D8C  90 1E 00 00 */	stw r0, 0(r30)
/* 80848D90  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80848D94  3C 80 80 84 */	lis r4, __dt__15J3DTevKColorAnmFv@ha /* 0x8084653C@ha */
/* 80848D98  38 84 65 3C */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l /* 0x8084653C@l */
/* 80848D9C  38 A0 00 08 */	li r5, 8
/* 80848DA0  38 C0 00 04 */	li r6, 4
/* 80848DA4  4B B1 8F 45 */	bl __destroy_arr
/* 80848DA8  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80848DAC  3C 80 80 84 */	lis r4, __dt__14J3DTevColorAnmFv@ha /* 0x80846590@ha */
/* 80848DB0  38 84 65 90 */	addi r4, r4, __dt__14J3DTevColorAnmFv@l /* 0x80846590@l */
/* 80848DB4  38 A0 00 08 */	li r5, 8
/* 80848DB8  38 C0 00 04 */	li r6, 4
/* 80848DBC  4B B1 8F 2D */	bl __destroy_arr
/* 80848DC0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80848DC4  3C 80 80 84 */	lis r4, __dt__11J3DTexNoAnmFv@ha /* 0x808465E4@ha */
/* 80848DC8  38 84 65 E4 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l /* 0x808465E4@l */
/* 80848DCC  38 A0 00 0C */	li r5, 0xc
/* 80848DD0  38 C0 00 08 */	li r6, 8
/* 80848DD4  4B B1 8F 15 */	bl __destroy_arr
/* 80848DD8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80848DDC  3C 80 80 84 */	lis r4, __dt__12J3DTexMtxAnmFv@ha /* 0x80846650@ha */
/* 80848DE0  38 84 66 50 */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l /* 0x80846650@l */
/* 80848DE4  38 A0 00 08 */	li r5, 8
/* 80848DE8  38 C0 00 08 */	li r6, 8
/* 80848DEC  4B B1 8E FD */	bl __destroy_arr
/* 80848DF0  38 7E 00 04 */	addi r3, r30, 4
/* 80848DF4  3C 80 80 84 */	lis r4, __dt__14J3DMatColorAnmFv@ha /* 0x808466A4@ha */
/* 80848DF8  38 84 66 A4 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l /* 0x808466A4@l */
/* 80848DFC  38 A0 00 08 */	li r5, 8
/* 80848E00  38 C0 00 02 */	li r6, 2
/* 80848E04  4B B1 8E E5 */	bl __destroy_arr
lbl_80848E08:
/* 80848E08  7F E0 07 35 */	extsh. r0, r31
/* 80848E0C  40 81 00 0C */	ble lbl_80848E18
/* 80848E10  7F C3 F3 78 */	mr r3, r30
/* 80848E14  4B A8 5F 29 */	bl __dl__FPv
lbl_80848E18:
/* 80848E18  7F C3 F3 78 */	mr r3, r30
/* 80848E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80848E20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80848E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848E28  7C 08 03 A6 */	mtlr r0
/* 80848E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80848E30  4E 80 00 20 */	blr 
