lbl_8026EF18:
/* 8026EF18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026EF1C  7C 08 02 A6 */	mflr r0
/* 8026EF20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026EF24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026EF28  7C 7F 1B 79 */	or. r31, r3, r3
/* 8026EF2C  41 82 00 30 */	beq lbl_8026EF5C
/* 8026EF30  3C 60 80 3C */	lis r3, __vt__8cM3dGCir@ha
/* 8026EF34  38 03 3F E0 */	addi r0, r3, __vt__8cM3dGCir@l
/* 8026EF38  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8026EF3C  41 82 00 10 */	beq lbl_8026EF4C
/* 8026EF40  3C 60 80 3C */	lis r3, __vt__8cM2dGCir@ha
/* 8026EF44  38 03 3F EC */	addi r0, r3, __vt__8cM2dGCir@l
/* 8026EF48  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8026EF4C:
/* 8026EF4C  7C 80 07 35 */	extsh. r0, r4
/* 8026EF50  40 81 00 0C */	ble lbl_8026EF5C
/* 8026EF54  7F E3 FB 78 */	mr r3, r31
/* 8026EF58  48 05 FD E5 */	bl __dl__FPv
lbl_8026EF5C:
/* 8026EF5C  7F E3 FB 78 */	mr r3, r31
/* 8026EF60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026EF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026EF68  7C 08 03 A6 */	mtlr r0
/* 8026EF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8026EF70  4E 80 00 20 */	blr 
