lbl_80216B28:
/* 80216B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80216B2C  7C 08 02 A6 */	mflr r0
/* 80216B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80216B34  39 61 00 20 */	addi r11, r1, 0x20
/* 80216B38  48 14 B6 9D */	bl _savegpr_27
/* 80216B3C  7C 7B 1B 78 */	mr r27, r3
/* 80216B40  7C 9C 23 78 */	mr r28, r4
/* 80216B44  3B E0 00 00 */	li r31, 0
/* 80216B48  3B C0 00 00 */	li r30, 0
/* 80216B4C  38 80 00 00 */	li r4, 0
/* 80216B50  3B A0 00 00 */	li r29, 0
/* 80216B54  C0 03 07 E0 */	lfs f0, 0x7e0(r3)
/* 80216B58  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216B5C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216B60  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80216B64  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80216B68  40 82 00 0C */	bne lbl_80216B74
/* 80216B6C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80216B70  41 82 00 0C */	beq lbl_80216B7C
lbl_80216B74:
/* 80216B74  D0 3B 07 E0 */	stfs f1, 0x7e0(r27)
/* 80216B78  3B E0 00 01 */	li r31, 1
lbl_80216B7C:
/* 80216B7C  C0 1B 07 E4 */	lfs f0, 0x7e4(r27)
/* 80216B80  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216B84  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216B88  C0 23 03 48 */	lfs f1, 0x348(r3)
/* 80216B8C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80216B90  40 82 00 0C */	bne lbl_80216B9C
/* 80216B94  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80216B98  41 82 00 0C */	beq lbl_80216BA4
lbl_80216B9C:
/* 80216B9C  D0 3B 07 E4 */	stfs f1, 0x7e4(r27)
/* 80216BA0  3B C0 00 01 */	li r30, 1
lbl_80216BA4:
/* 80216BA4  C0 1B 07 E8 */	lfs f0, 0x7e8(r27)
/* 80216BA8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216BAC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216BB0  C0 23 03 68 */	lfs f1, 0x368(r3)
/* 80216BB4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80216BB8  40 82 00 0C */	bne lbl_80216BC4
/* 80216BBC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80216BC0  41 82 00 0C */	beq lbl_80216BCC
lbl_80216BC4:
/* 80216BC4  D0 3B 07 E8 */	stfs f1, 0x7e8(r27)
/* 80216BC8  38 80 00 01 */	li r4, 1
lbl_80216BCC:
/* 80216BCC  C0 1B 07 EC */	lfs f0, 0x7ec(r27)
/* 80216BD0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216BD4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216BD8  C0 23 03 98 */	lfs f1, 0x398(r3)
/* 80216BDC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80216BE0  40 82 00 0C */	bne lbl_80216BEC
/* 80216BE4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80216BE8  41 82 00 0C */	beq lbl_80216BF4
lbl_80216BEC:
/* 80216BEC  D0 3B 07 EC */	stfs f1, 0x7ec(r27)
/* 80216BF0  3B A0 00 01 */	li r29, 1
lbl_80216BF4:
/* 80216BF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80216BF8  40 82 00 1C */	bne lbl_80216C14
/* 80216BFC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80216C00  40 82 00 14 */	bne lbl_80216C14
/* 80216C04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80216C08  40 82 00 0C */	bne lbl_80216C14
/* 80216C0C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80216C10  41 82 00 20 */	beq lbl_80216C30
lbl_80216C14:
/* 80216C14  80 7B 02 E0 */	lwz r3, 0x2e0(r27)
/* 80216C18  C0 5B 07 E0 */	lfs f2, 0x7e0(r27)
/* 80216C1C  C0 3B 07 E8 */	lfs f1, 0x7e8(r27)
/* 80216C20  C0 1B 07 E4 */	lfs f0, 0x7e4(r27)
/* 80216C24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80216C28  EC 22 00 32 */	fmuls f1, f2, f0
/* 80216C2C  48 03 EB A5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80216C30:
/* 80216C30  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80216C34  40 82 00 1C */	bne lbl_80216C50
/* 80216C38  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80216C3C  40 82 00 14 */	bne lbl_80216C50
/* 80216C40  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80216C44  40 82 00 0C */	bne lbl_80216C50
/* 80216C48  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80216C4C  41 82 00 44 */	beq lbl_80216C90
lbl_80216C50:
/* 80216C50  3B A0 00 00 */	li r29, 0
/* 80216C54  3B 80 00 00 */	li r28, 0
lbl_80216C58:
/* 80216C58  38 1C 02 E4 */	addi r0, r28, 0x2e4
/* 80216C5C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80216C60  C0 7B 07 E0 */	lfs f3, 0x7e0(r27)
/* 80216C64  C0 5B 07 E4 */	lfs f2, 0x7e4(r27)
/* 80216C68  C0 3B 07 EC */	lfs f1, 0x7ec(r27)
/* 80216C6C  C0 1B 07 E8 */	lfs f0, 0x7e8(r27)
/* 80216C70  EC 01 00 32 */	fmuls f0, f1, f0
/* 80216C74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80216C78  EC 23 00 32 */	fmuls f1, f3, f0
/* 80216C7C  48 03 EB 55 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80216C80  3B BD 00 01 */	addi r29, r29, 1
/* 80216C84  2C 1D 00 05 */	cmpwi r29, 5
/* 80216C88  3B 9C 00 04 */	addi r28, r28, 4
/* 80216C8C  41 80 FF CC */	blt lbl_80216C58
lbl_80216C90:
/* 80216C90  39 61 00 20 */	addi r11, r1, 0x20
/* 80216C94  48 14 B5 8D */	bl _restgpr_27
/* 80216C98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80216C9C  7C 08 03 A6 */	mtlr r0
/* 80216CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80216CA4  4E 80 00 20 */	blr 
