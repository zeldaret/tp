lbl_807E8518:
/* 807E8518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E851C  7C 08 02 A6 */	mflr r0
/* 807E8520  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E8524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E8528  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E852C  41 82 00 1C */	beq lbl_807E8548
/* 807E8530  3C A0 80 7F */	lis r5, __vt__8cM3dGPla@ha
/* 807E8534  38 05 FB 60 */	addi r0, r5, __vt__8cM3dGPla@l
/* 807E8538  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807E853C  7C 80 07 35 */	extsh. r0, r4
/* 807E8540  40 81 00 08 */	ble lbl_807E8548
/* 807E8544  4B AE 67 F8 */	b __dl__FPv
lbl_807E8548:
/* 807E8548  7F E3 FB 78 */	mr r3, r31
/* 807E854C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E8550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E8554  7C 08 03 A6 */	mtlr r0
/* 807E8558  38 21 00 10 */	addi r1, r1, 0x10
/* 807E855C  4E 80 00 20 */	blr 
