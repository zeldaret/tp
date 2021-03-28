lbl_80303FD8:
/* 80303FD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303FDC  7C 08 02 A6 */	mflr r0
/* 80303FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80303FE4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80303FE8  39 61 00 18 */	addi r11, r1, 0x18
/* 80303FEC  48 05 E1 F1 */	bl _savegpr_29
/* 80303FF0  7C 7D 1B 78 */	mr r29, r3
/* 80303FF4  7C BE 2B 78 */	mr r30, r5
/* 80303FF8  7C DF 33 78 */	mr r31, r6
/* 80303FFC  FF E0 08 90 */	fmr f31, f1
/* 80304000  7C 83 23 78 */	mr r3, r4
/* 80304004  4B FF 56 3D */	bl getNameResource__9J2DScreenFPCc
/* 80304008  7C 64 1B 78 */	mr r4, r3
/* 8030400C  7F A3 EB 78 */	mr r3, r29
/* 80304010  7F C5 F3 78 */	mr r5, r30
/* 80304014  7F E6 FB 78 */	mr r6, r31
/* 80304018  FC 20 F8 90 */	fmr f1, f31
/* 8030401C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80304020  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 80304024  7D 89 03 A6 */	mtctr r12
/* 80304028  4E 80 04 21 */	bctrl 
/* 8030402C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80304030  39 61 00 18 */	addi r11, r1, 0x18
/* 80304034  48 05 E1 F5 */	bl _restgpr_29
/* 80304038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8030403C  7C 08 03 A6 */	mtlr r0
/* 80304040  38 21 00 20 */	addi r1, r1, 0x20
/* 80304044  4E 80 00 20 */	blr 
