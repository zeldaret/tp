lbl_8029E188:
/* 8029E188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E18C  7C 08 02 A6 */	mflr r0
/* 8029E190  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029E198  4B FF EB 3D */	bl getSubFrameCounter__9JASDriverFv
/* 8029E19C  7C 7F 1B 78 */	mr r31, r3
lbl_8029E1A0:
/* 8029E1A0  48 0A 30 B1 */	bl OSYieldThread
/* 8029E1A4  4B FF EB 31 */	bl getSubFrameCounter__9JASDriverFv
/* 8029E1A8  7C 1F 18 40 */	cmplw r31, r3
/* 8029E1AC  41 82 FF F4 */	beq lbl_8029E1A0
/* 8029E1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029E1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E1B8  7C 08 03 A6 */	mtlr r0
/* 8029E1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E1C0  4E 80 00 20 */	blr 
