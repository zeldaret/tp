lbl_802FD874:
/* 802FD874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FD878  7C 08 02 A6 */	mflr r0
/* 802FD87C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD880  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD884  48 06 49 51 */	bl _savegpr_27
/* 802FD888  7C 7B 1B 78 */	mr r27, r3
/* 802FD88C  7C 9C 23 78 */	mr r28, r4
/* 802FD890  7C BD 2B 78 */	mr r29, r5
/* 802FD894  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802FD898  88 A3 01 08 */	lbz r5, 0x108(r3)
/* 802FD89C  7C 00 28 40 */	cmplw r0, r5
/* 802FD8A0  41 81 00 14 */	bgt lbl_802FD8B4
/* 802FD8A4  28 00 00 02 */	cmplwi r0, 2
/* 802FD8A8  40 80 00 0C */	bge lbl_802FD8B4
/* 802FD8AC  28 1C 00 00 */	cmplwi r28, 0
/* 802FD8B0  40 82 00 0C */	bne lbl_802FD8BC
lbl_802FD8B4:
/* 802FD8B4  38 60 00 00 */	li r3, 0
/* 802FD8B8  48 00 00 94 */	b lbl_802FD94C
lbl_802FD8BC:
/* 802FD8BC  7C 00 28 40 */	cmplw r0, r5
/* 802FD8C0  40 80 00 74 */	bge lbl_802FD934
/* 802FD8C4  7F A4 EB 78 */	mr r4, r29
/* 802FD8C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802FD8CC  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 802FD8D0  7D 89 03 A6 */	mtctr r12
/* 802FD8D4  4E 80 04 21 */	bctrl 
/* 802FD8D8  83 E3 00 20 */	lwz r31, 0x20(r3)
/* 802FD8DC  3B C0 00 00 */	li r30, 0
/* 802FD8E0  88 1C 00 08 */	lbz r0, 8(r28)
/* 802FD8E4  28 00 00 00 */	cmplwi r0, 0
/* 802FD8E8  41 82 00 20 */	beq lbl_802FD908
/* 802FD8EC  7F 63 DB 78 */	mr r3, r27
/* 802FD8F0  7F A4 EB 78 */	mr r4, r29
/* 802FD8F4  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FD8F8  81 8C 01 48 */	lwz r12, 0x148(r12)
/* 802FD8FC  7D 89 03 A6 */	mtctr r12
/* 802FD900  4E 80 04 21 */	bctrl 
/* 802FD904  7C 7E 1B 78 */	mr r30, r3
lbl_802FD908:
/* 802FD908  7F 63 DB 78 */	mr r3, r27
/* 802FD90C  7F A4 EB 78 */	mr r4, r29
/* 802FD910  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FD914  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 802FD918  7D 89 03 A6 */	mtctr r12
/* 802FD91C  4E 80 04 21 */	bctrl 
/* 802FD920  7F 84 E3 78 */	mr r4, r28
/* 802FD924  7F C5 F3 78 */	mr r5, r30
/* 802FD928  4B FE 09 81 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FD92C  7F E3 FB 78 */	mr r3, r31
/* 802FD930  48 00 00 1C */	b lbl_802FD94C
lbl_802FD934:
/* 802FD934  C0 22 C8 68 */	lfs f1, lit_1767(r2)
/* 802FD938  81 83 00 00 */	lwz r12, 0(r3)
/* 802FD93C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 802FD940  7D 89 03 A6 */	mtctr r12
/* 802FD944  4E 80 04 21 */	bctrl 
/* 802FD948  38 60 00 00 */	li r3, 0
lbl_802FD94C:
/* 802FD94C  39 61 00 20 */	addi r11, r1, 0x20
/* 802FD950  48 06 48 D1 */	bl _restgpr_27
/* 802FD954  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FD958  7C 08 03 A6 */	mtlr r0
/* 802FD95C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FD960  4E 80 00 20 */	blr 
