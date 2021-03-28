lbl_802E0898:
/* 802E0898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E089C  7C 08 02 A6 */	mflr r0
/* 802E08A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E08A4  38 60 00 05 */	li r3, 5
/* 802E08A8  48 06 E9 B1 */	bl PADSetSpec
/* 802E08AC  38 00 00 03 */	li r0, 3
/* 802E08B0  90 0D 8F 5C */	stw r0, sAnalogMode__10JUTGamePad(r13)
/* 802E08B4  38 60 00 03 */	li r3, 3
/* 802E08B8  48 06 F1 59 */	bl PADSetAnalogMode
/* 802E08BC  48 06 E4 95 */	bl PADInit
/* 802E08C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E08C4  7C 08 03 A6 */	mtlr r0
/* 802E08C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E08CC  4E 80 00 20 */	blr 
