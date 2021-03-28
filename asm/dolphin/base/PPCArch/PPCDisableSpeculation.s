lbl_80339DA4:
/* 80339DA4  7C 08 02 A6 */	mflr r0
/* 80339DA8  90 01 00 04 */	stw r0, 4(r1)
/* 80339DAC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80339DB0  4B FF FF 21 */	bl PPCMfhid0
/* 80339DB4  60 63 02 00 */	ori r3, r3, 0x200
/* 80339DB8  4B FF FF 21 */	bl PPCMthid0
/* 80339DBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80339DC0  38 21 00 08 */	addi r1, r1, 8
/* 80339DC4  7C 08 03 A6 */	mtlr r0
/* 80339DC8  4E 80 00 20 */	blr 
