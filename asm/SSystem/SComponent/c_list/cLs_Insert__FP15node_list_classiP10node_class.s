lbl_80265F70:
/* 80265F70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80265F74  7C 08 02 A6 */	mflr r0
/* 80265F78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80265F7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80265F80  48 0F C2 5D */	bl _savegpr_29
/* 80265F84  7C 7D 1B 78 */	mr r29, r3
/* 80265F88  7C BE 2B 78 */	mr r30, r5
/* 80265F8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80265F90  48 00 01 DD */	bl cNd_Order__FP10node_classi
/* 80265F94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80265F98  40 82 00 14 */	bne lbl_80265FAC
/* 80265F9C  7F A3 EB 78 */	mr r3, r29
/* 80265FA0  7F C4 F3 78 */	mr r4, r30
/* 80265FA4  4B FF FF 59 */	bl cLs_Addition__FP15node_list_classP10node_class
/* 80265FA8  48 00 00 38 */	b lbl_80265FE0
lbl_80265FAC:
/* 80265FAC  7F C3 F3 78 */	mr r3, r30
/* 80265FB0  7F A4 EB 78 */	mr r4, r29
/* 80265FB4  48 00 02 FD */	bl cNd_SetObject__FP10node_classPv
/* 80265FB8  7F E3 FB 78 */	mr r3, r31
/* 80265FBC  7F C4 F3 78 */	mr r4, r30
/* 80265FC0  48 00 02 85 */	bl cNd_Insert__FP10node_classP10node_class
/* 80265FC4  7F C3 F3 78 */	mr r3, r30
/* 80265FC8  48 00 01 45 */	bl cNd_First__FP10node_class
/* 80265FCC  90 7D 00 00 */	stw r3, 0(r29)
/* 80265FD0  80 7D 00 00 */	lwz r3, 0(r29)
/* 80265FD4  48 00 01 09 */	bl cNd_LengthOf__FP10node_class
/* 80265FD8  90 7D 00 08 */	stw r3, 8(r29)
/* 80265FDC  80 7D 00 08 */	lwz r3, 8(r29)
lbl_80265FE0:
/* 80265FE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80265FE4  48 0F C2 45 */	bl _restgpr_29
/* 80265FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80265FEC  7C 08 03 A6 */	mtlr r0
/* 80265FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80265FF4  4E 80 00 20 */	blr 
