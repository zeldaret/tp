lbl_80075BF4:
/* 80075BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075BF8  7C 08 02 A6 */	mflr r0
/* 80075BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075C00  39 61 00 20 */	addi r11, r1, 0x20
/* 80075C04  48 2E C5 D1 */	bl _savegpr_27
/* 80075C08  7C 7B 1B 78 */	mr r27, r3
/* 80075C0C  7C BC 2B 78 */	mr r28, r5
/* 80075C10  7C DD 33 78 */	mr r29, r6
/* 80075C14  A0 04 00 02 */	lhz r0, 2(r4)
/* 80075C18  1F E0 00 14 */	mulli r31, r0, 0x14
/* 80075C1C  7F DB F8 2E */	lwzx r30, r27, r31
/* 80075C20  7F C3 F3 78 */	mr r3, r30
/* 80075C24  48 1F 25 B1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80075C28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80075C2C  41 82 00 28 */	beq lbl_80075C54
/* 80075C30  7F C3 F3 78 */	mr r3, r30
/* 80075C34  7C 9B FA 14 */	add r4, r27, r31
/* 80075C38  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80075C3C  7F 85 E3 78 */	mr r5, r28
/* 80075C40  7F A6 EB 78 */	mr r6, r29
/* 80075C44  81 9E 00 04 */	lwz r12, 4(r30)
/* 80075C48  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80075C4C  7D 89 03 A6 */	mtctr r12
/* 80075C50  4E 80 04 21 */	bctrl 
lbl_80075C54:
/* 80075C54  39 61 00 20 */	addi r11, r1, 0x20
/* 80075C58  48 2E C5 C9 */	bl _restgpr_27
/* 80075C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075C60  7C 08 03 A6 */	mtlr r0
/* 80075C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80075C68  4E 80 00 20 */	blr 
