lbl_80075F58:
/* 80075F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80075F5C  7C 08 02 A6 */	mflr r0
/* 80075F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80075F64  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 80075F68  FC 20 10 90 */	fmr f1, f2
/* 80075F6C  4B FF FF D5 */	bl SetWallR__12dBgS_AcchCirFf
/* 80075F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80075F74  7C 08 03 A6 */	mtlr r0
/* 80075F78  38 21 00 10 */	addi r1, r1, 0x10
/* 80075F7C  4E 80 00 20 */	blr 
