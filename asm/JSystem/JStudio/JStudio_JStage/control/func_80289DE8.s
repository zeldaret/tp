lbl_80289DE8:
/* 80289DE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289DEC  7C 08 02 A6 */	mflr r0
/* 80289DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80289DF8  48 0D 83 E1 */	bl _savegpr_28
/* 80289DFC  7C 7C 1B 78 */	mr r28, r3
/* 80289E00  7C BD 2B 78 */	mr r29, r5
/* 80289E04  7C 9E 23 78 */	mr r30, r4
/* 80289E08  38 60 01 24 */	li r3, 0x124
/* 80289E0C  48 04 4E 41 */	bl __nw__FUl
/* 80289E10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80289E14  41 82 00 14 */	beq lbl_80289E28
/* 80289E18  7F A4 EB 78 */	mr r4, r29
/* 80289E1C  7F C5 F3 78 */	mr r5, r30
/* 80289E20  48 00 1A 81 */	bl __ct__Q214JStudio_JStage15TAdaptor_cameraFPCQ26JStage7TSystemPQ26JStage7TCamera
/* 80289E24  7C 7F 1B 78 */	mr r31, r3
lbl_80289E28:
/* 80289E28  28 1F 00 00 */	cmplwi r31, 0
/* 80289E2C  40 82 00 0C */	bne lbl_80289E38
/* 80289E30  38 60 00 00 */	li r3, 0
/* 80289E34  48 00 00 A0 */	b lbl_80289ED4
lbl_80289E38:
/* 80289E38  93 E1 00 08 */	stw r31, 8(r1)
/* 80289E3C  38 60 00 38 */	li r3, 0x38
/* 80289E40  48 04 4E 0D */	bl __nw__FUl
/* 80289E44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80289E48  41 82 00 14 */	beq lbl_80289E5C
/* 80289E4C  7F 84 E3 78 */	mr r4, r28
/* 80289E50  7F E5 FB 78 */	mr r5, r31
/* 80289E54  4B FF D0 29 */	bl __ct__Q27JStudio14TObject_cameraFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio15TAdaptor_camera
/* 80289E58  7C 7E 1B 78 */	mr r30, r3
lbl_80289E5C:
/* 80289E5C  28 1E 00 00 */	cmplwi r30, 0
/* 80289E60  40 82 00 0C */	bne lbl_80289E6C
/* 80289E64  3B C0 00 00 */	li r30, 0
/* 80289E68  48 00 00 28 */	b lbl_80289E90
lbl_80289E6C:
/* 80289E6C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80289E70  28 03 00 00 */	cmplwi r3, 0
/* 80289E74  41 82 00 1C */	beq lbl_80289E90
/* 80289E78  93 C3 00 04 */	stw r30, 4(r3)
/* 80289E7C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80289E80  81 83 00 00 */	lwz r12, 0(r3)
/* 80289E84  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80289E88  7D 89 03 A6 */	mtctr r12
/* 80289E8C  4E 80 04 21 */	bctrl 
lbl_80289E90:
/* 80289E90  28 1E 00 00 */	cmplwi r30, 0
/* 80289E94  40 82 00 2C */	bne lbl_80289EC0
/* 80289E98  80 61 00 08 */	lwz r3, 8(r1)
/* 80289E9C  28 03 00 00 */	cmplwi r3, 0
/* 80289EA0  41 82 00 18 */	beq lbl_80289EB8
/* 80289EA4  38 80 00 01 */	li r4, 1
/* 80289EA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80289EAC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80289EB0  7D 89 03 A6 */	mtctr r12
/* 80289EB4  4E 80 04 21 */	bctrl 
lbl_80289EB8:
/* 80289EB8  38 60 00 00 */	li r3, 0
/* 80289EBC  48 00 00 18 */	b lbl_80289ED4
lbl_80289EC0:
/* 80289EC0  38 00 00 00 */	li r0, 0
/* 80289EC4  90 01 00 08 */	stw r0, 8(r1)
/* 80289EC8  48 00 00 08 */	b lbl_80289ED0
/* 80289ECC  4E 80 04 21 */	bctrl 
lbl_80289ED0:
/* 80289ED0  7F C3 F3 78 */	mr r3, r30
lbl_80289ED4:
/* 80289ED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80289ED8  48 0D 83 4D */	bl _restgpr_28
/* 80289EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80289EE0  7C 08 03 A6 */	mtlr r0
/* 80289EE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80289EE8  4E 80 00 20 */	blr 
