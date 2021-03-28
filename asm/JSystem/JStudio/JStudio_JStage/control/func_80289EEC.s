lbl_80289EEC:
/* 80289EEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80289EF0  7C 08 02 A6 */	mflr r0
/* 80289EF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80289EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80289EFC  48 0D 82 DD */	bl _savegpr_28
/* 80289F00  7C 7C 1B 78 */	mr r28, r3
/* 80289F04  7C BD 2B 78 */	mr r29, r5
/* 80289F08  7C 9E 23 78 */	mr r30, r4
/* 80289F0C  38 60 00 68 */	li r3, 0x68
/* 80289F10  48 04 4D 3D */	bl __nw__FUl
/* 80289F14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80289F18  41 82 00 14 */	beq lbl_80289F2C
/* 80289F1C  7F A4 EB 78 */	mr r4, r29
/* 80289F20  7F C5 F3 78 */	mr r5, r30
/* 80289F24  48 00 16 ED */	bl __ct__Q214JStudio_JStage21TAdaptor_ambientLightFPCQ26JStage7TSystemPQ26JStage13TAmbientLight
/* 80289F28  7C 7F 1B 78 */	mr r31, r3
lbl_80289F2C:
/* 80289F2C  28 1F 00 00 */	cmplwi r31, 0
/* 80289F30  40 82 00 0C */	bne lbl_80289F3C
/* 80289F34  38 60 00 00 */	li r3, 0
/* 80289F38  48 00 00 A0 */	b lbl_80289FD8
lbl_80289F3C:
/* 80289F3C  93 E1 00 08 */	stw r31, 8(r1)
/* 80289F40  38 60 00 38 */	li r3, 0x38
/* 80289F44  48 04 4D 09 */	bl __nw__FUl
/* 80289F48  7C 7E 1B 79 */	or. r30, r3, r3
/* 80289F4C  41 82 00 14 */	beq lbl_80289F60
/* 80289F50  7F 84 E3 78 */	mr r4, r28
/* 80289F54  7F E5 FB 78 */	mr r5, r31
/* 80289F58  4B FF CD A5 */	bl __ct__Q27JStudio20TObject_ambientLightFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio21TAdaptor_ambientLight
/* 80289F5C  7C 7E 1B 78 */	mr r30, r3
lbl_80289F60:
/* 80289F60  28 1E 00 00 */	cmplwi r30, 0
/* 80289F64  40 82 00 0C */	bne lbl_80289F70
/* 80289F68  3B C0 00 00 */	li r30, 0
/* 80289F6C  48 00 00 28 */	b lbl_80289F94
lbl_80289F70:
/* 80289F70  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80289F74  28 03 00 00 */	cmplwi r3, 0
/* 80289F78  41 82 00 1C */	beq lbl_80289F94
/* 80289F7C  93 C3 00 04 */	stw r30, 4(r3)
/* 80289F80  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80289F84  81 83 00 00 */	lwz r12, 0(r3)
/* 80289F88  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80289F8C  7D 89 03 A6 */	mtctr r12
/* 80289F90  4E 80 04 21 */	bctrl 
lbl_80289F94:
/* 80289F94  28 1E 00 00 */	cmplwi r30, 0
/* 80289F98  40 82 00 2C */	bne lbl_80289FC4
/* 80289F9C  80 61 00 08 */	lwz r3, 8(r1)
/* 80289FA0  28 03 00 00 */	cmplwi r3, 0
/* 80289FA4  41 82 00 18 */	beq lbl_80289FBC
/* 80289FA8  38 80 00 01 */	li r4, 1
/* 80289FAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80289FB0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80289FB4  7D 89 03 A6 */	mtctr r12
/* 80289FB8  4E 80 04 21 */	bctrl 
lbl_80289FBC:
/* 80289FBC  38 60 00 00 */	li r3, 0
/* 80289FC0  48 00 00 18 */	b lbl_80289FD8
lbl_80289FC4:
/* 80289FC4  38 00 00 00 */	li r0, 0
/* 80289FC8  90 01 00 08 */	stw r0, 8(r1)
/* 80289FCC  48 00 00 08 */	b lbl_80289FD4
/* 80289FD0  4E 80 04 21 */	bctrl 
lbl_80289FD4:
/* 80289FD4  7F C3 F3 78 */	mr r3, r30
lbl_80289FD8:
/* 80289FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80289FDC  48 0D 82 49 */	bl _restgpr_28
/* 80289FE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80289FE4  7C 08 03 A6 */	mtlr r0
/* 80289FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80289FEC  4E 80 00 20 */	blr 
