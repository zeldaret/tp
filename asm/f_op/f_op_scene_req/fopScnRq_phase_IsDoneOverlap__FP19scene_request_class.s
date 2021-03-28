lbl_8001EEB4:
/* 8001EEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EEB8  7C 08 02 A6 */	mflr r0
/* 8001EEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EEC0  4B FF F6 B5 */	bl fopOvlpM_IsDone__Fv
/* 8001EEC4  2C 03 00 01 */	cmpwi r3, 1
/* 8001EEC8  38 60 00 00 */	li r3, 0
/* 8001EECC  40 82 00 08 */	bne lbl_8001EED4
/* 8001EED0  38 60 00 02 */	li r3, 2
lbl_8001EED4:
/* 8001EED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EED8  7C 08 03 A6 */	mtlr r0
/* 8001EEDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EEE0  4E 80 00 20 */	blr 
