lbl_806B9C20:
/* 806B9C20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B9C24  7C 08 02 A6 */	mflr r0
/* 806B9C28  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B9C2C  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9C30  4B CA 85 A9 */	bl _savegpr_28
/* 806B9C34  7C 7C 1B 78 */	mr r28, r3
/* 806B9C38  3B A0 00 00 */	li r29, 0
/* 806B9C3C  3B E0 00 00 */	li r31, 0
lbl_806B9C40:
/* 806B9C40  3B DF 06 18 */	addi r30, r31, 0x618
/* 806B9C44  7F DC F2 14 */	add r30, r28, r30
/* 806B9C48  7F C3 F3 78 */	mr r3, r30
/* 806B9C4C  4B 9C A8 15 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806B9C50  28 03 00 00 */	cmplwi r3, 0
/* 806B9C54  41 82 00 84 */	beq lbl_806B9CD8
/* 806B9C58  7F C3 F3 78 */	mr r3, r30
/* 806B9C5C  4B 9C A8 9D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806B9C60  38 00 00 1E */	li r0, 0x1e
/* 806B9C64  90 1C 0F 5C */	stw r0, 0xf5c(r28)
/* 806B9C68  7F C3 F3 78 */	mr r3, r30
/* 806B9C6C  4B 9C A8 8D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806B9C70  90 7C 0F 44 */	stw r3, 0xf44(r28)
/* 806B9C74  7F 83 E3 78 */	mr r3, r28
/* 806B9C78  7F A4 EB 78 */	mr r4, r29
/* 806B9C7C  48 00 0F 3D */	bl At_Check__8daE_FK_cFi
/* 806B9C80  38 00 00 0F */	li r0, 0xf
/* 806B9C84  B0 1C 05 B6 */	sth r0, 0x5b6(r28)
/* 806B9C88  7F C3 F3 78 */	mr r3, r30
/* 806B9C8C  81 9E 00 3C */	lwz r12, 0x3c(r30)
/* 806B9C90  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806B9C94  7D 89 03 A6 */	mtctr r12
/* 806B9C98  4E 80 04 21 */	bctrl 
/* 806B9C9C  38 00 00 03 */	li r0, 3
/* 806B9CA0  98 1C 06 15 */	stb r0, 0x615(r28)
/* 806B9CA4  38 00 00 00 */	li r0, 0
/* 806B9CA8  98 1C 06 16 */	stb r0, 0x616(r28)
/* 806B9CAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070528@ha */
/* 806B9CB0  38 03 05 28 */	addi r0, r3, 0x0528 /* 0x00070528@l */
/* 806B9CB4  90 01 00 08 */	stw r0, 8(r1)
/* 806B9CB8  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 806B9CBC  38 81 00 08 */	addi r4, r1, 8
/* 806B9CC0  38 A0 00 00 */	li r5, 0
/* 806B9CC4  38 C0 FF FF */	li r6, -1
/* 806B9CC8  81 9C 0C 4C */	lwz r12, 0xc4c(r28)
/* 806B9CCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B9CD0  7D 89 03 A6 */	mtctr r12
/* 806B9CD4  4E 80 04 21 */	bctrl 
lbl_806B9CD8:
/* 806B9CD8  3B BD 00 01 */	addi r29, r29, 1
/* 806B9CDC  2C 1D 00 02 */	cmpwi r29, 2
/* 806B9CE0  3B FF 01 38 */	addi r31, r31, 0x138
/* 806B9CE4  41 80 FF 5C */	blt lbl_806B9C40
/* 806B9CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9CEC  4B CA 85 39 */	bl _restgpr_28
/* 806B9CF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B9CF4  7C 08 03 A6 */	mtlr r0
/* 806B9CF8  38 21 00 20 */	addi r1, r1, 0x20
/* 806B9CFC  4E 80 00 20 */	blr 
