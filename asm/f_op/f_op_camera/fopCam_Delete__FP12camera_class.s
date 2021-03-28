lbl_8001E21C:
/* 8001E21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E220  7C 08 02 A6 */	mflr r0
/* 8001E224  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001E22C  93 C1 00 08 */	stw r30, 8(r1)
/* 8001E230  7C 7E 1B 78 */	mr r30, r3
/* 8001E234  80 63 02 24 */	lwz r3, 0x224(r3)
/* 8001E238  7F C4 F3 78 */	mr r4, r30
/* 8001E23C  48 00 42 6D */	bl fpcMtd_Delete__FP20process_method_classPv
/* 8001E240  7C 7F 1B 78 */	mr r31, r3
/* 8001E244  2C 1F 00 01 */	cmpwi r31, 1
/* 8001E248  40 82 00 0C */	bne lbl_8001E254
/* 8001E24C  38 7E 02 10 */	addi r3, r30, 0x210
/* 8001E250  48 00 22 85 */	bl fopDwTg_DrawQTo__FP16create_tag_class
lbl_8001E254:
/* 8001E254  7F E3 FB 78 */	mr r3, r31
/* 8001E258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001E25C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001E260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E264  7C 08 03 A6 */	mtlr r0
/* 8001E268  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E26C  4E 80 00 20 */	blr 
