lbl_806A12E4:
/* 806A12E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A12E8  7C 08 02 A6 */	mflr r0
/* 806A12EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A12F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A12F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A12F8  41 82 00 1C */	beq lbl_806A1314
/* 806A12FC  3C A0 80 6A */	lis r5, __vt__8cM3dGAab@ha /* 0x806A1D64@ha */
/* 806A1300  38 05 1D 64 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806A1D64@l */
/* 806A1304  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806A1308  7C 80 07 35 */	extsh. r0, r4
/* 806A130C  40 81 00 08 */	ble lbl_806A1314
/* 806A1310  4B C2 DA 2D */	bl __dl__FPv
lbl_806A1314:
/* 806A1314  7F E3 FB 78 */	mr r3, r31
/* 806A1318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A131C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A1320  7C 08 03 A6 */	mtlr r0
/* 806A1324  38 21 00 10 */	addi r1, r1, 0x10
/* 806A1328  4E 80 00 20 */	blr 
