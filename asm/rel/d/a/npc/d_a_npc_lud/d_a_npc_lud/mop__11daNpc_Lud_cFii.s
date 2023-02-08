lbl_80A6CEC8:
/* 80A6CEC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A6CECC  7C 08 02 A6 */	mflr r0
/* 80A6CED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A6CED4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6CED8  4B 8F 53 01 */	bl _savegpr_28
/* 80A6CEDC  7C 7F 1B 78 */	mr r31, r3
/* 80A6CEE0  7C 9C 23 78 */	mr r28, r4
/* 80A6CEE4  7C BD 2B 78 */	mr r29, r5
/* 80A6CEE8  80 03 0F C8 */	lwz r0, 0xfc8(r3)
/* 80A6CEEC  2C 00 00 00 */	cmpwi r0, 0
/* 80A6CEF0  41 82 00 88 */	beq lbl_80A6CF78
/* 80A6CEF4  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A6CEF8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A6CEFC  7D 89 03 A6 */	mtctr r12
/* 80A6CF00  4E 80 04 21 */	bctrl 
/* 80A6CF04  80 1F 0F C8 */	lwz r0, 0xfc8(r31)
/* 80A6CF08  2C 00 00 00 */	cmpwi r0, 0
/* 80A6CF0C  40 82 00 F8 */	bne lbl_80A6D004
/* 80A6CF10  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6CF14  2C 00 00 03 */	cmpwi r0, 3
/* 80A6CF18  41 82 00 28 */	beq lbl_80A6CF40
/* 80A6CF1C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6CF20  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6CF24  4B 6D 89 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6CF28  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6CF2C  38 00 00 03 */	li r0, 3
/* 80A6CF30  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6CF34  3C 60 80 A7 */	lis r3, lit_5221@ha /* 0x80A6FEB0@ha */
/* 80A6CF38  C0 03 FE B0 */	lfs f0, lit_5221@l(r3)  /* 0x80A6FEB0@l */
/* 80A6CF3C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6CF40:
/* 80A6CF40  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6CF44  2C 00 00 02 */	cmpwi r0, 2
/* 80A6CF48  41 82 00 28 */	beq lbl_80A6CF70
/* 80A6CF4C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6CF50  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6CF54  4B 6D 89 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6CF58  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6CF5C  38 00 00 02 */	li r0, 2
/* 80A6CF60  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6CF64  3C 60 80 A7 */	lis r3, lit_5221@ha /* 0x80A6FEB0@ha */
/* 80A6CF68  C0 03 FE B0 */	lfs f0, lit_5221@l(r3)  /* 0x80A6FEB0@l */
/* 80A6CF6C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6CF70:
/* 80A6CF70  93 BF 0F CC */	stw r29, 0xfcc(r31)
/* 80A6CF74  48 00 00 90 */	b lbl_80A6D004
lbl_80A6CF78:
/* 80A6CF78  80 1F 0F CC */	lwz r0, 0xfcc(r31)
/* 80A6CF7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A6CF80  41 82 00 84 */	beq lbl_80A6D004
/* 80A6CF84  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A6CF88  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A6CF8C  7D 89 03 A6 */	mtctr r12
/* 80A6CF90  4E 80 04 21 */	bctrl 
/* 80A6CF94  80 1F 0F CC */	lwz r0, 0xfcc(r31)
/* 80A6CF98  2C 00 00 00 */	cmpwi r0, 0
/* 80A6CF9C  40 82 00 68 */	bne lbl_80A6D004
/* 80A6CFA0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6CFA4  2C 00 00 04 */	cmpwi r0, 4
/* 80A6CFA8  41 82 00 28 */	beq lbl_80A6CFD0
/* 80A6CFAC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6CFB0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6CFB4  4B 6D 88 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6CFB8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6CFBC  38 00 00 04 */	li r0, 4
/* 80A6CFC0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6CFC4  3C 60 80 A7 */	lis r3, lit_5221@ha /* 0x80A6FEB0@ha */
/* 80A6CFC8  C0 03 FE B0 */	lfs f0, lit_5221@l(r3)  /* 0x80A6FEB0@l */
/* 80A6CFCC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6CFD0:
/* 80A6CFD0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6CFD4  2C 00 00 06 */	cmpwi r0, 6
/* 80A6CFD8  41 82 00 28 */	beq lbl_80A6D000
/* 80A6CFDC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6CFE0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6CFE4  4B 6D 88 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6CFE8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6CFEC  38 00 00 06 */	li r0, 6
/* 80A6CFF0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6CFF4  3C 60 80 A7 */	lis r3, lit_5221@ha /* 0x80A6FEB0@ha */
/* 80A6CFF8  C0 03 FE B0 */	lfs f0, lit_5221@l(r3)  /* 0x80A6FEB0@l */
/* 80A6CFFC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6D000:
/* 80A6D000  93 9F 0F C8 */	stw r28, 0xfc8(r31)
lbl_80A6D004:
/* 80A6D004  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6D008  4B 8F 52 1D */	bl _restgpr_28
/* 80A6D00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6D010  7C 08 03 A6 */	mtlr r0
/* 80A6D014  38 21 00 20 */	addi r1, r1, 0x20
/* 80A6D018  4E 80 00 20 */	blr 
