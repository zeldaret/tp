lbl_804D10FC:
/* 804D10FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1100  7C 08 02 A6 */	mflr r0
/* 804D1104  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1108  4B FF FC E9 */	bl Execute__13daObjYOUSEI_cFv
/* 804D110C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1110  7C 08 03 A6 */	mtlr r0
/* 804D1114  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1118  4E 80 00 20 */	blr 
