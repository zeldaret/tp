lbl_800772E8:
/* 800772E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800772EC  7C 08 02 A6 */	mflr r0
/* 800772F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800772F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800772F8  7C 7F 1B 78 */	mr r31, r3
/* 800772FC  4B FF FC C5 */	bl SetWallCir__9dBgS_AcchFv
/* 80077300  38 7F 00 44 */	addi r3, r31, 0x44
/* 80077304  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80077308  80 BF 00 30 */	lwz r5, 0x30(r31)
/* 8007730C  48 1F 7F DD */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80077310  7F E3 FB 78 */	mr r3, r31
/* 80077314  4B FF FD 29 */	bl CalcWallBmdCyl__9dBgS_AcchFv
/* 80077318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007731C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077320  7C 08 03 A6 */	mtlr r0
/* 80077324  38 21 00 10 */	addi r1, r1, 0x10
/* 80077328  4E 80 00 20 */	blr 
