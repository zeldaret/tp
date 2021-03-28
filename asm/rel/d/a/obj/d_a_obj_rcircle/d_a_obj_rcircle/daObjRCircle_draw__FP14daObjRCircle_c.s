lbl_80CB8CD8:
/* 80CB8CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8CDC  7C 08 02 A6 */	mflr r0
/* 80CB8CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8CE4  4B FF FD 79 */	bl draw__14daObjRCircle_cFv
/* 80CB8CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8CEC  7C 08 03 A6 */	mtlr r0
/* 80CB8CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8CF4  4E 80 00 20 */	blr 
