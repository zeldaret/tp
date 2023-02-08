lbl_80037E44:
/* 80037E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037E48  7C 08 02 A6 */	mflr r0
/* 80037E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037E50  2C 04 00 19 */	cmpwi r4, 0x19
/* 80037E54  41 82 00 08 */	beq lbl_80037E5C
/* 80037E58  48 00 00 0C */	b lbl_80037E64
lbl_80037E5C:
/* 80037E5C  80 65 00 00 */	lwz r3, 0(r5)
/* 80037E60  48 1F FC 51 */	bl setDemoMessage__12dMsgObject_cFUl
lbl_80037E64:
/* 80037E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037E68  7C 08 03 A6 */	mtlr r0
/* 80037E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80037E70  4E 80 00 20 */	blr 
