lbl_80263FC4:
/* 80263FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263FC8  7C 08 02 A6 */	mflr r0
/* 80263FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80263FD4  7C 7F 1B 78 */	mr r31, r3
/* 80263FD8  48 00 AD 21 */	bl ClearForMinMax__8cM3dGAabFv
/* 80263FDC  7F E3 FB 78 */	mr r3, r31
/* 80263FE0  38 9F 00 20 */	addi r4, r31, 0x20
/* 80263FE4  48 00 AD 39 */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 80263FE8  7F E3 FB 78 */	mr r3, r31
/* 80263FEC  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80263FF0  48 00 AD 2D */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 80263FF4  7F E3 FB 78 */	mr r3, r31
/* 80263FF8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80263FFC  48 00 AE 6D */	bl PlusR__8cM3dGAabFf
/* 80264000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80264004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80264008  7C 08 03 A6 */	mtlr r0
/* 8026400C  38 21 00 10 */	addi r1, r1, 0x10
/* 80264010  4E 80 00 20 */	blr 
