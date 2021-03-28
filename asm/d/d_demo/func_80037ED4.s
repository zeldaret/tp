lbl_80037ED4:
/* 80037ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037ED8  7C 08 02 A6 */	mflr r0
/* 80037EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80037EE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80037EE4  48 32 A2 F5 */	bl _savegpr_28
/* 80037EE8  7C 9F 23 78 */	mr r31, r4
/* 80037EEC  7C BC 2B 78 */	mr r28, r5
/* 80037EF0  80 65 00 00 */	lwz r3, 0(r5)
/* 80037EF4  80 83 00 04 */	lwz r4, 4(r3)
/* 80037EF8  3C 60 4A 4D */	lis r3, 0x4A4D /* 0x4A4D5347@ha */
/* 80037EFC  38 03 53 47 */	addi r0, r3, 0x5347 /* 0x4A4D5347@l */
/* 80037F00  7C 04 00 00 */	cmpw r4, r0
/* 80037F04  41 82 00 08 */	beq lbl_80037F0C
/* 80037F08  48 00 00 FC */	b lbl_80038004
lbl_80037F0C:
/* 80037F0C  38 60 00 10 */	li r3, 0x10
/* 80037F10  48 29 6D 3D */	bl __nw__FUl
/* 80037F14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80037F18  41 82 00 38 */	beq lbl_80037F50
/* 80037F1C  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TAdaptor@ha
/* 80037F20  38 03 56 10 */	addi r0, r3, __vt__Q27JStudio8TAdaptor@l
/* 80037F24  90 1E 00 00 */	stw r0, 0(r30)
/* 80037F28  38 00 00 00 */	li r0, 0
/* 80037F2C  90 1E 00 04 */	stw r0, 4(r30)
/* 80037F30  90 1E 00 08 */	stw r0, 8(r30)
/* 80037F34  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80037F38  3C 60 80 3A */	lis r3, __vt__Q27JStudio16TAdaptor_message@ha
/* 80037F3C  38 03 7B C0 */	addi r0, r3, __vt__Q27JStudio16TAdaptor_message@l
/* 80037F40  90 1E 00 00 */	stw r0, 0(r30)
/* 80037F44  3C 60 80 3A */	lis r3, data_803A7BF4@ha
/* 80037F48  38 03 7B F4 */	addi r0, r3, data_803A7BF4@l
/* 80037F4C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80037F50:
/* 80037F50  28 1E 00 00 */	cmplwi r30, 0
/* 80037F54  40 82 00 0C */	bne lbl_80037F60
/* 80037F58  38 60 00 00 */	li r3, 0
/* 80037F5C  48 00 00 AC */	b lbl_80038008
lbl_80037F60:
/* 80037F60  93 C1 00 08 */	stw r30, 8(r1)
/* 80037F64  38 60 00 38 */	li r3, 0x38
/* 80037F68  48 29 6C E5 */	bl __nw__FUl
/* 80037F6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80037F70  41 82 00 14 */	beq lbl_80037F84
/* 80037F74  7F 84 E3 78 */	mr r4, r28
/* 80037F78  7F C5 F3 78 */	mr r5, r30
/* 80037F7C  48 24 F6 C5 */	bl __ct__Q27JStudio15TObject_messageFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio16TAdaptor_message
/* 80037F80  7C 7D 1B 78 */	mr r29, r3
lbl_80037F84:
/* 80037F84  28 1D 00 00 */	cmplwi r29, 0
/* 80037F88  40 82 00 0C */	bne lbl_80037F94
/* 80037F8C  3B A0 00 00 */	li r29, 0
/* 80037F90  48 00 00 28 */	b lbl_80037FB8
lbl_80037F94:
/* 80037F94  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80037F98  28 03 00 00 */	cmplwi r3, 0
/* 80037F9C  41 82 00 1C */	beq lbl_80037FB8
/* 80037FA0  93 A3 00 04 */	stw r29, 4(r3)
/* 80037FA4  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 80037FA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80037FAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80037FB0  7D 89 03 A6 */	mtctr r12
/* 80037FB4  4E 80 04 21 */	bctrl 
lbl_80037FB8:
/* 80037FB8  28 1D 00 00 */	cmplwi r29, 0
/* 80037FBC  40 82 00 2C */	bne lbl_80037FE8
/* 80037FC0  80 61 00 08 */	lwz r3, 8(r1)
/* 80037FC4  28 03 00 00 */	cmplwi r3, 0
/* 80037FC8  41 82 00 18 */	beq lbl_80037FE0
/* 80037FCC  38 80 00 01 */	li r4, 1
/* 80037FD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80037FD4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80037FD8  7D 89 03 A6 */	mtctr r12
/* 80037FDC  4E 80 04 21 */	bctrl 
lbl_80037FE0:
/* 80037FE0  38 60 00 00 */	li r3, 0
/* 80037FE4  48 00 00 24 */	b lbl_80038008
lbl_80037FE8:
/* 80037FE8  38 00 00 00 */	li r0, 0
/* 80037FEC  90 01 00 08 */	stw r0, 8(r1)
/* 80037FF0  93 BF 00 00 */	stw r29, 0(r31)
/* 80037FF4  48 00 00 08 */	b lbl_80037FFC
/* 80037FF8  4E 80 04 21 */	bctrl 
lbl_80037FFC:
/* 80037FFC  38 60 00 01 */	li r3, 1
/* 80038000  48 00 00 08 */	b lbl_80038008
lbl_80038004:
/* 80038004  38 60 00 00 */	li r3, 0
lbl_80038008:
/* 80038008  39 61 00 20 */	addi r11, r1, 0x20
/* 8003800C  48 32 A2 19 */	bl _restgpr_28
/* 80038010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80038014  7C 08 03 A6 */	mtlr r0
/* 80038018  38 21 00 20 */	addi r1, r1, 0x20
/* 8003801C  4E 80 00 20 */	blr 
