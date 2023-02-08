lbl_809F7A30:
/* 809F7A30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F7A34  7C 08 02 A6 */	mflr r0
/* 809F7A38  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F7A3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809F7A40  7C BF 2B 78 */	mr r31, r5
/* 809F7A44  3C 60 80 A0 */	lis r3, __vt__8cM3dGPla@ha /* 0x809F8DCC@ha */
/* 809F7A48  38 03 8D CC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809F8DCC@l */
/* 809F7A4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F7A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F7A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F7A58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809F7A5C  38 84 00 F0 */	addi r4, r4, 0xf0
/* 809F7A60  38 A1 00 08 */	addi r5, r1, 8
/* 809F7A64  4B 67 CC E1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809F7A68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F7A6C  41 82 00 20 */	beq lbl_809F7A8C
/* 809F7A70  38 61 00 08 */	addi r3, r1, 8
/* 809F7A74  7F E4 FB 78 */	mr r4, r31
/* 809F7A78  4B 62 61 61 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809F7A7C  3C 80 80 A0 */	lis r4, __vt__8cM3dGPla@ha /* 0x809F8DCC@ha */
/* 809F7A80  38 04 8D CC */	addi r0, r4, __vt__8cM3dGPla@l /* 0x809F8DCC@l */
/* 809F7A84  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F7A88  48 00 00 14 */	b lbl_809F7A9C
lbl_809F7A8C:
/* 809F7A8C  3C 60 80 A0 */	lis r3, __vt__8cM3dGPla@ha /* 0x809F8DCC@ha */
/* 809F7A90  38 03 8D CC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809F8DCC@l */
/* 809F7A94  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F7A98  38 60 00 00 */	li r3, 0
lbl_809F7A9C:
/* 809F7A9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809F7AA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F7AA4  7C 08 03 A6 */	mtlr r0
/* 809F7AA8  38 21 00 30 */	addi r1, r1, 0x30
/* 809F7AAC  4E 80 00 20 */	blr 
