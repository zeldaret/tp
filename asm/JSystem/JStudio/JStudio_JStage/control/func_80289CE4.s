lbl_80289CE4:
/* 80289CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289CE8  7C 08 02 A6 */	mflr r0
/* 80289CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80289CF4  48 0D 84 E5 */	bl _savegpr_28
/* 80289CF8  7C 7C 1B 78 */	mr r28, r3
/* 80289CFC  7C BD 2B 78 */	mr r29, r5
/* 80289D00  7C 9E 23 78 */	mr r30, r4
/* 80289D04  38 60 01 50 */	li r3, 0x150
/* 80289D08  48 04 4F 45 */	bl __nw__FUl
/* 80289D0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80289D10  41 82 00 14 */	beq lbl_80289D24
/* 80289D14  7F A4 EB 78 */	mr r4, r29
/* 80289D18  7F C5 F3 78 */	mr r5, r30
/* 80289D1C  48 00 08 D5 */	bl __ct__Q214JStudio_JStage14TAdaptor_actorFPCQ26JStage7TSystemPQ26JStage6TActor
/* 80289D20  7C 7F 1B 78 */	mr r31, r3
lbl_80289D24:
/* 80289D24  28 1F 00 00 */	cmplwi r31, 0
/* 80289D28  40 82 00 0C */	bne lbl_80289D34
/* 80289D2C  38 60 00 00 */	li r3, 0
/* 80289D30  48 00 00 A0 */	b lbl_80289DD0
lbl_80289D34:
/* 80289D34  93 E1 00 08 */	stw r31, 8(r1)
/* 80289D38  38 60 00 38 */	li r3, 0x38
/* 80289D3C  48 04 4F 11 */	bl __nw__FUl
/* 80289D40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80289D44  41 82 00 14 */	beq lbl_80289D58
/* 80289D48  7F 84 E3 78 */	mr r4, r28
/* 80289D4C  7F E5 FB 78 */	mr r5, r31
/* 80289D50  4B FF CB C1 */	bl __ct__Q27JStudio13TObject_actorFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio14TAdaptor_actor
/* 80289D54  7C 7E 1B 78 */	mr r30, r3
lbl_80289D58:
/* 80289D58  28 1E 00 00 */	cmplwi r30, 0
/* 80289D5C  40 82 00 0C */	bne lbl_80289D68
/* 80289D60  3B C0 00 00 */	li r30, 0
/* 80289D64  48 00 00 28 */	b lbl_80289D8C
lbl_80289D68:
/* 80289D68  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80289D6C  28 03 00 00 */	cmplwi r3, 0
/* 80289D70  41 82 00 1C */	beq lbl_80289D8C
/* 80289D74  93 C3 00 04 */	stw r30, 4(r3)
/* 80289D78  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80289D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80289D80  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80289D84  7D 89 03 A6 */	mtctr r12
/* 80289D88  4E 80 04 21 */	bctrl 
lbl_80289D8C:
/* 80289D8C  28 1E 00 00 */	cmplwi r30, 0
/* 80289D90  40 82 00 2C */	bne lbl_80289DBC
/* 80289D94  80 61 00 08 */	lwz r3, 8(r1)
/* 80289D98  28 03 00 00 */	cmplwi r3, 0
/* 80289D9C  41 82 00 18 */	beq lbl_80289DB4
/* 80289DA0  38 80 00 01 */	li r4, 1
/* 80289DA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80289DA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80289DAC  7D 89 03 A6 */	mtctr r12
/* 80289DB0  4E 80 04 21 */	bctrl 
lbl_80289DB4:
/* 80289DB4  38 60 00 00 */	li r3, 0
/* 80289DB8  48 00 00 18 */	b lbl_80289DD0
lbl_80289DBC:
/* 80289DBC  38 00 00 00 */	li r0, 0
/* 80289DC0  90 01 00 08 */	stw r0, 8(r1)
/* 80289DC4  48 00 00 08 */	b lbl_80289DCC
/* 80289DC8  4E 80 04 21 */	bctrl 
lbl_80289DCC:
/* 80289DCC  7F C3 F3 78 */	mr r3, r30
lbl_80289DD0:
/* 80289DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80289DD4  48 0D 84 51 */	bl _restgpr_28
/* 80289DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80289DDC  7C 08 03 A6 */	mtlr r0
/* 80289DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80289DE4  4E 80 00 20 */	blr 
