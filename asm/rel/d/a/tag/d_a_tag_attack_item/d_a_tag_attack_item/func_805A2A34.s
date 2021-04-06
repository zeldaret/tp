lbl_805A2A34:
/* 805A2A34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2A38  7C 08 02 A6 */	mflr r0
/* 805A2A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2A40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A2A44  93 C1 00 08 */	stw r30, 8(r1)
/* 805A2A48  7C 7F 1B 78 */	mr r31, r3
/* 805A2A4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A2A50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A2A54  40 82 00 D4 */	bne lbl_805A2B28
/* 805A2A58  7F E0 FB 79 */	or. r0, r31, r31
/* 805A2A5C  41 82 00 C0 */	beq lbl_805A2B1C
/* 805A2A60  7C 1E 03 78 */	mr r30, r0
/* 805A2A64  4B A7 61 01 */	bl __ct__10fopAc_ac_cFv
/* 805A2A68  3C 60 80 5A */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x805A33E4@ha */
/* 805A2A6C  38 03 33 E4 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x805A33E4@l */
/* 805A2A70  90 1E 05 68 */	stw r0, 0x568(r30)
/* 805A2A74  93 DE 05 6C */	stw r30, 0x56c(r30)
/* 805A2A78  38 00 00 00 */	li r0, 0
/* 805A2A7C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 805A2A80  3C 60 80 5A */	lis r3, __vt__14daTagAtkItem_c@ha /* 0x805A3388@ha */
/* 805A2A84  38 63 33 88 */	addi r3, r3, __vt__14daTagAtkItem_c@l /* 0x805A3388@l */
/* 805A2A88  90 7E 05 78 */	stw r3, 0x578(r30)
/* 805A2A8C  38 03 00 08 */	addi r0, r3, 8
/* 805A2A90  90 1E 05 68 */	stw r0, 0x568(r30)
/* 805A2A94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 805A2A98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 805A2A9C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 805A2AA0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 805A2AA4  4B AE 0C BD */	bl __ct__10dCcD_GSttsFv
/* 805A2AA8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805A2AAC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805A2AB0  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 805A2AB4  38 03 00 20 */	addi r0, r3, 0x20
/* 805A2AB8  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 805A2ABC  3B DE 05 C0 */	addi r30, r30, 0x5c0
/* 805A2AC0  7F C3 F3 78 */	mr r3, r30
/* 805A2AC4  4B AE 0F 65 */	bl __ct__12dCcD_GObjInfFv
/* 805A2AC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805A2ACC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805A2AD0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805A2AD4  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha /* 0x805A33D8@ha */
/* 805A2AD8  38 03 33 D8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805A33D8@l */
/* 805A2ADC  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 805A2AE0  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha /* 0x805A33CC@ha */
/* 805A2AE4  38 03 33 CC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x805A33CC@l */
/* 805A2AE8  90 1E 01 38 */	stw r0, 0x138(r30)
/* 805A2AEC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 805A2AF0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 805A2AF4  90 7E 01 20 */	stw r3, 0x120(r30)
/* 805A2AF8  38 03 00 58 */	addi r0, r3, 0x58
/* 805A2AFC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 805A2B00  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 805A2B04  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 805A2B08  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805A2B0C  38 03 00 2C */	addi r0, r3, 0x2c
/* 805A2B10  90 1E 01 20 */	stw r0, 0x120(r30)
/* 805A2B14  38 03 00 84 */	addi r0, r3, 0x84
/* 805A2B18  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_805A2B1C:
/* 805A2B1C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A2B20  60 00 00 08 */	ori r0, r0, 8
/* 805A2B24  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A2B28:
/* 805A2B28  7F E3 FB 78 */	mr r3, r31
/* 805A2B2C  4B FF FE 65 */	bl Create__14daTagAtkItem_cFv
/* 805A2B30  2C 03 00 00 */	cmpwi r3, 0
/* 805A2B34  40 82 00 0C */	bne lbl_805A2B40
/* 805A2B38  38 60 00 05 */	li r3, 5
/* 805A2B3C  48 00 00 08 */	b lbl_805A2B44
lbl_805A2B40:
/* 805A2B40  38 60 00 04 */	li r3, 4
lbl_805A2B44:
/* 805A2B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A2B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2B50  7C 08 03 A6 */	mtlr r0
/* 805A2B54  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2B58  4E 80 00 20 */	blr 
