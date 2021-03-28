lbl_801395B4:
/* 801395B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801395B8  7C 08 02 A6 */	mflr r0
/* 801395BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801395C0  FC 40 08 90 */	fmr f2, f1
/* 801395C4  38 04 FF 8A */	addi r0, r4, -118
/* 801395C8  30 00 FF FF */	addic r0, r0, -1
/* 801395CC  7C 80 01 10 */	subfe r4, r0, r0
/* 801395D0  38 84 02 BE */	addi r4, r4, 0x2be
/* 801395D4  38 A0 00 02 */	li r5, 2
/* 801395D8  3C C0 80 39 */	lis r6, m__22daAlinkHIO_wlAtBite_c0@ha
/* 801395DC  38 C6 F7 48 */	addi r6, r6, m__22daAlinkHIO_wlAtBite_c0@l
/* 801395E0  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 801395E4  38 C0 FF FF */	li r6, -1
/* 801395E8  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 801395EC  4B F7 3D ED */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
/* 801395F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801395F4  7C 08 03 A6 */	mtlr r0
/* 801395F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801395FC  4E 80 00 20 */	blr 
